Time Conversion Script

Overview:

This MATLAB script converts a time input from 24-hour format 
(HH:MM:SS) to 12-hour format with AM/PM designation. It handles edge cases like incorrect input formats and special cases where minutes or seconds equal 60.

Usage:

Run the script in MATLAB.

Input the time in the format HH:MM:SS when prompted. The input should be in 24-hour format.

Functionality:

Cleans the input: Removes any spaces from the input string.

Extracts hours, minutes, and seconds from the cleaned input.

Determines whether the time is AM or PM based on the hour value.

Converts the time from 24-hour format to 12-hour format.

Handles special cases where minutes or seconds are equal to 60.

Detects errors: Checks if minutes or seconds are outside the valid range (0-59) or if the format is incorrect.

Steps:

1- Input Handling:

Prompts the user to enter time in 24-hour format.

Cleans the input by removing spaces.

2- Parsing and Conversion:

Extracts hours, minutes, and seconds.

Determines if the time is AM or PM.

Converts the time to 12-hour format.

3- Error Detection:

Checks for invalid values in minutes and seconds.

Handles cases where input values are out of the expected range.

4- Output:

Displays the converted time in 12-hour format with AM/PM.

Displays an error message if the input is invalid.

Example:
----------------------------------------------------------------
Please, Enter time in 24h format (HH:MM:SS) : 14:30:45
Your time in 12h format : 2:30:45 PM
----------------------------------------------------------------

Notes:

The script assumes that the input time will be in a valid 24-hour format.

The input should not include any non-numeric characters except colons (:).

The script does not handle cases where the input string is completely empty or non-numeric.