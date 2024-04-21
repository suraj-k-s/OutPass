
<jsp:useBean class="DB.ConnectionClass" id="mp"></jsp:useBean>
<%@page import ="java.sql.ResultSet"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <%@include file="Head.jsp" %>
    <body>
       <iframe style="border: none; border-radius: 15px; width: 100%; height: 653px ;" src = "Property.jsp" ></iframe>
    </body>
    <%@include file="Foot.jsp" %>

</html>
      