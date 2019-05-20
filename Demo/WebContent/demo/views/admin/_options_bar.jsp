<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
   <div id="sodu">
       <p>Tổng chi: <b>${Sum.totalex} </b> </p>  
       <p>Tổng thu: <b>${Sum.totalre} </b> </p>  
       <p>Số dư hiện tại: <b>${Sum.currbalance} </b> </p>  
   </div>
   <hr />
   <div id="thanh_cong_cu" style="padding: 5px;">
      <a href="${pageContext.request.contextPath}/ad/quanlychi" >Quản lí chi</a> <br />
      <a href="${pageContext.request.contextPath}/ad/quanlythu">Quản lí thu</a> <br />
      <a href="${pageContext.request.contextPath}/ad/bent" >Xu hướng</a> <br />
      <a href="${pageContext.request.contextPath}/ad/plan" >Kế hoạch</a> <br />
      <a href="${pageContext.request.contextPath}/ad/manager">Quản lí hồ sơ</a>
   </div>
</body>
</html>