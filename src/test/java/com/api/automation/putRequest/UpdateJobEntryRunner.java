package com.api.automation.putRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class UpdateJobEntryRunner {

	// 1st method to run
	@Test
	public Karate runTest() {
		return Karate.run("UpdateJobEntry","UpdateJobEntryCallingFeatureFromAnotherFeature").relativeTo(getClass());
	}
}
