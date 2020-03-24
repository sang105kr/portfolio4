window.addEventListener("load",init,false);
let profileImage = null;
function init(){

	modifyBtn.addEventListener("click",function(e){
    e.preventDefault();

    if(checkValid()){
      // 유효성 통과하면 메인화면으로 이동
      //location.href="main.html";
    	
      //document.getElementById("joinFrm").submit();
    	
      let request = new XMLHttpRequest();
      let formData = new FormData(document.getElementById("joinFrm"));
      formData.append("file",profileImage);
      request.open("POST", getContextPath()+"/member/modify");
      request.send(formData);      
    }
  },false);
  
  //사진 드래그 앤 드롭
  let pic =document.getElementsByClassName("pic")[0];
  pic.addEventListener("dragover",function(e){ 
    return dragOver(e);
  },false);
  pic.addEventListener("dragleave",function(e){
    return dragOver(e);
  },false);
  pic.addEventListener("drop",function(e){
    return uploadFiles(e);
  },false); 
}
//사진 드래그이벤트
function dragOver(e) {
  e.stopPropagation();
  e.preventDefault();
  if (e.type == "dragover") {
      e.target.style.backgroundColor = "black";
      e.target.style.outlineOffset = "-20px";
  } else {
      e.target.style.backgroundColor = "gray";
      e.target.style.outlineOffset = "-10px";      
  }
}
//사진 드롭이벤트발생시 이미지 첨부
function uploadFiles(e) {
  e.stopPropagation();
  e.preventDefault();
  dragOver(e); //1
  console.log(e.target);
 // e.dataTransfer = e.originalEvent.dataTransfer; //2
  let files = e.target.files || e.dataTransfer.files;

  if (files.length > 1) {
      alert('이미지는 하나만 첨부하세요');
      return;
  }
  //100kb미만의 이미지만 첨부
  if(files[0].size > 1024*100){
  	alert('100kb 미만의 이미지만 첨부 가능합니다');
  	return;
  }

  let reg = /image\/\/*/;
  if (files[0].type.match(reg)) {
    e.target.style.backgroundImage = "url(" + window.URL.createObjectURL(files[0]) + ")";
    e.target.style.outline = "none";
    e.target.style.backgroundSize = "100% 100%";
    profileImage = files[0];
  }else{
    alert('이미지가 아닙니다.');
    return;
  } 
}  
function checkValid(){
  // 사용자 입력값 읽어오기
  var idEle 		= document.getElementById('id');
  var pwEle 		= document.getElementById('pw');
//  var pwChkEle 		= document.getElementById('pwChk');
  var telEle 		= document.getElementById('tel');
  var nicknameEle 	= document.getElementById('nickname');
  var regionEle 	= document.getElementById('region');
  var genderEle 	= document.getElementsByName('gender');
  var birthEle 		= document.getElementById('birth');

  var flag = true; /* 회원가입 유효성 체크 유무 */

  // console.log(idEle.value,
  //             pwEle.value,
  //             pwChkEle.value,
  //             telEle.value,
  //             regionEle.options[regionEle.selectedIndex].text,
  //             // genderEle.value
  //             );
  //1) 이메일 주소 체크
//    if(!isEmail(idEle.value)) {
//      id_errmsg.innerHTML = "이메일 정보가 잘못되었습니다.";
//      flag = flag && false;
//    }else{
//      id_errmsg.innerHTML = "";
//    }
  //2) 비밀번호 체크
    if(!isPassword(pwEle.value)) {
      pw_errmsg.innerHTML = "비밀번호가 잘못되었습니다.(8~10)자리";
      flag = flag && false;    
    }else{
      pw_errmsg.innerHTML = "";
    }
//  //3) 비밀번호 재확인
//    //3-1)비밀번호 패턴 체크
//    if(!isPassword(pwChkEle.value)) {
//      pwChk_errmsg.innerHTML = "비밀번호가 잘못되었습니다.(8~10)자리";
//      flag = flag && false;
//    }else{
//      pwChk_errmsg.innerHTML = "";
//    }
//    //3-2)비밀번호 일치 체크
//    if(pwEle.value != pwChkEle.value ) {
//      pwChk_errmsg.innerHTML = "비밀번호가 일치하지 않습니다.";
//      flag = flag && false;
//    }else {
//      pwChk_errmsg.innerHTML = "";
//    }
  //4) 전화번호
    if(!isTel(telEle.value)) {
      tel_errmsg.innerHTML = "전화번호가 잘못되었습니다.ex)010-1234-5678";
      flag = flag && false;
    }else{
      tel_errmsg.innerHTML = "";
    }    
  //5) 별칭
    if(nicknameEle.value == "" ) {
    	nickname_errmsg.innerHTML = "별칭을 입력해주세요!";
        flag = flag && false;
      }else{
    	nickname_errmsg.innerHTML = "";
      }   
  //6) 지역
    if(regionEle.selectedIndex == 0){
      region_errmsg.innerHTML = "지역을 선택해주세요!";
      flag = flag && false;
    }else{
      region_errmsg.innerHTML = "";
    }
  //7) 성별
    var status = false;
    for(var gender of genderEle) {
      if(gender.checked) {
        status = true;
        break;
      }
    }
    if(!status) {
      gender_errmsg.innerHTML = "성별을 선택해주세요!";
      flag = flag && false;
    }else{
      gender_errmsg.innerHTML = "";
    }
    //8) 생년월일 체크
    if(birthEle.value == "" ) {
      birth_errmsg.innerHTML = "생일을 입력해주세요!";
      flag = flag && false;
    }else{
      birth_errmsg.innerHTML = "";
    }
    return flag;
}
// 이메일 체크 정규식
function isEmail(asValue) {
  var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
  return regExp.test(asValue); // 형식에 맞는 경우 true 리턴	
}

// 핸드폰 번호 체크 정규식
function isTel(asValue) {
  var regExp = /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/;
  return regExp.test(asValue); // 형식에 맞는 경우 true 리턴
}

//비밀번호 체크 정규식
function isPassword(asValue) {
  var regExp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,10}$/; //  8 ~ 10자 영문, 숫자 조합
  return regExp.test(asValue); // 형식에 맞는 경우 true 리턴
}

