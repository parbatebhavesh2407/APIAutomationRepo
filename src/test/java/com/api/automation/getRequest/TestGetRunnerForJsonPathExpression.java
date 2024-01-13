package com.api.automation.getRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestGetRunnerForJsonPathExpression {

	// 1st method to run
	@Test
	public Karate runTest() {
		return Karate.run("JsonPathExpression").relativeTo(getClass());
	}
}
