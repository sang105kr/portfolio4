/**
 * 공용 자바 스크립트 
 */
//컨텍스트 루트 경로 읽어오기
var g_contextPath = true;
function getContextPath(){
	if(g_contextPath){
		let idx = location.href.indexOf(location.host)+location.host.length;
		return location.href.substring(idx,location.href.indexOf('/',idx+1));
	}else{
		return "";
	}
}

/* 부모노드 찾기 */
function parents(node) {     
	let current = node,         
	list    = [];     
	while(current.parentNode != null && current.parentNode != document.documentElement) {       
		list.push(current.parentNode);     
		current = current.parentNode;    
	}     
	return list;
}

/*-----------------------------------------------------------------------*
 * 노드 생성 함수
 * 주어진 이름(name)과 속성(attributes), 자식 노드를 포함하는 요소를 만들어서 반환하는 함수
 *-----------------------------------------------------------------------*/
function elt(name, attributes) {
	let node = document.createElement(name);
	if( attributes ) {
		for(let attr in attributes) {
			if(attributes.hasOwnProperty(attr)) {
				node.setAttribute(attr,attributes[attr]);
			}
		}
	}
	for(let i=2; i<arguments.length; i++) {
		let child = arguments[i];
		if( typeof child == "string" ) {
			child = document.createTextNode(child);
		}
		node.appendChild(child);
	}
	return node;
}
