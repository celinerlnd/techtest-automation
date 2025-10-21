--- Tech Test Automation — API (FakerAPI Companies) ---

## This project focuses on API Automation Testing for the endpoint `https://fakerapi.it/api/v1/companies` using:
- Java (JDK 17), 
- Maven 3.9.11,
- KarateFramework,
- JUnit5,
- Cucumber,
- Gherkin

## This test covers two main parts:
1) Validate the number of returned data for 
   `https://fakerapi.it/api/v1/companies?_quantity=<number_of_data>`  
   where `<number_of_data>` = 20, 5, dan 1 (where no validate the actual content)

2) Validate the default endpoint
   `https://fakerapi.it/api/v1/companies` (without parameter) with responses:
    - Check that each item’s `id` is **not null** using a loop (`match each`)
    - Validate the JSON Schema of the response.

------
## Tech Stack

- Java JDK 17 – programming language
- Maven 3.9.11 – build & dependency management
- Cucumber / Gherkin – for writing readable test scenarios for .feature file(s)
- Karate Framework – for executing API automation
- JUnit5 – test runner integration
- JSON Schema – for response structure validation

---
## Prerequisites

Make sure you have installed:

- [Java JDK 17](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)
- [Apache Maven 3.9.11](https://maven.apache.org/download.cgi)
- [IntelliJ IDEA](https://www.jetbrains.com/idea/) *(recommended)*
- Git

## Check versions:
```bash
java -version
mvn -version
```
---
## Project Structure:
techtest-automation/
├── pom.xml
├── README.md
└── src/
    └── test/
        ├── java/
        │   └── com.automation.api/
        │       └── TestRunner.java
        └── resources/
            ├── featureFile/  <-- feature file(s)
            │   └── .feature
            └── testData/ <-- jsonBody scheme
            │   └── .json
            └── karate-config.js

- featureFile/.feature → Gherkin scenario files for API testing 
- testData/.json → JSON schema used for validation 
- com.automation.api/TestRunner.java → JUnit5 runner for executing the tests
- karate-config.js → This file is automatically loaded by Karate before any test is executed.
  It’s useful to define the base URL, environment variables, and headers globally.

## Example of pom.xml:

```<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
<modelVersion>4.0.0</modelVersion>

<groupId>com.cobatest.api</groupId>
<artifactId>automation-api-techtest</artifactId>
<version>1.0-SNAPSHOT</version>
<packaging>jar</packaging>

<name>automation-api-techtest</name>
<url>http://maven.apache.org</url>

  <properties>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
  </properties>

  <dependencies>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>3.8.1</version>
      <scope>test</scope>
    </dependency>
    <!-- Karate framework -->
    <dependency>
      <groupId>com.intuit.karate</groupId>
      <artifactId>karate-junit5</artifactId>
      <version>1.4.1</version>
      <scope>test</scope>
    </dependency>
    <dependency>
      <groupId>net.masterthought</groupId>
      <artifactId>cucumber-reporting</artifactId>
      <version>5.8.0</version>
    </dependency>

  </dependencies>
  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-surefire-plugin</artifactId>
        <version>3.1.2</version>
        <configuration>
          <includes>
            <include>**/*Test.java</include>
          </includes>
        </configuration>
      </plugin>
    </plugins>
  </build>

</project>
```
---
How to Run the test

# 1. Clone the repository
git clone https://github.com/celinerlnd/techtest-automation.git
cd techtest-automation

# 2. Build the project
mvn clean install

# 3. Run the tests
- mvn test OR
- run directly in IntelliJ: Open TestRunner.java → Click gutter run on Karate testApi() line

---
## Test Report:
Karate will automatically generate a test report at:
→ target/karate-reports/karate-summary.html

👤 Author
@celinerlnd

