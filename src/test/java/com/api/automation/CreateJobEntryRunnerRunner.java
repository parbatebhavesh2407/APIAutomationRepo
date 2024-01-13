package com.api.automation;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class CreateJobEntryRunnerRunner {

	// 1st method to run
	@Test
	public Karate runTest() {
		return Karate.run("CreateJobEntry","CreateJobEntryWithVariables").relativeTo(getClass());
	}
}
