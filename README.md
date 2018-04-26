# SDCC-Digital-Clock

Modifiable digital clock and calendar on SDCC LCD display.

## How to Use

![Screenshot](/images/LCDdisplay.png "LCD display on EdSim51")

The two lines on LCD display the clock time (HH:MM:SS) on the first line, and date (DD-MM-YY) in the second line.
On power up, it starts from 00:00:00 (01-01-00 for the date) and increments once every second until 23:59:59 before wrapping around, then it increments the date. If DD reaches the limits, it wraps around and increments the month and so on.

To setup the time or the date, SW0/SW1 (using external interrupt 0/1) can be used to enter the time/date setting mode, where the time or the date can be setup using the keypad as following:

1. When you close the switch SW0 (connected to port pin P3.2), it enters the time setting mode, and the cursor should be shown on the digit being modified in line 1.
	a) If [*] key is pressed, it moves the cursor to the left (or wraps around in the same line when the leftmost position is reached).
	b) If [#] key is pressed, it moves the cursor to the right (or wraps around in the same line when the rightmost position is reached).
	c) Typing the digit on the keypad causes the digit under the cursor to be set and the position to be moved to the right (or wrap around).
	d) An invalid input digit at any position should not be accepted (e.g., the hour cannot be greater than 23; the minutes cannot be greater than 59, etc.).
2. When you close the switch SW1 (connected to port pin P3.3), it enters the date setting mode, and the cursor should be shown on the digit being modified in line 2.
	a) If [*] key is pressed, it moves the cursor to the left (or wraps around in the same line when the leftmost position is reached).	
	b) If [#] key is pressed, it moves the cursor to the right (or wraps around in the same line when the rightmost position is reached).
	c) Typing the digit on the keypad causes the digit under the cursor to be set and the position to be moved to the right (or wrap around).
	d) An invalid input digit at any position should not be accepted (e.g., the month cannot be greater than 12; the day cannot be greater than 31 or 30 or 28 depending on the shown month, etc.).

### Prerequisites

Follow EdSim51 installation instruction. C-language code should be compiled on SDCC or Keil compiler. Generated .hex files should run on EdSim51.