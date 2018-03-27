<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자바스크립트 연습</title>
<script type="text/javascript">
	function welcome() {
	document.write("hello! javaScript!");
	alert("Message box");
	}
	function hello() {
		alert("Hello~~");
	}
	function example1(){
		var name = "admin";
		var kor = 30;
		var average = 30.2;
	}
	function example2(){
		for(var i=0; i<10; i++){
			document.write(i+1);
		}
		var total = sum2(10,20);
		alert(total+" from return function")
	}
	function sum(a,b){
		var result = a+b;
		alert(result);
	}
	function sum2(a,b){
		return a+b;
	}
	
	function add(a,b){
		return a+b;
	}
	
	function multi(a,b){
		return a*b;
	}
	
/* 	var r1 = add(10,20);
	var r2 = multi(10,20);
	alert(r1);
	alert(r2); */
	
	
	
	function connectServer(){
		var xhp = new XMLHttpRequest();
		xhp.onreadystatechange = function(){
			if(this.readyState==4&&this.status==200){
				var text = this.responseText;
				alert(text);
			}
			
		}
		xhp.open("GET","server.jsp",true);
		xhp.send();
	}
</script>
</head>
<body>
<button onclick="connectServer()">서버접속</button>
	<button onclick="welcome()">자바스크립트 실행</button>
	<button onclick="example2()">안뇽</button>	
	<button onclick=""></button>
</body>
</html>