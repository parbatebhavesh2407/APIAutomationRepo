package com.api.automation.postRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestGetRunner3 {

	// 1st method to run
	@Test
	public Karate runTest() {
		return Karate.run("CreateEntry", "SchemaValidation").relativeTo(getClass());
	}
}
