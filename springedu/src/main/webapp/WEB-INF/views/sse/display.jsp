<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script>
let heapMemoryChart;
$(function() {
	heapMemoryChart = new Highcharts.Chart({
		chart : {
			renderTo : 'memoryMonitorContainer',
			defaultSeriesType : 'spline',
		},
		title : {
			text : 'Memory Monitor'
		},
		xAxis : {
			type : 'datetime',
			tickPixelInterval : 100,
			maxZoom : 20 * 1000,
			title : {
				text: 'Date'
			}
		},
		yAxis : {
			minPadding : 0.2,
			maxPadding : 0.2,
			title : {
				text : '힙 메모리',
				margin : 30
			}
		},
	    tooltip: {
	        headerFormat: '<b>{series.name}</b><br>',
	        pointFormat: '{point.x:%H:%M:%S} - {point.y:.0f}MB'
	    },
	    plotOptions: {
	        spline: {
	            marker: {
	                enabled: true
	            }
	        }
	    },
		series : [
			{
				name : 'used',
				data : []
			}, {
				name : 'max',
				data : []
			}, {
				name : 'committed',
				data : []
			}
		]
	});
});

let source = new EventSource("<c:url value='/sse/memorymonitor'/>");
source.addEventListener("message", function(event) {
	var data = event.data.split("\n");
	var series = heapMemoryChart.series[0];
	var shift = series.data.length > 20;

	var time = parseInt(data[0], 10);
	var used = parseInt(data[1], 10);
	var max = parseInt(data[2], 10);
	var committed = parseInt(data[3], 10);

 	heapMemoryChart.series[0].addPoint([ time, used ], true, shift);
	heapMemoryChart.series[1].addPoint([ time, max ], true, shift);
	heapMemoryChart.series[2].addPoint([ time, committed ], true, shift); 
},false);
</script>
</head>
<body>
<div id="memoryMonitorContainer"></div>
</body>
</html>