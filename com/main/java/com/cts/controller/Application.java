package com.cts.controller;

import org.apache.logging.log4j.*;
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
	private static Logger log = LogManager.getLogger(Application.class);

	public static void main(String[] args) {

		SpringApplication.run(Application.class, args);
	
		log.fatal("fatel");
		log.error("Error :error  log 25is ");
		log.info("info : info log is25 ");
		log.warn("warn");
		log.debug("debug : debug log 25is ");
	}

	@Bean
	public RestTemplate restTemplate() {
		return new RestTemplate();
	}

}
