<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function init() {
		let source = new EventSource(
				"http://localhost:9080/portfolio/sse/stockServer");
		source.addEventListener("open",function(){
			console.log('서버와 연결되었습니다.');
		},false);

		source.addEventListener("error",function(e){
			console.log('연결종료:' + e.eventPhase);
		},false);		
		
		source.addEventListener("message", function(event) {
			console.log(event.data);
			updateData('black', event);
		}, false);
		
		source.addEventListener("UpperLimit", function(event) {
			console.log(event.data);
			updateData('red', event);
		}, false);
		
		source.addEventListener("LowerLimit", function(event) {
			console.log(event.data);
			updateData('blue',event);
		}, false);
	}

	function updateData(color, event){
		let data = event.data.split("\n");
		let symbol = data[0];
		let delta = parseInt(data[1], 10);
		let cell = document.getElementById(symbol);
		
		cell.style.color= color;
		let currentValue = parseInt(cell.textContent, 10);

		let mark='';
		switch(color){
			case 'black' : mark = ''; 
			case 'red' : mark = '+'; 
			case 'blue' : mark = '-'; 
		}
		let rate = delta/currentValue*100;
		rate = rate.toFixed(1);
		cell.textContent = currentValue + delta + '('+rate+'%)';
	}
</script>
</head>
<body onload="init()">
	<h1>Server-Sent Event 예제</h1>
	<p>서버에서 보내온 데이터를 표시하고 있습니다.</p>
	<table>
		<tr>
			<th>Samsung</th>
			<th>LG</th>
			<th>SK</th>
		</tr>
		<tr>
			<td id="Samsung">55</td>
			<td id="LG">70</td>
			<td id="SK">100</td>
		</tr>
	</table>
	<hr />
	
</body>

</html>