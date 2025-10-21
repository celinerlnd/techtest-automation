package com.automation.api;

import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate testApi() {
        return Karate.run("classpath:featureFile/company_loop_dataValidation.feature");
    }
}
