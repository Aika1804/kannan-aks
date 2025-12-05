package com.aksazure.docker;

import java.sql.Timestamp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping("/time")
    public String getName() {
        return "My spring boot code is working as expected " + new Timestamp(System.currentTimeMillis());
    }

}
