/*
	Alex Tran
	EECS113
	assignment4.c
	Code Status: Cursor can move left or right during date or time setting mode. Can
	use key inputs to change time or date (only appropriate inputs corresponding to date or time format).
	Button delays for input may vary depending on system that Edsim51 is running on.
	Timer works and will update time and calendar accordingly.
*/


#include <8051.h>

#define DB P1
#define SW0 P3_2
#define SW1 P3_3
#define RS P2_3
#define E P2_2
#define Data P1
#define Keypad P0

#define TRUE 1
#define FALSE 0

void entryModeSet();
void displayOnOffControl(__bit display, __bit cursor, __bit blinking);
void functionSet(void);
void clearDisplay(void);
void setDdRamAddress(char address);

void sendChar(char c);
void sendString(char* str);
void delay(void);
void big_delay(void);


unsigned char daysInMonth[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
unsigned char temp[] = {0, 0, 0, 0, 0, 0};
unsigned char year;
unsigned char month;
unsigned char day;
unsigned char count;
unsigned char minute;
unsigned char hour;
unsigned char tempIndex;
unsigned char address;
void timer_delay(void);
char getDaysInMonth(char m, char y);
void print(void);

char getFirst(void);
char getSecond(void);
char getThird(void);

char changingDate;
char changingTime;
char resetScreen;


//Returns char of key input
char getKey(){
	unsigned char row;   // Contains the required mask to clear one of the rows at a time
	unsigned char col;   // Contains the output of the columns
	unsigned char keypad[4][3] = {   // This array contains the ASCII of the keypad keys
		{'3','2','1'},
		{'6','5','4'},
		{'9','8','7'},
		{'#','0','*'}
		};
	unsigned char i = 0;
	unsigned char j = 0;
	unsigned char c = 0;
	row = 0xf7;  // The first row (connected to P0.3) will be zero
			
	for (i=0;i<4;++i){ // loop over the 4 rows
		
		P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
		P0 = P0 & row; // clear one row at a time
		col = P0 & 0x70;  // Read the 3 columns
		if (col != 0x70){ // If any column is zero i.e. a key is pressed
			col = (~col) & 0x70;  // because the selected column returns zero
			col = col >> 5;       // The column variable now contain the number of the selected column
			c = keypad[i][col]; // Get the ASCII of the corresponding pressed key
			break;  // Since a key was detected -> Exit the for loop
		}
		row = row >> 1;   // No key is detected yet, try the next row
		row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
		
	}
	
	return c;
	
}

//ISR for ext interrupt 1
//Switch modes for date
void int1_isr (void) __interrupt (2) __using (3){
		unsigned char gotkey = 0;
		changingDate = TRUE;
		tempIndex = 0;
		temp[0]=(month+1)/10;
		temp[1]=(month+1)%10;
		temp[2]=(day+1)/10;
		temp[3]=(day+1)%10;
		temp[4]=year/10;
		temp[5]=year%10;
		address = 0x40;
		setDdRamAddress(address);
	
		//Case 1: Date Settings
		
		while(SW1 == 0){
			count = 0;
			gotkey = getKey();
			if (gotkey != 0){
				big_delay();
				if(gotkey == '*'){	//Move cursor left
					
					tempIndex = (tempIndex - 1)%6;
					address = (address - 1 -0x40)%8+0x40;
					if(address == 0x42 || address == 0x45){
						address--;
					}
					setDdRamAddress(address);
					continue;

				}
				if(gotkey == '#'){	//Move cursor right
					
					tempIndex = (tempIndex + 1)%6;
					address = (address + 1 - 0x40)%8+0x40;
					if(address == 0x42 || address == 0x45){
						address++;
					}
					setDdRamAddress(address);
					continue;
					
				}
				//Number keys
				if((tempIndex == 0 && gotkey -48 >1) || (tempIndex == 1 && temp[0] == 1 && gotkey-48>2) || (tempIndex == 1 && temp[0] == 0 && gotkey-48==0) || (tempIndex == 3 && temp[2]==0 && gotkey-48==0) 
					|| (tempIndex == 2 && temp[0] == 0 && temp[1] == 2 && gotkey-48>2) || (tempIndex == 2 && gotkey-48>3) || (tempIndex == 3 && temp[1]==2 && gotkey-48>8)){
					continue;
				}
				else{
						temp[tempIndex] = gotkey - 48;
						sendChar(gotkey);
						tempIndex = (tempIndex + 1)%6;
						address = (address + 1)%8+0x40;
						if(address == 0x42 || address == 0x45){
							address++;
						}
						
				}
				setDdRamAddress(address);
				gotkey = 0;
			}
		}
		resetScreen = TRUE;
		month = getFirst()-1;
		day = getSecond()-1;
		year = getThird();
}

//ISR for ext interrupt 00h
//Switch modes for time
void int0_isr (void) __interrupt (0) __using (1){
		unsigned char gotkey = 0;

		changingTime = TRUE;
		tempIndex = 0;
		temp[0]=hour/10;
		temp[1]=hour%10;
		temp[2]=minute/10;
		temp[3]=minute%10;
		temp[4]=count/10;
		temp[5]=count%10;
		address = 0x00;
		setDdRamAddress(address);
		
		//Case 2: Time Settings
		while(SW0 == 0){
			count = 0;
			gotkey = getKey();
			if (gotkey != 0){
				big_delay();
				if(gotkey == '*'){	//Move cursor left
					
					tempIndex = (tempIndex - 1)%6;
					address = (address - 1)%8;
					if(address == 0x2 || address == 0x5){
						address--;
					}
					setDdRamAddress(address);
					continue;
				}
				else if(gotkey == '#'){	//Move cursor right
					
					tempIndex = (tempIndex + 1)%6;
					address = (address + 1)%8;
					if(address == 0x2 || address == 0x5){
						address++;
					}
					setDdRamAddress(address);
					continue;
				}
				//Number keys
				if(((tempIndex == 3 || tempIndex == 5) && gotkey-48>5) || (tempIndex == 0 && gotkey-48>2) || (tempIndex == 1 && gotkey-48>3 && temp[0] == 2)){
					continue;
					
				}
				else{
						temp[tempIndex] = gotkey - 48;
						sendChar(gotkey);
						tempIndex = (tempIndex + 1)%6;
						address = (address + 1)%8;
						if(address == 0x2 || address == 0x5){
							address++;
						}
						setDdRamAddress(address);
				}
				
				gotkey = 0;
			}
		}
		resetScreen = TRUE;
		hour = getFirst();
		minute = getSecond();
		count = getThird();
	

}

void main(void) {
	
	
	
	changingDate = FALSE;
	changingTime = FALSE;
	resetScreen = FALSE;
	IT0 = 1;   // make INT0 to edge triggered
	IT1 = 1;
	IE = 0x85;  //enable external interupts
	
	//Initial Date and Time
	count = 0;
	hour = 0;
	minute = 0;
	month = 0;
	day = 0;
	year = 0;
	address = 0x00;
	functionSet();
	entryModeSet(); // increment and no shift
	displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
	
	while(1){
		//Reset screen after changing date or time
		if(resetScreen)
		{
			clearDisplay();
			resetScreen = FALSE;
		}
		
		//Update clock and calendar
		setDdRamAddress(0x00);
		print();
		timer_delay();
		count++;
		if(count % 60 == 0){
			minute++;
			if(minute % 60 == 0){
				hour++;
				if(hour % 24 == 0){
					day++;
					if((day % getDaysInMonth(month, year)) == 0){
						month++;
						if(month % 12 == 0){
							year++;
							month = 0;
						}
						day = 0;
					}
					hour = 0;
				}
				minute = 0;
			}
			count = 0;
		}
	}
}

//Output time and date to LCD
void print(void){
	
	//Clock
	sendChar(hour/10 + 48);
	sendChar((hour%10) + 48);
	sendChar(':');
	
	sendChar(minute/10 + 48);
	sendChar((minute%10) + 48);
	
	sendChar(':');
	
	sendChar(count/10 + 48);
	sendChar((count%10) + 48);
	
	//Date
	setDdRamAddress(0x40);
	sendChar(((month+1)/10)+48);
	sendChar(((month+1)%10)+48);
	
	sendChar('-');
	
	sendChar(((day+1)/10)+48);
	sendChar(((day+1)%10)+48);

	sendChar('-');
	sendChar(((year%100)/10)+48);
	sendChar((year%100)%10+48);
}

// To make the interrupt work correctly with Edsim51
void _sdcc_gsinit_startup(void) {

        __asm
                mov sp, #0x5F
        __endasm;
        main();
}

//Calculte number of days in current month
char getDaysInMonth(char m, char y){
	char leapYear;
	leapYear = 0;
	if(y % 4 == 0)
		leapYear = 1;
	
	if(leapYear && m == 1)
		return daysInMonth[m] + 1;
	else
		return daysInMonth[m];
}

//Parse first 2 digits of temp array
char getFirst(){
	return temp[0]*10 + temp[1];
}

//Parse second 2 digits of temp array
char getSecond(){
	return temp[2]*10 + temp[3];
}

//Parse third 2 digits of temp array
char getThird(){
	return temp[4]*10 + temp[5];
}

void timer_delay(void){
	
	TMOD = 0x01;
	TL0 = 0x2F;
	TH0 = 0x3C;
	TR0 = 1;
	while (!TF0) ;
	TR0 = 0;
	TF0 = 0;

		
}


// LCD Module instructions -------------------------------------------

void returnHome(void) {
	RS = 0;
	P1 = 0x02; // LCD command to return home (the first location of the first lcd line)
	E = 1;
	E = 0;
	big_delay(); // This operation needs a bigger delay
}	

void entryModeSet() {
	RS = 0;
	P1 = 0x06;  
	E = 1;
	E = 0;
	delay();
}

void displayOnOffControl(__bit display, __bit cursor, __bit blinking) {
	P1_7 = 0;
	P1_6 = 0;
	P1_5 = 0;
	P1_4 = 0;
	P1_3 = 1;
	P1_2 = display;
	P1_1 = cursor;
	P1_0 = blinking;
	E = 1;
	E = 0;
	delay();
}


void functionSet(void) {
	RS = 0;
	P1 = 0x38; // 8-bit mode, 2 lines LCD
	E = 1;
	E = 0;
	delay();
}

void clearDisplay(void) {
	RS = 0;
	P1 = 0x01; // command to clear LCD and return the cursor to the home position
	E = 1;
	E = 0;
	big_delay(); // This operation needs a bigger delay
}	

void setDdRamAddress(char address) {  // Determine the place to place the next character - First LCD location address in 00h for line 1 and 40h for line 2
	RS = 0;
	P1 = address | 0x80;  // set the MSB to detect that this is an address
	E = 1;
	E = 0;
	delay();
}

// --------------------------------------------------------------------

void sendChar(char c) {  // Function to send one character to be displayed on the LCD
	RS = 1;
	P1 = c;
	E = 1;
	E = 0;
	delay();
}

void sendString(char* str) {  // Function to send a string of characters to be displayed on the lCD
	char c;
	while (c = *str++) {
		sendChar(c);
	}
}

void delay(void) {
	char c;
	for (c = 0; c < 50; c++);
}

void big_delay(void) {
	unsigned char c;
	for (c = 0; c < 255; c++);
}