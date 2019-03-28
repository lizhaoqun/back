<%--
  Created by IntelliJ IDEA.
  User: 86178
  Date: 2019/3/23
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/pages/common/head.jsp"%>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>登录</title>
    <link rel="stylesheet" href="${basePath}/css/pintuer.css">
    <link rel="stylesheet" href="${basePath}/css/admin.css">
    <script src="${basePath}/js/jquery.js"></script>
    <script src="${basePath}/js/pintuer.js"></script>
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">
            </div>
            <form  method="post">
                <div class="panel loginbox">
                    <div class="text-center margin-big padding-big-top"><h1>用户管理中心</h1></div>
                    <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input id="loginId" type="text" class="input input-big" name="loginId" placeholder="登录账号" data-validate="required:请填写账号" />
                                <span class="icon icon-user margin-small"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input id="password" type="password" class="input input-big" name="password" placeholder="登录密码" data-validate="required:请填写密码" />
                                <span class="icon icon-key margin-small"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field">
                                <input type="text" id="code" class="input input-big" name="code" placeholder="填写右侧的验证码" data-validate="required:请填写右侧的验证码" />
                                <img id="img" src="${basePath}/user/img" alt="" width="100" height="32" class="passcode" style="height:43px;cursor:pointer;" >

                            </div>
                        </div>
                    </div>
                    <div style="padding:30px;">
                        <button id="btn" type="button" class="button button-block bg-main text-big input-big" >登录</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
    <script>
        $(function () {
            $("#btn").click( function(){
                $.ajax({
                    url:"${basePath}/user/doLogin",
                    type:"post",
                    dataType:"json",
                    data:{
                        loginId:$("#loginId").val(),
                        password:$("#password").val(),
                        code:$("#code").val()
                    },
                    success:function (result) {
                        if(result.code==0)
                            alert(result.message);
                        else
                            window.location.href="${basePath}/user/index";

                    }
                });
            });
            $("#img").click(function () {
                let date=new Date();
                $("#img").attr("src","${basePath}/user/img?"+date.getTime());
            });
        });
    </script>
</body>
</html>