package com.api.automation.getRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestGetRunner2 {

	// 1st method to run
	@Test
	public Karate runTest() {
		return Karate.run("ValidationUsingFile").relativeTo(getClass());
	}
}
