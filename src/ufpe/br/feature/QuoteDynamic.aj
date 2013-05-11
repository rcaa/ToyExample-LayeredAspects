package ufpe.br.feature;

public aspect QuoteDynamic extends Quote {

	pointcut driver() : if (Driver.isActivated("quote")); // true default
	
	pointcut quote(String string) : Quote.quote(string) && driver();
	pointcut quote2(String string) : Quote.quote2(string) && driver();
	
	Object around() : adviceexecution() && within(ufpe.br.feature.Quote){
		Object ret = null;
		System.err.println(thisJoinPoint);
		if (Driver.isActivated("quote")){
			ret = proceed();
		}
		return ret;
	}
	
}