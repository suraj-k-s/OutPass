
<jsp:useBean class="DB.ConnectionClass" id="ep"></jsp:useBean>
<%@page import ="java.sql.ResultSet"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
    </head>
    <body>
        <%
            String selqry="select * from tbl_student where student_id='"+session.getAttribute("sid")+"' ";
            ResultSet s1=ep.selectCommand(selqry);
            s1.next();
            if(request.getParameter("txt_update")!=null){
                String up="Update tbl_student set student_name='"+request.getParameter("txt_name")+"',student_address='"+request.getParameter("txt_address")+"',"
                        + "student_contact='"+request.getParameter("txt_contact")+"',student_email='"+request.getParameter("txt_email")+"' where student_id='"+session.getAttribute("sid")+"' ";
              if(ep.executeCommand(up)){
                  %>
                  <script>
                      alert("Updated");
                      window.location="MyProfile.jsp";
                  </script>
                  <%
              }
            }
            
        
        %>
        <form method="post" action="">
            <table border="2"  align="center">
                
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="txt_name" value="<%=s1.getString("student_name") %>"></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="txt_address" value="<%=s1.getString("student_address")%>"></td>
                </tr>
                <tr>
                    <td>Contact</td>
                     <td><input type="text" name="txt_contact" value="<%=s1.getString("student_contact")%>"></td>
                </tr>
                 <tr>
                     <td>Email</td>
                     <td><input type="text" name="txt_email" value="<%=s1.getString("student_email")%>"></td>
                     
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="txt_update" value="Update"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
   <%@include file="Foot.jsp" %>