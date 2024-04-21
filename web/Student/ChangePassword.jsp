
<jsp:useBean class="DB.ConnectionClass" id="cp"></jsp:useBean>
<%@page import ="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    </head>
    <body>
        <%
            if(request.getParameter("txt_update")!=null){
              String pass=request.getParameter("txt_password");
              String Npass=request.getParameter("txt_newpassword");
              String Cpass=request.getParameter("txt_confirmpassword");
              String selUser="select * from tbl_student where student_password='"+pass+"' and student_id='"+session.getAttribute("sid")+"' ";
              ResultSet u1=cp.selectCommand(selUser);
              if(u1.next()){
                  if(Cpass.equals(Npass)){
                      String upd="Update tbl_student set student_password='"+Cpass+"' where student_id='"+session.getAttribute("sid")+"' ";
                  if(cp.executeCommand(upd)){
                              %>
                       <script>
                          alert("Password Updated");
                          window.location="ChangePassword.jsp";
                          </script>
                      <%
                  }
                 
              }
                   else{
                      %>
                      <script>
                          alert("Password doesnt match");
                          window.location="ChangePassword.jsp";
                          </script>
                      <%
                  }
              }
              else{
                  %>
                   <script>
                          alert("Invalid Password");
                          window.location="ChangePassword.jsp";
                          </script>
                                  <%
              }
            }
            %>
        <form method="post" action="">
            <table border="2">
                <tr>
                    <td>Current Password</td>
                    <td><input type="password" name="txt_password" required autocomplete="off"></td>
                </tr>
                <tr>
                    <td>New Password</td>
                    <td><input type="password" name="txt_newpassword" required autocomplete="off"></td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td><input type="password" name="txt_confirmpassword" required autocomplete="off"></td>
                </tr>
                  <tr>
                    <td colspan="2" align="center"><input type="submit" name="txt_update" value="Update"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
   <%@include file="Foot.jsp" %>