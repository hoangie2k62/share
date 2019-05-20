<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<script>
     function kiemtra(){
    	 var len = document.getElementById('pass').value.length;
    	 
    	 if(len >= 4){
    		 
    		 return true;
    		 
    	 }else{
    	    
    	     var notice = document.getElementById('notice');
    	     
    	     notice.innerHTML = "lưu ý: độ dài mật khẩu phải từ  4 - 8 kí tự";
    	    	 
    		 return false;
    	 }
    	 
     }
</script>
</head>
<body>
<div>
   <h1>Đăng nhập</h1>
   
   <form method="post" action="${pageContext.request.contextPath}/login" onsubmit="return kiemtra()">
       
       <label for="userName">User Name: </label>
       <input type="text" id="userName" name="userName" value="${user.msnv}" maxlength = "8" required/><br />
       
       <label for="password">Password: </label>
       
       <input type="password" id="pass" name="pass" value="${user.pass}" maxlength = "8" required/><br />
       
       <input type="checkbox" id="choose" name="choose" value="Yes" checked> Lưu mật khẩu 
       
       <br />
       
       <input type="submit" name="dangnhap" value="Đăng nhập"/>
    
   </form>
   
   <p id="notice">${note}</p>
    
   <a href="${pageContext.request.contextPath}/forget">Quên mật khẩu</a>
  
</div>
</body>
</html>