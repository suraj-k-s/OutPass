<%--    
    Document   : OutPassUser
    Created on : 13 Jan, 2024, 11:19:14 AM
    Author     : DOYAL ELDHO
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OutPass</title>
    </head>
    <body>
        <%
            if (request.getParameter("txt_save") != null) {
                String insqry = "insert into tbl_outpass(outpass_date,outpass_for_date,outpass_for_time,outpass_return_time,outpass_reason,student_id)values"
                        + "(curdate(),'" + request.getParameter("txt_date") + "','" + request.getParameter("txt_time") + "','" + request.getParameter("txt_rtime") + "','" + request.getParameter("txt_outpass") + "','" + session.getAttribute("sid") + "')";
                if (con.executeCommand(insqry)) {
        %>
        <script>
            alert("Sended");
            window.location = 'OutPass.jsp';
        </script>
        <%
                }
            }

        %>
        <form method="post" action="">
            <table border="2"  align="center">
                <tr>
                    <td>Date</td>
                    <td><input type="date" name="txt_date" required autocomplete="off"></td>
                </tr>
                <tr>
                    <td>Time</td>
                    <td><input type="time" name="txt_time" required autocomplete="off"></td>
                </tr>
                <tr>
                    <td>Return Time</td>
                    <td><input type="time" name="txt_rtime" required autocomplete="off"></td>
                </tr>
                <tr>
                    <td>Reason</td>
                    <td><textarea name="txt_outpass"></textarea></td>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="txt_save" value="send">
                    </td>
                </tr>
            </table>
        </form>
        <table>
            <tr>
                <th>Sl.No</th>
                <th>Date</th>
                <th>For Date</th>
                <th>Reason</th>
                <th>Time</th>
                <th>Return Time</th>
                <th>Action</th>
            </tr>
            <%                int i = 0;
                String selQry = "select * from tbl_outpass l inner join tbl_student s on s.student_id=l.student_id inner join tbl_hostel h on h.hostel_id=s.hostel_id where s.student_id='" + session.getAttribute("sid") + "'";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=rs.getString("outpass_date")%></td>
                <td><%=rs.getString("outpass_for_date")%></td>
                <td><%=rs.getString("outpass_reason")%></td>
                <td><%=rs.getString("outpass_for_time")%></td>
                <td><%=rs.getString("outpass_return_time")%></td>             
                <td><%

                    if (rs.getString("outpass_status").equals("0")) {
                    %>
                    Waiting For Warden Permission
                    <%
                    } else if (rs.getString("outpass_status").equals("1")) {
                    %>
                    Warden Accepted and Waiting For Guard Permission
                    <%
                    } else if (rs.getString("outpass_status").equals("2")) {
                    %>
                    OutPass Granted
                    <%
                    } else if (rs.getString("outpass_status").equals("3")) {
                    %>
                    OutPass Rejected
                    <%
                        }

                    %></td>
            </tr>
            <%                    }
            %>
        </table>
    </body>
</html>
<%@include file="Foot.jsp" %>