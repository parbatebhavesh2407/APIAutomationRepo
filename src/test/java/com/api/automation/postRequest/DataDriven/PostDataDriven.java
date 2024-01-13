package com.api.automation.postRequest.DataDriven;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class PostDataDriven {

	// 1st method to run
	@Test
	public Karate runTest() {
		return Karate.run("PostDataDriven").relativeTo(getClass());
	}
}
