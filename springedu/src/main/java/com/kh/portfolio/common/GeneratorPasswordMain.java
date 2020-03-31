package com.kh.portfolio.common;

public class GeneratorPasswordMain {
	public static void main(String[] args) {
		PasswordGenerator passwordGenerator = new PasswordGenerator.PasswordGeneratorBuilder()
				.useDigits(true)
				.useLower(true)
				.useUpper(true)
				.usePunctuation(true)
				.build();
				String password = passwordGenerator.generate(8); 
				System.out.println(password);
	}
}
