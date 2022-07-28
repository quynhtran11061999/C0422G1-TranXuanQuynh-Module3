<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: quynh
  Date: 28/07/2022
  Time: 9:17 AM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>

<%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search = request.getParameter("search");
    PrintWriter printWriter = response.getWriter();
    String result = dic.get(search);
    if (result != null) {
        printWriter.println("Word: " + search +"<br>");
        printWriter.println("Result: " + result);
    } else {
        printWriter.println("Not found");
    }
%>
</body>
</html>