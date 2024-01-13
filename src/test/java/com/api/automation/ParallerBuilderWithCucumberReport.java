package com.api.automation;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;
import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

public class ParallerBuilderWithCucumberReport {

	@Test
	public void executeKarateTest() {
		Builder aRunner = new Builder();
		aRunner.path("classpath:com/api/automation");
		// aRunner.parallel(5);
		Results result = aRunner.parallel(5);
		generateCucumberReport(result.getReportDir());

	}
	// repDirectoryLocation-->C:\Users\bhavesh.parbate\eclipse-workspace\karateFramework\target\surefire-reports
	private void generateCucumberReport(String repDirectoryLocation) {
		File reportDir = new File(repDirectoryLocation);
		Collection<File> jsonCollection = FileUtils.listFiles(reportDir, new String[] { "json" }, true);

		List<String> jsonFiles = new ArrayList<String>();
		jsonCollection.forEach(file -> jsonFiles.add(file.getAbsolutePath()));

		Configuration configuration = new Configuration(reportDir, "REPORT");
		ReportBuilder reportBuilder = new ReportBuilder(jsonFiles, configuration);
		reportBuilder.generateReports();
	}
}
