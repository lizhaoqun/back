<%--
  Created by IntelliJ IDEA.
  User: 86178
  Date: 2019/3/23
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/pages/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>首页</title>
    <link rel="stylesheet" href="${basePath}/css/pintuer.css">
    <link rel="stylesheet" href="${basePath}/css/admin.css">
    <script src="${basePath}/js/jquery.js"></script>
    <script src="${basePath}/js/pintuer.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
</head>
<body>
<form method="post" action="" id="listform">
    <div id="app" class="panel admin-panel">
        <a class="button border-main icon-plus-square-o" href="goAdd"> 添加内容</a>
        <table class="table table-hover text-center">
            <thead>
                <tr>
                    <th  style="text-align:left; padding-left:20px;">ID</th>
                    <th >登录号</th>
                    <th>昵称</th>
                    <th>电话</th>
                    <th>密码</th>
                    <th>性别</th>
                    <th >生日</th>
                    <th>邮箱</th>
                    <th>地址</th>
                    <th>是否有效</th>

                </tr>
            </thead>
            <%--<volist name="list" id="vo">
                <c:forEach var="user" items="${list}">
                    <tr>
                        <td style="text-align:left; padding-left:20px;">${user.id}</td>
                        <td>${user.loginId}</td>
                        <td width="10%">${user.name}</td>
                        <td>${user.phone}</td>
                        <td>${user.password}</td>
                        <td>
                            <c:if test="${user.sex==1}">男</c:if>
                            <c:if test="${user.sex==0}">女</c:if>
                        </td>
                        <td>
                            <fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"></fmt:formatDate>
                        </td>
                        <td>${user.email}</td>
                        <td>${user.address}</td>
                        <td>
                            <c:if test="${user.isDel==1}">有效</c:if>
                            <c:if test="${user.isDel==0}">无效</c:if>
                        </td>
                        <td>
                            <div class="button-group">
                                <a class="button border-main" href="goUpdate?id=${user.id}"><span class="icon-edit"></span> 修改</a>
                                <c:if test="${user.isDel==1}">
                                    <a class="button border-red" href="javascript:void(0)" onclick="del(${user.id},1)"><span class="icon-trash-o"></span>删除</a>
                                </c:if>
                                <c:if test="${user.isDel==0}">
                                    <a class="button border-red" href="javascript:void(0)" onclick="del(${user.id},0)"><span class="icon-trash-o"></span>恢复</a>
                                </c:if>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
--%>
            <tbody>
                <tr v-for="user in list">
                    <td>{{user.id}}</td>
                    <td>{{user.loginId}}</td>
                    <td>{{user.name}}</td>
                    <td>{{user.phone}}</td>
                    <td>{{user.password}}</td>
                    <td>
                        <template v-if="user.sex==1">男</template>
                        <template v-else>女</template>
                    </td>
                    <td>{{user.birthday}}</td>
                    <td>{{user.email}}</td>
                    <td>{{user.address}}</td>
                    <td>
                        <template v-if="user.isDel==1">有效</template>
                        <template v-else>无效</template>
                    </td>
                </tr>
            </tbody>
        </table>
        <div class="pagelist">
            <a href="javascript:void(0)">上一页</a>
            <span class="current">1</span>
            <a href="javascript:void(0)">2</a>
            <a href="javascript:void(0)">3</a>
            <a href="javascript:void(0)">下一页</a>
            <a href="javascript:void(0)">尾页</a>
        </div>
    </div>
</form>
    <script>
        new Vue({
            el:"#app",
            data(){
                return{
                    list:[],
                    pageNo:1
                }
            },
            created(){
               let vue=this;
                $.ajax({
                   url:"${basePath}/user/getList",
                   dataType:"json",
                   data:{pageNo:vue.pageNo},
                   success:function (result) {
                       vue.list=result;
                   }
               });
            }
        });
    </script>
</body>
</html>
