<%@ page language="java" contentType="text/event-stream; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ page import="java.lang.management.ManagementFactory"%>
<%@ page import="java.lang.management.MemoryUsage"%>
<%@ page import="java.lang.management.MemoryMXBean"%>
<%
	MemoryMXBean memoryBean = ManagementFactory.getMemoryMXBean();
	MemoryUsage memoryUsage = memoryBean.getHeapMemoryUsage();
	long time = System.currentTimeMillis()+32400000;  // GMT+9
	int committed = (int)(memoryUsage.getCommitted()/(1024 * 1024));  //byte->mega환산
	int max = (int)(memoryUsage.getMax()/(1024 * 1024));
	int used = (int)(memoryUsage.getUsed()/(1024 * 1024));
%>
retry: 5000 
data: <%= time %>
data: <%= used %>
data: <%= max %>
data: <%= committed %>

: 마지막 데이터 필드 아래에 빈 줄 두개를 포함해야 합니다.