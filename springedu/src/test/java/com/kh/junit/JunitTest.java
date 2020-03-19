package com.kh.junit;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Stream;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class JunitTest {
	
	private static final Logger logger 
		= LoggerFactory.getLogger(JunitTest.class);
	
	@BeforeAll
	@Disabled
	static void beforeAll() {
		logger.info("클래스 레벨에서 테스트 전 수행");
	}
	@AfterAll
	@Disabled
	static void afterAll() {
		logger.info("클래스 레벨에서 테스트 후 수행");
	}
	@BeforeEach
	@Disabled
	void beforeEach() {
		logger.info("개별단위테스트 전 수행");
	}
	@AfterEach
	@Disabled
	void afterEach() {
		logger.info("개별단위테스트 전 수행");
	}
	@Test
	@Disabled
	void test1() {
		logger.info("test1()수행");
		assertEquals(10,5+5);
	}
	
	@Test
	@Disabled
	void test2() {
		logger.info("test2()수행");
		assertEquals(101, 10*10);
	}
	
	@Test
	void splitWord() {
		String word = "abc   def   ghi";
		List<String> list = Arrays.asList(word.split("\\s+"));

		logger.info(list.toString());
	}
}














