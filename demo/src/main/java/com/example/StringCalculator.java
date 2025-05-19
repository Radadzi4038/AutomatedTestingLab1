package com.example;

public class StringCalculator {
     //Commented out codes for reference
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

    public int add(String numbers) {
        if (numbers.isEmpty()) {
            return 0;
        }
        String[] numArray = numbers.split(",");
        if (numArray.length == 1) {
            return Integer.parseInt(numArray[0]);
        }
        return Integer.parseInt(numArray[0]) + Integer.parseInt(numArray[1]);
    }
}