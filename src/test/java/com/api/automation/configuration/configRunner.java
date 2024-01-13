package com.api.automation.configuration;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class configRunner {
	
	@Test
	public Karate runtest111()
	{
		return Karate.run("getGlobalConfig").relativeTo(getClass());
	}
}
