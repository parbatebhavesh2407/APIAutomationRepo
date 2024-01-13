package com.api.automation.getRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestGetRunner {

	// 1st method to run
	@Test
	public Karate runTest() {
		return Karate.run("getRequest2", "validateJsonArray","ValidateFuzzyMatcher","Variable","getGlobalConfig").relativeTo(getClass());
	}

	// 2nd method to run
	@Test
	public Karate runTestUsingClassPath() {
		return Karate.run("classpath:\\com\\api\\automation\\getRequest\\getRequest2.feature");
	}
}
