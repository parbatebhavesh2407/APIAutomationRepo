package com.api.automation.ignore;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestGetRunnerForIgnore {

	// 1st method to run
	@Test
	public Karate runTest2() {
		return Karate.run("getRequestToTestIgnore").tags("~@ignore").relativeTo(getClass());
	}
}
