package com.skilldistillery.guitars;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class GuitarShopperApplication extends SpringBootServletInitializer {
	  @Override
	  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(GuitarShopperApplication.class);
	  }

	public static void main(String[] args) {
		SpringApplication.run(GuitarShopperApplication.class, args);
	}

}
