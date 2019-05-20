<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script>
     function validateForm(){
	 
        var len = document.getElementById('password').value.length;
	 
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

<div id="deal" style="background: #E0E0E0; float: left;" >
     
    	<form method = "POST" action="${pageContext.request.contextPath}/ad/insertEmployee" onsubmit="return validateForm()">
    	   <fieldset>
              <legend>Thêm nhân viên</legend>   	        
    	        <label for="msnv">MSNV: </label>
    	        <input type="text" name = "msnv" id="msnv" value="" maxlength="8" required/> 
    	        
    	        <label for="password">Password: </label>
    	        <input type="password" name="password"  id="password" value="" maxlength="8" required/> <br />
    	        
    	        <label for="employees">Tên thành viên: </label>
    	        <input type="text" name="employees"  id="employees" value="" maxlength="30" required/> 
    	        
    	        <label for="email">Email: </label>
    	        <input type="email" name="email"  id="email" value="" maxlength="30" required/>
    	        
    	        <br />
    	        
    	        Chức vụ:
    	        <select name="office">
    	        
    	           <option value = "employee" selected>employee</option>
    	           
    	           <option value = "admin" >admin</option>
    	        
    	        </select>
    	        
    	        <label for="salary">Lương: </label>
    	        <input type="number" name="salary" id="salary" min="4000000" value="" required/>
    	        
    	       
    	        	         
    	        <input type="submit" id="spend" name="spend" value="lưu" />
    	           	        
       	        <input type="submit" id="delete" name="delete" value="Xóa" form="formchi"/>
    	      
    	      </fieldset>
    	    </form>
    	 
    	    <p id="notice">${swear}</p>
   
</div  >

</body>
</html>