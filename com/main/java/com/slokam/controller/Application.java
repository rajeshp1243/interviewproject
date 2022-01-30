package com.slokam.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;



@EntityScan(basePackages = { "com.slokam.model" })
@EnableJpaRepositories(basePackages = { "com.slokam.dao", "com.slokam.service" })
@ComponentScan(basePackages = { "com.slokam" })
@SpringBootApplication
//this is APPLICTAION class 
public class Application {

	public static void main(String[] args) {

		SpringApplication.run(Application.class, args);

	}

}
