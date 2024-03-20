<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        *{
            margin:0px;
            padding:0px;
        }
        .main{
            margin:200px auto;
            width: 622px;
        }
        .border{
            width: 500px;
            border:1px solid white;
            padding:30px 60px;
            background-color: skyblue;
        }
        #idrange,#passwordrange{
            border:1px solid black;
            padding:10px;
            margin:20px 0px;
        }
        
        .findfrm input:not([type = submit]){
            height:50px;
            width:100%;
            margin:20px 0px;
            border:1px solid blue;
        }
        .loginbtn{
            width:100px;
            height:30px;
            margin:0px auto;
            margin-top:30px;
            display:block;
        }
        .loginbtn:hover{
            font-weight: bold;
            background-color: black;
            border: 2px solid gray;
            color:white;
        }
        
        .changebtn{
            width:100%;
            height:62px;
            background-color: white;
            border-collapse: collapse;
            border:1px solid gray;
        }
        .changebtn tr td{
            list-style-type: none;
            display:inline-block;
            width:48%;
            height:50px;
            text-align: center;
        }
        .changebtn tr td a{
            text-decoration: none;
            height: 100%;
            margin: 10px auto;
            display:inline-block;
        }
        .changebtn{
            margin:20px auto;
        }
</style>
</head>
<body>
	<header>
		<jsp:include page="/header/header.jsp" />
	</header>
	<main>
    	<div class="main">
	        <h1 style="text-align: center; margin-bottom:50px;"> 아이디 / 비밀번호 찾기</h1>
            <table class="changebtn">
                <tr>
                    <td><a href ="#" id="findid" onclick = "">아이디 찾기</a></td>
                    <td><a href ="#" id="findpwd" onclick= "">비밀번호 찾기</a></td>
                </tr>
            </table>
            <h2 style="text-align: center; margin:50px 0px;"> 회원가입시 기입한 정보를 입력해주세요.</h2>
	        <div class="border" style="text-align: center;"">
	        <form action="" class="findfrm" id="login0">
	            <input type="tel" name="tel" id="tel" maxlength="20" placeholder="전화번호 입력" required autofocus/>
	            <input type="email" name="email" id="email" placeholder="이메일입력" required/>
	            <div>회원가입 시 기입한 정보를 입력해주세요.</div>
	            <div id="button">
	                <input type="submit" value="찾기" class="loginbtn">
	            </div>
	        </form>
	        </div>
        </div>
    </main>
    <footer>
    
    </footer>
</body>
</html>