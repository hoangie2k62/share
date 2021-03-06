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
</script>
</head>
<body>
<div style="width:100%">
  <%@ include file="_header.jsp" %> 
   
  <div style="background-color:#aaa; height:613px;width:253px;float:left;">
      <%@ include file="_options_bar.jsp" %>
  </div>
  
  
  <div style="background-color:#eee; height:613px;width:700px;float:left;">
       <%@ include file="_bang_plan.jsp" %>
       
       <form id="formchi"  method="POST" action="${pageContext.request.contextPath}/ad/deletePlan" onsubmit="return getConfirmation()" > 
              <table id = "tbl_chi" border = "1">
     
                <tr> 
                   <th><input type="checkbox" name="allcheckbox" value="" onclick="chooseAll()" /> 
                       <input type="hidden" id="inter" name="inter" value="" />  
                  </th>
                  <th>Ngày chi</th>
                  <th>MSNV</th>
                  <th>Người chi</th>
                  <th>Danh mục</th>
                  <th>Mục đích</th>
                  <th>Số tiền</th>
              </tr>  
              
              <c:if test="${not empty departments}">      
              <c:forEach items="${departments}" var="dept">
              <tr>
                  <td><input type="checkbox" name="ingrebox" value="( date = '${dept.date }' and MSNV = ${dept.msnv} and category = '${dept.category}' and purpose = '${dept.purpose}' )"/> </td>
                  <td>${dept.date}</td>
                  <td>${dept.msnv}</td>
                  <td>${dept.empolyees}</td>
                  <td>${dept.category}</td>
                  <td>${dept.purpose}</td>
                  <td>${dept.price}</td>
             </tr> 
             </c:forEach>
             </c:if>
           </table>
    
       </form>
  </div>
  
  <div style="background-color:#aaa; height:613px;width:380px;float:right;">
      <%@ include file="_chart_spending.jsp"%>
  </div>
  
</div>
  
</body>
</html>