<%--    
    Document   : ComplaintUser
    Created on : 13 Jan, 2024, 11:19:14 AM
    Author     : DOYAL ELDHO
--%>
<jsp:useBean class="DB.ConnectionClass" id="comp"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint</title>
    </head>
    <body>
        <%
            if (request.getParameter("txt_save") != null) {
                String insqry = "insert into tbl_complaint(complaint_date,complaint_title,complaint_content,student_id)values(curdate(),'" + request.getParameter("txt_subject") + "','" + request.getParameter("txt_complaint") + "','" + session.getAttribute("sid") + "')";
                if (comp.executeCommand(insqry)) {
        %>
        <script>
            alert("Sended");
            window.location = 'Complaint.jsp';
        </script>
        <%
                }
            }

        %>
        <form method="post" action="">
            <table border="2"  align="center">
                <tr>
                    <td>Subject</td>
                    <td><input type="text" name="txt_subject" required autocomplete="off"></td>
                </tr>
                <tr>
                    <td>Complaint</td>
                    <td><textarea name="txt_complaint"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="txt_save" value="send">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
<%@include file="Foot.jsp" %>