window.addEventListener("load",init,false);
function init(){
  var idTag = document.getElementById("id");
  var pwTag = document.getElementById("pw");

  var outBtn = window.document.getElementById("outBtn");
  console.log(outBtn);
  outBtn.addEventListener("click",function(e){
    e.preventDefault();
    var result = checkLogin();
//    console.log("result="+result);
    if(result){
      if(confirm("회원 탈퇴하시겠습니까?")){    	  
    	 document.getElementById("frm").submit();	
      }	
    }
  },false);
}
function checkLogin(){
  var idTag = document.getElementById("id");
  var idValue = idTag.value;
  var pwTag = document.getElementById("pw");
  var pwValue = pwTag.value;
  var flag = true;
  
  // 로아웃 유효성 체크
  //1) 아이디, 비밀번호 빈문자열 체크
  if(idValue.trim().length == 0){
    idMsg.innerHTML="아이디를 입력하세요!";
    idMsg.classList.add("errmsg");     
    idTag.focus();
    flag = false;
    return flag;
  }
  if(pwValue.trim().length == 0){
    idMsg.innerHTML="";
    pwMsg.innerHTML="비밀번호를 입력하세요!";
    pwMsg.classList.add("errmsg");  
    pwTag.focus();
    flag = false;
    return flag;
  }
  return flag;
}