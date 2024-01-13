package com.api.automation;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;


public class ParallerBuilder {

	@Test
	public void executeKarateTest() {
		Builder aRunner = new Builder();
		aRunner.path("classpath:com/api/automation");
		aRunner.parallel(5);
		//Results result = aRunner.parallel(5);
		//aRunner.tags("@Smoke"); //used to run only tags with smoke 
		/*
		System.out.println("Total Feature==>"+ result.getFeaturesTotal());
		System.out.println("Total Failed Count==>"+ result.getFailCount());
		System.out.println("Total Passed==>"+ result.getFeaturesPassed());
		
		Assertions.assertEquals(0, result.getFailCount(), "There are some failed Scenarios");
		*/
	}
}
