package com.kh.portfolio.aspect;

import java.util.Arrays;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component	//컨테이너에 빈으로 등록하고자하는 클래스에 사용
@Aspect     //부가기능을 정의한 클래스에 사용
public class MeasuringAspect {
	private static final Logger logger
		= LoggerFactory.getLogger(MeasuringAspect.class);
			
	@Around("execution(* com.kh.portfolio.board.svc.BoardSVCImpl.*(..))")
	public Object measuringMethodRoundingTime(ProceedingJoinPoint jointPoint) {
		Object result = null;
		Signature s = jointPoint.getSignature();
		String methodName = s.getName();
		logger.info("[Log: Around]Before: " + methodName + " time check start :" + Arrays.toString(jointPoint.getArgs()));
		long startTime = System.nanoTime();
		
		try {
			//핵심기능 수행
			result = jointPoint.proceed();
		} catch (Throwable e) {
			logger.info("[Log: Around]Exception: " + methodName);
		}finally {
			logger.info("[Log: Around]Finally: " + methodName);
			if(result != null) {
				logger.info("[Log: Around]result: " + result.toString());
			}
		}
		
		long endTime = System.nanoTime();	
		logger.info("[Log: Around]After: " + methodName + " time check end");
		
		logger.info("[Log: Around]: " + methodName + 
							  " Processing time is" + (startTime-endTime) + "ns");
		logger.info("==================================================================================");
		return result;
	}
}






