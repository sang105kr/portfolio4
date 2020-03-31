<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script defer>
	var heapMemoryChart;
	$(function() {
		heapMemoryChart = new Highcharts.Chart({
			chart : {
				renderTo : 'memoryMonitorContainer',
				defaultSeriesType : 'spline',
				events : {
					load : requestMemoryInfo
				}
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
			series : [ {
				name : 'used',
				data : []
			}, {
				name : 'max',
				data : []
			}, {
				name : 'committed',
				data : []
			}  ]
		});
	});

	function requestMemoryInfo() {
		var ws = new WebSocket("ws://localhost:9080/portfolio/websocket/memorymonitor");
		ws.onmessage = function(event) {
			var data = JSON.parse(event.data);

			var series = heapMemoryChart.series[0];
			var shift = series.data.length > 20;
			heapMemoryChart.series[0].addPoint([ data[0].time, data[0].used ], true, shift);
			heapMemoryChart.series[1].addPoint([ data[1].time, data[1].max ], true, shift);
			heapMemoryChart.series[2].addPoint([ data[2].time, data[2].committed ], true, shift);
		}
	}
</script>
</head>
<body>
<div id="memoryMonitorContainer"></div>
</body>
</html>