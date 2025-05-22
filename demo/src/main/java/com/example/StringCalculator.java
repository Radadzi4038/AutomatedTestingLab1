package com.example;

public class StringCalculator {
    // Commented out codes for reference
    // public int add(String numbers) {
    // return 0;
    // }
    // }

    // public int add(String numbers) {
    // if (numbers.isEmpty()) {
    // return 0;
    // }
    // String[] numArray = numbers.split(",");
    // if (numArray.length == 1) {
    // return Integer.parseInt(numArray[0]);
    // }
    // return Integer.parseInt(numArray[0]) + Integer.parseInt(numArray[1]);
    // }

    /*
     * public int add(String numbers) {
     * if (numbers.isEmpty()) {
     * return 0;
     * }
     * String[] numArray = numbers.split(",");
     * if (numArray.length == 1) {
     * return Integer.parseInt(numArray[0]);
     * }
     * return Integer.parseInt(numArray[0]) + Integer.parseInt(numArray[1]);
     * }
     */
    /*
     * public int add(String numbers) {
     * if (numbers.isEmpty()) {
     * return 0;
     * }
     * String[] numArray = numbers.split(",");
     * int sum = 0;
     * for (String num : numArray) {
     * sum += Integer.parseInt(num);
     * }
     * return sum;
     * }
     */

    /*
     * public int add(String numbers) {
     * if (numbers.isEmpty()) {
     * return 0;
     * }
     * String[] numArray = numbers.split("[,\n]");
     * int sum = 0;
     * for (String num : numArray) {
     * sum += Integer.parseInt(num);
     * }
     * return sum;
     * }
     */


    public int add(String numbers) {
        if (numbers.isEmpty()) {
            return 0;
        }
        String delimiter = ",|\n";
        if (numbers.startsWith("//")) {
            int delimiterIndex = numbers.indexOf("\n");
            delimiter = numbers.substring(2, delimiterIndex);
            numbers = numbers.substring(delimiterIndex + 1);
        }
        String[] numArray = numbers.split(delimiter);
        int sum = 0;
        for (String num : numArray) {
            sum += Integer.parseInt(num);
        }
        return sum;
    }
}
