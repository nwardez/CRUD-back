package com.example.demo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import co.simplon.Application;


@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT,
				classes = Application.class)
@AutoConfigureMockMvc
@TestPropertySource(locations="classpath:application-test.properties")
public class AffaireRepositoryTest {
	
	@Autowired
	MockMvc mockMvc;
	
	@Test
	public void retoursAffaires() throws Exception {
		MvcResult mvcResult= mockMvc.perform(
				MockMvcRequestBuilders.get("/affaires")
				.accept(MediaType.APPLICATION_JSON)
				).andReturn();
	}

}
