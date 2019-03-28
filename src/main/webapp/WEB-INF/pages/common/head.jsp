<%--
  Created by IntelliJ IDEA.
  User: 86178
  Date: 2019/3/23
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
    <%
        String basePath=request.getScheme()+"://"+request.getServerName();
        if(request.getServerPort()!=80){
            basePath+=":"+request.getServerPort();
        }
        basePath+=request.getContextPath();
        pageContext.setAttribute("basePath",basePath);
    %>
</body>
</html>
