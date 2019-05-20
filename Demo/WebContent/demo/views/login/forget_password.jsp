<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<div>
   <h1>Quên mật khẩu</h1>
   <form method="post" action="${pageContext.request.contextPath}/forget">
       <label for="userName">User Name: </label>
       <input type="text" id="userName" name="userName" value="" maxlength="8" required/> <br />
       
       <input type="submit" name="subforget" value="Gửi"/>
       <a href="${pageContext.request.contextPath}/demo/views/login/loginInfo.jsp">Cancel</a>
   </form>
   
   
   <p>${note2}</p>
</div>
</body>
</html>