package com.api.automation.postRequest.fileUpload;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestFileUpload {

	// 1st method to run
	@Test
	public Karate runTest() {
		return Karate.run("FileUpload").relativeTo(getClass());
	}
}
