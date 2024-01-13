package com.api.automation;

import java.util.Arrays;
import java.util.List;
import org.junit.jupiter.api.Test;
import com.intuit.karate.Runner.Builder;

//import com.intuit.karate.junit5.Karate.Test;
public class ParallelRunWithTags {
	private static final String CLASS_PATH = "classpath:";

	@Test
	public void runTestWithTags() {
		Builder aRun = new Builder();
		aRun.path(getLocations());
		aRun.parallel(5);
		aRun.tags(getTags());
	}

	private List<String> getTags() {
		String aTags = System.getProperty("tags", "@Confidence");
		List<String> aTagList = Arrays.asList(aTags);
		return aTagList;
	}

	private List<String> getLocations() {
		String aLoc = System.getProperty("Location" + "com/api/automation");
		List<String> aLocList = Arrays.asList(CLASS_PATH + aLoc);
		return aLocList;

	}
}
