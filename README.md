Volume Calculator – Bash (TDD Assignment)

Name: Richmond Adadzi
Student ID: [8924038]
Course: Automated Software Testing
Assignment: 1

My Objectives:

    Develop a Volume Calculator in Bash that:

    Accepts only positive integers as input.

    Implements Test-Driven Development (TDD) principles.

    Validates inputs and rejects invalid ones.

    Separates logic and tests, emulating professional unit testing practices.

Volume Formula:

Volume = Height × Width × Length

Project Structure:

File Name: VolumeCalculatorProject
VolumeCalculator.sh	Main script that calculates the volume.
VolumeCalculatorTest.sh	Script containing automated test cases.
README.md - Project documentation.

How to Run the Codes:

1. Make Scripts Executable:
chmod +x VolumeCalculator.sh VolumeCalculatorTest.sh

2. Run the Test Suite:

    ./VolumeCalculatorTest.sh

3. Implemented Test Cases

    Alphabetic Input: Ensures letters are rejected.

    Negative Numbers: Ensures negative values are rejected.

    Valid Integers: Confirms correct volume calculation for valid inputs.

    Floating-Point Numbers: Ensures decimals are rejected.

    Zero Values: Ensures zero is rejected as input.


Planned Test Cases (Not Yet Implemented):

    Missing Arguments: Test behavior when fewer than three inputs are provided.

    Very Large Numbers: Test handling of extremely large integer inputs.

    Leading Zeros: Test inputs with leading zeros (e.g., 007).

    Special Characters: Test inputs containing special characters (e.g., @, #).

    Blank/Whitespace Input: Test behavior when inputs are empty or contain only spaces.
    

Other Test Cases which were not implemented Expantiated on:

1. Test 6: Missing Arguments**       | Run function with only 1 or 2 parameters (e.g., `2`, `3`) to confirm it throws an error. |
2. Test 7: Very Large Numbers**      | Use large integers like `99999 * 99999 * 99999` to test integer overflow handling.       |
3. Test 8: Leading Zeros**           | Input like `002`, `03`, `004` should still be treated as valid integers.                 |
4. Test 9: Special Characters**      | Use input like `@`, `#`, `!` to confirm rejection.                                       |
5. Test 10: Blank/Whitespace Input** | Inputs like `""`, `" "` (empty or spaces) should be flagged as invalid.                  |
