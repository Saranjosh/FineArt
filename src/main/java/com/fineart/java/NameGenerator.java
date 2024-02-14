package com.fineart.java;

import java.util.Random;

public class NameGenerator {
	public static String generateRandomWord() {
        String characters = "abcdefghijklmnopqrstuvwxyz";
        StringBuilder randomWord = new StringBuilder();

        Random random = new Random();

        for (int i = 0; i < 5; i++) {
            char randomChar = characters.charAt(random.nextInt(characters.length()));
            randomWord.append(randomChar);
        }

        return randomWord.toString();
 }
	
}
