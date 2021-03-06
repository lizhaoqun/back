<%--
  Created by IntelliJ IDEA.
  User: 86178
  Date: 2019/3/23
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/pages/common/head.jsp"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>修改页面</title>
    <link rel="stylesheet" href="${basePath}/css/pintuer.css">
    <link rel="stylesheet" href="${basePath}/css/admin.css">
    <script src="${basePath}/js/jquery.js"></script>
    <script src="${basePath}/js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="body-content">
        <form method="post" class="form-x" action="doUpdate">
            <input type="hidden"  name="id" value="${user.id}">
            <div class="form-group">
                <div class="label">
                    <label>登录号：</label>
                </div>
                <div class="field">
                    <input maxlength="10" name="loginId" value="${user.loginId}"/>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>昵称：</label>
                </div>
                <div class="field">
                    <input maxlength="10" name="name" value="${user.name}"/>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>电话：</label>
                </div>
                <div class="field">
                    <input maxlength="11" name="phone" value="${user.phone}"/>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>密码：</label>
                </div>
                <div class="field">
                    <input maxlength="32" name="password" value="${user.password}"/>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>性别：</label>
                </div>
                <div class="field">
                    <label><input type="radio" name="sex" value="1" <c:if test="${user.sex==1}">checked="checked"</c:if>/>男</label>
                    <label><input type="radio" name="sex" value="0" <c:if test="${user.sex==0}">checked="checked"</c:if>/>女</label>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>生日：</label>
                </div>
                <div class="field">
                    <input type="date" name="birthday" value="<fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"></fmt:formatDate>"><br/>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>邮箱：</label>
                </div>
                <div class="field">
                    <input maxlength="50" name="email" value="${user.email}">
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>地址：</label>
                </div>
                <div class="field">
                    <input maxlength="100" name="address" value="${user.address}">
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
