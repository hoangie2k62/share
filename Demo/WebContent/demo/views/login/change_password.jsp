<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
        function check(){
        	
        	var oldpass = document.getElementById('oldpass').value;
        	
        	var newpass1 = document.getElementById('newpass1').value;
        	
        	var newpass2 = document.getElementById('newpass2').value;
        	
        	var notice = document.getElementById('notice');
        	
        	if(oldpass.length < 4 || newpass1.length < 4 || newpass2.length < 4){
        		
        		notice.innerHTML = "mật khẩu phải từ 4 -8 kí tự";
        	    return false;
        	}
        	
        	if(newpass1 == newpass2) return true;
        		
        	notice.innerHTML = "mật khẩu mới không giống nhau";
        	return false;
        }
        
        function validateForm(){
        	
        	var retVal = confirm("Do you want to change your password?");
        	
        	if(retVal === true){
        		
        		return check();
        	}
        	
        	return false;
        }

</script>
</head>
<body>
     <h1>Đổi mật khẩu</h1>
     <div>
     
        <form method="post" action="${pageContext.request.contextPath}/changePassword" onsubmit="return validateForm()">
           
                <label for="msnv">User Name: </label>
                <input type="text" id="msnv" name="msnv" value="" maxlength="8" required/><br />
                
                <label for="oldpass">Mật khẩu cũ: </label>
                <input type="password" id="oldpass" name="oldpass" value=""  maxlength="8" required/> <br />
                
                <label for="newpass1">Mật khẩu mới: </label>
                <input type="password" id="newpass1" name="newpass1" value="" maxlength="8" required/> <br />
                
                <label for="newpass2">Xác nhận mật khẩu mới: </label>
                <input type="password" id="newpass2" name="newpass2" value="" maxlength="8" required/> <br />
                
                <input type="submit" name="change" value="Đổi"/>
                
                <a href="${pageContext.request.contextPath}/ad/quanlychi">Cancel</a>
        </form>
               <p id="notice"></p>
     </div>
</body>
</html>