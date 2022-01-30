package com.cts.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.web.client.RestTemplate;

@EntityScan(basePackages = { "com.cts.model" })
@EnableJpaRepositories(basePackages = { "com.cts.dao", "com.cts.service" })
@ComponentScan(basePackages = { "com.cts" })
@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);

	}
	//this code for resttemplate
	@Bean
	public RestTemplate restTemplate() {
		return new RestTemplate();
	}
	
}
