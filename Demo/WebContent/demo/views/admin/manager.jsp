<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage ="error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">

    function deleteSpend(){
    	var checkbox = document.getElementsByName('ingrebox');
        var result = "";
        var mark = true;
        // Lặp qua từng checkbox để lấy giá trị
        for (var i = 0; i < checkbox.length; i++){
            if (checkbox[i].checked === true){
                 
            	if(!mark)
                	result +=  " or " + checkbox[i].value ;
                
            	if(mark){
                	
            		result +=  checkbox[i].value ;
                    mark = false;
                 }	
            }
        }
        
        var checklab01 = document.getElementsByName('inter');
        checklab01[0].value = result;
        return result;
    }
    
    function chooseAll(){
    	var checklab01 = document.getElementsByName('allcheckbox');
    	var checkbox = document.getElementsByName('ingrebox');
    	for(var i=0; i<checkbox.length; i++){
    		checkbox[i].checked = checklab01[0].checked;
    	}
    }
    
    function getConfirmation(){
    	var retVal = confirm("Do you want to continue?");
        if(retVal == true){
        	var check = deleteSpend();
        	if(check == "") return false;
        	return true
        	
        }
    	
        return false;
    }
    
   function clickImage(msnv){
	   
	   window.location = "${pageContext.request.contextPath}/ad/userInfo?msnv=" + msnv;
   } 
</script>
</head>
<body>
<div style="width:100%">
  <%@ include file="_header.jsp" %> 
   
  <div style="background-color:#aaa; height:613px;width:253px;float:left;">
      <%@ include file="_options_bar.jsp" %>
  </div>
  
  <%@ include file="_add_employee.jsp" %>
  
  
  <div style="background-color:#eee; height:613px;width:1080px;float:left;">
       
     <div style="float:left;">
           <form id="formchi"  method="POST" action="${pageContext.request.contextPath}/ad/deleteEmployee" onsubmit="return getConfirmation()" > 
     
                <input type="checkbox" name="allcheckbox" value="" onclick="chooseAll()" /> 
                <input type="hidden" id="inter" name="inter" value=""/>
  
           </form>
     </div>
       
              <table id = "tbl_chi">
         
              <% int i = 0; %>
              <c:if test="${not empty departments}">      
              <c:forEach items="${departments}" var="dept">
              <% if(i == 0) {%>
                 <tr>
              <% 
                
              } 
                  i++;
                  
              %>   
                  <td style="border-style:solid; border-width: 2px;">                    
                     <img src="${dept.imageData}" width="80px" height="80px" style=" margin: 1px 100px 2px 25px;" onclick="clickImage(${dept.msnv})"/>
                     <ul>
                        <li> <input type="checkbox" name="ingrebox" value="( msnv = '${dept.msnv}' )"/> </li>    
                        <li> ${dept.msnv} </li>
                        <li> ${dept.userName} </li> 
                        <li> ${dept.office} </li> 
                        <li> ${dept.email} </li> 
                        <li> ${dept.salary} </li>                 
                     </ul>
                  <td>
                  
              <%if(i == 4) { %>    
                 </tr> 
               <%
                  i = 0;              
                 } 
                 
               %>  
             </c:forEach>
             </c:if>
           </table>
    
  </div>
  
</div>
  
</body>
</html>