<%--
  Created by IntelliJ IDEA.
  User: quynh
  Date: 27/07/2022
  Time: 3:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Discount Calculator</title>
</head>
<body>
<form method="post" action="/display-discount">
    <label>Product Description</label><br/>
    <input type="text" name="description"><br/>
    <label>List Price</label><br/>
    <input type="number" name="price"><br/>
    <label>Discount Percent(%)</label><br/>
    <input type="number" name="discount"><br/>
    <input type="submit" id="submit" value="Calculate Discount">
</form>
</body>
</html>
