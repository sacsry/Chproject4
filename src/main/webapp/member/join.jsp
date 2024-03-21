<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/header.css">
    <style>
    	*{
           margin:0px;
            padding:0px;
        }
        .main{
            margin:200px auto;
            width: 1100px;
        }
        .border{
            width:1100px;
            margin: 100px auto;
            background-color: #e3f0fc;
            padding: 80px 30px;
        }
        
        .contact{
        	width:1000px;
            margin:0px auto;
            background-color: white;
            border-top:3px solid black;
        }
        .contact input:not([type=submit],[type=radio]){
            width: 600px;
            height:50px;
            border:1px solid white;
        }
        .contact label{
            width: 170px;
            height: 72px;
            float: left;
            background-color: gray;
            line-height:70px;
            text-align:center;
        }
        .contents{
            margin:10px;
        }
        .contact li{
            list-style-type: none;
        }
        .submitbtn input,.submitbtn button, .confirmbtn{
            width: 100px;
            height: 40px;
            background-color:#0036ce;
            color:white;
        	font-size:16px;
        	border:1px solid white;
        	border-radius:3px;
            margin :-30px 10px;
        }
        .submitbtn input,.submitbtn button{
        	width: 120px;
            height: 50px;
            background-color:#0036ce;
            color:white;
        	font-size:16px;
        	border:1px solid white;
        	border-radius:3px;
        }
        .submitbtn button{
        	background-color:#ebebeb; 
        	color:black; 
        }
        .submitbtn input:hover,.submitbtn button:hover{
            background-color: black;
            color:white;
            border:1px solid gray;
        }
        
        .submitbtn{
            text-align: center;
        }
        
        
        
    </style>
</head>
<body>

    
        <jsp:include page="../header/header.jsp" />
    
    <main>
        <div class="main">
            <h1 style="text-align: center; margin-bottom:50px;"> 회원가입</h1>
            <h2 style="text-align: center; margin:50px 0px;"> K-MOOC에 오신것을 환영합니다.</h2>
                <form action="join_ok.do" id="frm">
                    <div class="border">
                        <p style="width:1000px; display:block; margin:0px auto; font-size:20px;">기본 정보</p>
                        <fieldset class="contact">
                            <ul>
                                <li>
                                    <label for="name">아이디</label>
                                    <input type="text" id ="name" name="name" maxlength="20" class="contents"  placeholder="아이디 입력" autofocus required/>
                                    <button type="button" id="idconfirm" class="confirmbtn">중복 확인</button>
                                    <p id ="iderr"></p>
                                </li>
                                <hr>
                                <li>
                                    <label for="password" >비밀번호</label>
                                    <input type="password" id ="password" name="password" maxlength="30" class="contents"  placeholder="비밀번호 입력" required>
                                    <p id ="pwderr"></p>
                                </li>
                                <li>
                                    <label for="password" >비밀번호 확인</label>
                                    <input type="password" id ="password2" name="password2" maxlength="30" class="contents"  placeholder="비밀번호 다시 입력" required>
                                    <p id ="pwdequal"></p>
                                </li>
                                <hr>
                                <li>
                                    <label for="birth" >생년월일</label>
                                    <input type="date" id ="birth" name="birth" class="contents" placeholder="Email Address" required>
                                </li>
                                <hr>
                                <li>
                                    <label for="tel" >전화번호</label>
                                    <input type="tel" id ="phone" name="phone" maxlength="11" class="contents"  placeholder="전화번호 입력" required>
                                    <p id ="phoneerr"></p>
                                </li>
                                <hr>
                                <li>
                                    <label for="email" >이메일</label>
                                    <input type="email" id ="email" name="email" maxlength="30" class="contents" placeholder="Email Address" required>
                                    <button type="button" id="emailconfirm" class="confirmbtn">중복 확인</button>
                                    <p id ="emailerr"></p>
                                </li>
                                <hr>
                                <li>
                                    <label for="">회원 구분</label>
                                    <div>
                                        <table style="width:800px; height: 72px; text-align: center;">
                                            <tr>
                                                <td><input type="radio" name="memtype" id="memtype1" value="학생" style="margin:10px;" checked>학생</td>
                                                <td><input type="radio" name="memtype" id="memtype2" value="강사" style="margin:10px;" >강사</td>
                                            </tr>
                                        </table>
                                    </div>
                                </li>
                                <div class="companyarea">
                                <hr>
                                <li>
                                    <label for="compnum" >사업자등록번호</label>
                                    <input type="text" id ="compnum" name="compnum" maxlength="20" class="contents" placeholder="사업자 등록번호"/>
                                    <button type="button" id="compnumconfirm" class="confirmbtn">중복 확인</button>
                                </li>
                                <li>
                                    <label for="compname" >기관명</label>
                                    <input type="text" id ="compname" name="compname" maxlength="20" class="contents"  placeholder="기관명 이름"/>
                                </li>
                                
                                <hr>
                                </div>
                            </ul>
                        </fieldset>
                    </div>
                    <div class="submitbtn">
                        <button onclick="window.location.href='login.jsp'">취소</button>
                        <input type="submit" value="다음">
                    </div>
                </form>
        </div>
    </main>
    <jsp:include page="/footer/footer.jsp"></jsp:include>
    <script>
    	
	    /////////////////에러메시지 영역//////////////////////
    	let iderr = document.querySelector("#iderr");
	    let pwderr = document.querySelector('#pwderr');
	    let pwderr2 = document.querySelector("#pwdequal");
	    let emailerr = document.querySelector('#emailerr');
	    
	    /////////////////INPUT태그 영역///////////////////
	    let id = document.querySelector('#name');
	    let pwd = document.querySelector('#password');
	    let pwd2 = document.querySelector('#password2');
	    let email = document.querySelector('#email');
	    let birth = document.querySelector("#birth");
	    let now = new Date();
	    
	    //////////////////////////////////////////////////
	    let birth1 = new Date(parseInt(birth.value.substring(0,4))
				,parseInt(birth.value.substring(5,7))-1
				,parseInt(birth.value.substring(8,10)));
	    
	    let submit = document.querySelector(".submitbtn");
	
		
	    ///////////////중복확인 버튼////////////////////////////
	    let idconfirmbtn = document.querySelector("#idconfirm");
	    let emailconfirmbtn = document.querySelector("#emailconfirm");
	    
	    ///////////////양식확인////////////////////////////
	    let idconfirm = false;
	    let emailconfirm = false;
	    let pwdconfirm = false;
	    let pwdequal = false;
    
    	///// 강사,학생 선택 영역
    	let a = document.querySelector("#memtype1");
    	let b = document.querySelector("#memtype2");
    	
    	///강사 가입 영역
    	let c = document.querySelector(".companyarea");
    	let compnum = document.querySelector("#compnum");
    	let compname = document.querySelector("#compname");
    	
    	let required = document.createAttribute("required");
    	required.value = false;
    	c.style.display="none";
    	
    	a.addEventListener('click', ()=>{
    		c.style.display="none";
    		compnum.required =false;
    		compname.required =false;
    	});
    	
    	b.addEventListener('click', ()=>{
    		c.style.display="block";
    		compnum.required =true;
    		compname.required =true;
    	});
    	
    	
    	///////////////중복 및 확인//////////////////////
    	submit.addEventListener('click',() =>{
    		event.preventDefault();
            if(idconfirm == false){
                alert("아이디 중복확인");
            	return false;
            }
            else if(emailconfirm == false){
                alert("이메일 중복확인");
            	return false;
            }
            else if(pwdequal == false){
                alert("비밀번호가 일치하지 않습니다.");
            	return false;
            }
            else if(pwdconfirm == false){
                alert("빨간 글씨가 안보이니?");
            	return false;
            }
            else if(now < birth1){
				alert("날짜 다시입력");
				return false;
			}
            submit.disabeld = true;
            document.querySelector("#frm").submit();
            
        });
    	
		///////////////////////////////////KEY PRESS///////////////////////////////

    	id.addEventListener('keypress' ,()=>{
            idconfirm = false;
            if(id.value.match(/[A-Za-z]/g)== null
    				||id.value.charAt(0).match(/[A-Za-z]/g) == null 
    				||id.value.match(/[0-9]/g)== null
    				||id.value.trim().length<8 ||id.value.trim().length >20 ||id.value == null){
                iderr.innerHTML = "<strong>&nbsp;&nbsp;&nbsp;영어를 시작으로8글자~20글자이내로 작성해주세요</strong>"
                iderr.style.color = "red";
                idconfirmbtn.disabled = true;
            }
            else{
                iderr.innerHTML = "<strong>&nbsp;&nbsp;&nbsp;올바른 아이디 형식입니다.</strong>";
                iderr.style.color = "green";
                idconfirmbtn.disabled = false;
            }
        });
        email.addEventListener('keypress' ,()=>{
            emailconfirm = false;
            if(!email.value.includes("@") || !email.value.includes(".")){
                emailerr.innerHTML ="<strong>&nbsp;&nbsp;&nbsp; @나 .을 포함해서 작성하세요."
                emailerr.style.color = "red";
                emailconfirmbtn.disabled = true;
            }
            else if(email.value.includes("@") && email.value.includes(".")){
            	emailerr.innerHTML ="올바른 이메일 형식입니다."
                emailerr.style.color = "green";
                emailconfirmbtn.disabled = false;
            }
            
        });
        pwd.addEventListener('keypress', () =>{
            if(pwd.value.match(/[a-zA-Z]/g) == null 
					|| pwd.value.match(/[0-9]/g) == null 
					|| pwd.value.match(/[\W_]/g) == null 
					|| pwd.value.length<4 ||pwd.value.length >20){
                pwderr.innerHTML = "<strong>&nbsp;&nbsp;&nbsp;4글자~20글자이내 영어/숫자/특수문자를 최소 하나씩넣어서 작성해주세요</strong>"                
                pwderr.style.color = "red";
                pwdconfirm = false;
            }
            else{
                pwderr.innerHTML = "<strong>&nbsp;&nbsp;&nbsp;올바른 비밀번호입니다.";
                pwderr.style.color = "green";
                pwdconfirm = true;
            }
        });
        
        pwd2.addEventListener('keypress', () =>{
        	if(pwd.value !== pwd2.value){
                pwderr2.innerHTML = "<strong>&nbsp;&nbsp;&nbsp;비밀번호가 일치하지 않습니다.</strong>"                
                pwderr2.style.color = "red";
                pwdequal = false;
            }
            else{
            	pwderr2.innerHTML = "<strong>&nbsp;&nbsp;&nbsp;비밀번호가 일치합니다.</strong>";
                pwderr2.style.color = "green";
                pwdequal = true;
            }
        });

        ///////////////////////////////////KEY UP///////////////////////////////
        id.addEventListener('keyup' ,()=>{
            idconfirm = false;
            if(id.value.match(/[A-Za-z]/g)== null
    				||id.value.charAt(0).match(/[A-Za-z]/g) == null 
    				||id.value.match(/[0-9]/g)== null
    				||id.value.trim().length<8 ||id.value.trim().length >20 ||id.value == null){
                iderr.innerHTML = "<strong>&nbsp;&nbsp;&nbsp;영어를 시작으로8글자~20글자이내로 작성해주세요</strong>"
                iderr.style.color = "red";
                idconfirmbtn.disabled = true;
            }
            else{
            	iderr.innerHTML = "<strong>&nbsp;&nbsp;&nbsp;올바른 아이디 형식입니다.</strong>";
                iderr.style.color = "green";
                idconfirmbtn.disabled = false;
            }
        });
        email.addEventListener('keyup' ,()=>{
            emailconfirm = false;
            if(!email.value.includes("@") || !email.value.includes(".")){
                emailerr.innerHTML ="<strong>&nbsp;&nbsp;&nbsp; @나 .을 포함해서 작성하세요."
                emailerr.style.color = "red";
                emailconfirmbtn.disabled = true;
            }
            else if(email.value.includes("@") && email.value.includes(".")){
                emailerr.innerHTML ="올바른 이메일 형식입니다."
               	emailerr.style.color = "green";
                emailconfirmbtn.disabled = false;
            }
            
        });
        pwd.addEventListener('keyup', () =>{
            if(pwd.value.match(/[a-zA-Z]/g) == null 
					|| pwd.value.match(/[0-9]/g) == null 
					|| pwd.value.match(/[\W_]/g) == null 
					|| pwd.value.length<4 ||pwd.value.length >20){
                pwderr.innerHTML = "<strong>&nbsp;&nbsp;&nbsp;4글자~20글자이내 영어/숫자/특수문자를 최소 하나씩넣어서 작성해주세요</strong>"                
                pwderr.style.color = "red";
                pwdconfirm = false;
            }
            else{
            	pwderr.innerHTML = "<strong>&nbsp;&nbsp;&nbsp;올바른 비밀번호입니다.";
                pwderr.style.color = "green";
                pwdconfirm = true;
            }
        });
        pwd2.addEventListener('keyup', () =>{
            if(pwd.value !== pwd2.value){
                pwderr2.innerHTML = "<strong>&nbsp;&nbsp;&nbsp;비밀번호가 일치하지 않습니다.</strong>"                
                pwderr2.style.color = "red";
                pwdequal = false;
            }
            else{
                pwderr2.innerHTML = "<strong>&nbsp;&nbsp;&nbsp;비밀번호가 일치합니다.</strong>";
                pwderr2.style.color = "green";
                pwdequal = true;
            }
        });
       	
        idconfirmbtn.addEventListener('click',()=>{
        	
        	for(let i=0; i<${list.size()}; i++){
        		console.log("${list.get(i).getMember_user_id()}");
            	if(id.value === "${list.get(i).getMember_user_id()}"){
            		
            	}
            	else{
            		idconfirm =true;
            	} 
            }
        });
        emailconfirmbtn.addEventListener('click',()=>{
            if(email.value !== "email" && email.value != ""){
                alert("사용할 수 있는 이메일입니다.");
                emailconfirm = true;
            }
            else{
                alert("사용할 수 없는 이메일입니다.");
                emailconfirm = false;
            }
        });


    </script>
</body>
</html>