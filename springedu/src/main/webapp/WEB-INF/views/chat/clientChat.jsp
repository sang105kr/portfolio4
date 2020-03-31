<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	let ws, messages;
	window.addEventListener("load",init,false);
	function init(){
    messages=document.getElementById("messages");
    
    openSocketBtn.addEventListener("click",function(e){ openSocket(); },false);
    sendBtn.addEventListener("click",function(e){ send(); },false);
    closeSocketBtn.addEventListener("click",function(e){ closeSocket(); },false);
	}
  
  function openSocket(){
    	//1)웹소켓 생성 유무 판단
      if(ws!==undefined && ws.readyState!==WebSocket.CLOSED){
          writeResponse("WebSocket is already opened.");
          return;
      }
      //2)웹소켓 객체 생성
      ws=new WebSocket("ws://localhost:9080/portfolio/echo");
      
      ws.addEventListener("open",function(e){
          if(event.data === undefined) return;
          writeResponse(e.data);
      },false);
      
      ws.addEventListener("message",function(e){
          writeResponse(e.data);
      },false);
      
      ws.addEventListener("close",function(e){
          writeResponse("Connection closed");
      },false);
  }
  
  function send(){
		let text = messageinput.value + "," + sender.value;
		ws.send(text);
		text = "";
  }
  
  function closeSocket(){
		ws.close();
  }
  function writeResponse(text){
    messages.innerHTML+="<br/>"+text;
  }
</script>
</head>
<body>
   <div>
        <input type="text" id="sender" value="sang105kr" style="display: none;">
        <input type="text" id="messageinput">
    </div>
    <div>
        <button type="button" id="openSocketBtn">Open</button>
        <button type="button" id="sendBtn">Send</button>
        <button type="button" id="closeSocketBtn">Close</button>
    </div>
    <!-- Server responses get written here -->
    <div id="messages"></div>
</body>
</html>