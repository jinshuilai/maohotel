<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath} "></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 
<link rel="stylesheet" href="${path }/common/layui/css/layui.css">
</head>
<body>
<div style="margin-top:10px">
</div>
<button class="layui-btn add">
  <i class="layui-icon">&#xe608;</i> 添加
</button>
<table class="layui-table" style="width:98%">
  <colgroup>
    <col width="150">
    <col width="200">
    <col>
  </colgroup>
  <thead>
    <tr>
      <th>序号</th>
      <th>操作</th>
      <th>用户编号</th>
      <th>用户名</th>
      <th>昵称</th>
      <th>锁定</th>
      <th>状态</th>
    </tr> 
  </thead>
  <tbody>
  <c:forEach items="${users }" var="user" varStatus="st">
	  <tr>
      <td style="width:7%;">${st.index + 1}</td>
      <td style="width:15%;"><div class="layui-btn-group" data-id="${user.id }">
		  <button class="layui-btn layui-btn-primary layui-btn-small edit">
		    <i class="layui-icon">&#xe642;</i>
		  </button>
		  <button class="layui-btn layui-btn-primary layui-btn-small delete">
		    <i class="layui-icon">&#xe640;</i>
		  </button>
		  <button class="layui-btn layui-btn-primary layui-btn-small show">
		    <i class="layui-icon">&#xe615;</i>
		  </button>
		</div></td>
      <td>${user.number }</td>
      <td>${user.name }</td>
      <td>${user.nickName }</td>
      <td>null</td>
      <td>${user.disable }</td>
    </tr>
  </c:forEach>
    
    
  </tbody>
</table>
</body>
<script src="${path }/common/lib/jquery-1.9.0.min.js"></script>
<script src="${path }/common/layui/lay/dest/layui.all.js"></script>  
<script>
;!function(){
  //当使用了 layui.all.js，无需再执行layui.use()方法
  var from = layui.form()
  ,layer = layui.layer;
  
  //…
}();

$(".add").click(function(){
	window.location.href = "/user/add";
});
$(".edit").click(function(){
	var id = $(this).parent().data("id");
	window.location.href = "/user/edit?id=" + id;
});
$(".delete").click(function(){
	if(confirm("确定要删除该记录？")){
		var id = $(this).parent().data("id");
		window.location.href = "/user/delete?id=" + id;
	}
});
</script> 
</html>