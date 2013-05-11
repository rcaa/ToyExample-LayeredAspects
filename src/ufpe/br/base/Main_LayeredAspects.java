package ufpe.br.base;

public class Main_LayeredAspects {

	public static void main(String[] args) {
		BaseClass b = new BaseClass();
		try {
			b.validateTextOnly("rodrigo homi da ciencia!");
			b.validateCharacterOnly('a');
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(b.validateText("rodrigo homi da ciencia!"));
	}
}