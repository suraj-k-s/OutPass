
<jsp:useBean class="DB.ConnectionClass" id="mp"></jsp:useBean>
<%@page import ="java.sql.ResultSet"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
    </head>
 
    <body>
        <%
            String selqry="select * from tbl_student where student_id='"+session.getAttribute("sid")+"' ";
            ResultSet s1=mp.selectCommand(selqry);
            s1.next();
          
            
            %>
            <h2>My Profile</h2>
            <table >
                <tr>
   
                 <td colspan="2" align="center"><img src="../Assets/Files/<%=s1.getString("student_photo")%>" width="150" height="150"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><%=s1.getString("student_name") %></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><%=s1.getString("student_address")%></td>
                </tr>
                <tr>
                    <td>Contact</td>
                     <td><%=s1.getString("student_contact")%></td>
                </tr>
                 <tr>
                     <td>Email</td>
                     <td><%=s1.getString("student_email")%></td>
                     
                </tr>
                <tr>
                    <td><a href="EditProfile.jsp" >Edit Profile</a></td>
                    <td><a href="ChangePassword.jsp" >Change Password</a></td>
                </tr>
            </table>
                
    </body>
    <%@include file="Foot.jsp" %>

</html>
      