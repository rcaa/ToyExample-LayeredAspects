package ufpe.br.base;

public class BaseClass {

	public String validateText(String string) {
		System.out.println("base code executed succesfully! <BaseClass.validateText>");
		return string;
	}
	
	public void validateTextOnly(String string) throws Exception {
		if (string == null || string.equals("") || string.length() < 3
				|| string.length() > 100) {
			throw new Exception("Invalid string");
		}
		System.out.println("base code executed succesfully! <BaseClass.validateTextOnly>");
	}
	
	public void validateCharacterOnly(char character) throws Exception {
		if (character == ' ') {
			throw new Exception("Invalid char");
		}
		System.out.println("base code executed succesfully! <BaseClass.validateCharacterOnly>");
	}
}