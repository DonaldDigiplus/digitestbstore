package com.sdgdev.DigiposBackend.Configurations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;

public class AppProperties {
    @Autowired
    private Environment environment;

    public String getTokenSecret() {
        return environment.getProperty("token.secret");
    }

    public String getAwsAccessKey() {
        return environment.getProperty("aws.accessKey");
    }

    public String getAwsSecretKey() {
        return environment.getProperty("aws.secretKey");
    }
}
