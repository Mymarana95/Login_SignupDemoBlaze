package com.demoblaze.karate;

import com.intuit.karate.junit5.Karate;

public class SignupRunnerTest {

    @Karate.Test
    Karate testSignup() {
        return Karate.run("classpath:karate/signup.feature");
    }
}
