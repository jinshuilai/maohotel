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
	添加用户
</div>
<div style="width:50%">
<form class="layui-form" action="" >
  <div class="layui-form-item">
    <label class="layui-form-label">登录名</label>
    <div class="layui-input-block">
      <input type="text" name="name" value="${user.name }" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
    	<input type="hidden" name="id" value="${user.id }"> 
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">登录密码</label>
    <div class="layui-input-inline">
      <input type="password" name="password" value="${user.password }" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input" >
    </div>
    <div class="layui-form-mid layui-word-aux">请填写6到18位密码</div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">校验密码</label>
    <div class="layui-input-inline">
      <input type="password" name="password2" required lay-verify="required" placeholder="再输入一次密码" autocomplete="off" class="layui-input" >
    </div>
    <div class="layui-form-mid layui-word-aux">请填写6到18位密码</div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">昵称</label>
    <div class="layui-input-block">
      <input type="text" name="nickName" value="${user.nickName }" required  lay-verify="required" placeholder="请输入昵称" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">启用</label>
    <div class="layui-input-block">
      <input type="checkbox" name="disabledd" lay-skin="switch">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">性别</label>
    <div class="layui-input-block">
      <input type="radio" name="sex" value="男" title="男">
      <input type="radio" name="sex" value="女" title="女" checked>
    </div>
  </div>
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">备注</label>
    <div class="layui-input-block">
      <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>
</div>
</body>
<script src="${path }/common/lib/jquery-1.9.0.min.js"></script>
<script src="${path }/common/layui/lay/dest/layui.all.js"></script>  
<script>
;!function(){
  //当使用了 layui.all.js，无需再执行layui.use()方法
  var form = layui.form()
  ,layer = layui.layer;
  
//监听提交
  form.on('submit(formDemo)', function(data){
    var user = JSON.stringify(data.field);
    $.ajax({
    	type : "POST",
    	url : "/user/save",
    	data : user,
    	dataType:'json',
        contentType:'application/json; charset=utf-8',
    	async : false,
    	success : function(result){
    		if(result == "ok"){
    			layer.msg("save success");
    			setTimeout(goback,2000); 
    		}else{
    			layer.msg("save error");
    		}
    	}
    	
    });
    return false;
  });
}();

function goback(){
	window.location.href = "/user/list";
}
</script> 
</html>