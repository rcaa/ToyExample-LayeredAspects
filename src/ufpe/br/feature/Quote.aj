package ufpe.br.feature;

import ufpe.br.base.BaseClass;

public abstract aspect Quote {

	pointcut quote(String string) : execution(* BaseClass.validateText(..)) && args(string);
	pointcut quote2(String string) : execution(void BaseClass.validateTextOnly(..)) && args(string);
	pointcut quote3(char c) : execution(void BaseClass.validateCharacterOnly(..)) && args(c);
	
	// quote

	String around(String string) :quote(string) {
		return proceed("\"" + string + "\"");
	}
	
	String around(String string) : quote(string) {
		return proceed("#" + string + "#");
	}
	
	String around(String string) : quote(string) {
		return proceed("$" + string + "$");
	}
	
	// quote 2
	
	void around(String string) :quote2(string) {
		proceed("\"" + string + "\"");
	}
	
	void around(String string) : quote2(string) {
		proceed("#" + string + "#");
	}
	
	void around(String string) : quote2(string) {
		proceed("$" + string + "$");
	}
	
	// quote
	
	before(String string) : quote(string) {
		System.out.println("advising code <before advice> <quote>");
	}
	
	after(String string) returning() : quote(string) {
		System.out.println("advising code <After returning advice> <quote>");
	}
	
	after(String string) : quote(string) {
		System.out.println("advising code <After advice> <quote>");
	}
	
	// quote 2

	before(String string) : quote2(string) {
		System.out.println("advising code <before advice> <quote 2>");
	}

	after(String string) returning() : quote2(string) {
		System.out.println("advising code <After returning advice>  <quote 2>");
	}

	after(String string) : quote2(string) {
		System.out.println("advising code <After advice> <quote 2>");
	}
	
	// quote 3

	before(char c) : quote3(c) {
		System.out.println("advising code <before advice> <quote 3>");
	}

	after(char c) returning() : quote3(c) {
		System.out.println("advising code <After returning advice>  <quote 3>");
	}

	after(char c) : quote3(c) {
		System.out.println("advising code <After advice> <quote 3>");
	}
}