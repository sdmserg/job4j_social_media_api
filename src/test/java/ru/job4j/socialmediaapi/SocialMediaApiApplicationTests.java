package ru.job4j.socialmediaapi;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.testcontainers.service.connection.ServiceConnection;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.test.web.servlet.MockMvc;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;
import org.testcontainers.postgresql.PostgreSQLContainer;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;

@SpringBootTest
@AutoConfigureMockMvc
@Testcontainers
class SocialMediaApiApplicationTests {

	@Container
	@ServiceConnection
	private static final PostgreSQLContainer CONTAINER =
			new PostgreSQLContainer("postgres:16.4");

	@Autowired
	private MockMvc mockMvc;

	@Test
	void whenPingThenReturnServiceStatus() throws Exception {
		mockMvc.perform(get("/api/ping"))
				.andExpect(jsonPath("$.status").value("ok"))
				.andExpect(jsonPath("$.service").value("social-media-api"));
	}
}