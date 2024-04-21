<%-- 
    Document   : Place
    Created on : May 5, 2021, 2:10:22 PM
    Author     : Pro-TECH
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Place</title>

        <%@include file="Header.jsp" %>
    </head>

    <%

        if (request.getParameter("del") != null) {
            String delQry = "delete from tbl_student where student_id='" + request.getParameter("del") + "'";
            con.executeCommand(delQry);
            response.sendRedirect("Student.jsp");
        }
    %>
    <body>
        <section class="main_content dashboard_part">
            <div class="main_content_iner ">
                <div class="container-fluid p-0">
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <div class="QA_section">
                                <div class="white_box_tittle list_header">
                                    <div class="col-lg-12">
                                        <div class="white_box mb_30">
                                            <div class="box_header ">
                                                <div class="main-title">
                                                    <h3 class="mb-0" >Table Student</h3>
                                                </div>
                                            </div>
                                            <form method="post" enctype="multipart/form-data" action="../Assets/ActionPages/StudentUploadAction.jsp">
                                                <div class="form-group">
                                                    <label>Name</label>
                                                    <input required="" type="text" class="form-control" id="txt_name" name="txt_name">
                                                </div>
                                                <div class="form-group">
                                                    <label>Contact</label>
                                                    <input required="" type="text" class="form-control" id="txt_contact" name="txt_contact">
                                                </div>
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input required="" type="text" class="form-control" id="txt_email" name="txt_email">
                                                </div>
                                                <div class="form-group">
                                                    <label>Address</label>
                                                    <input required="" type="text" class="form-control" id="txt_address" name="txt_address">
                                                </div>
                                                <div class="form-group">
                                                    <label>Password</label>
                                                    <input required="" type="text" class="form-control" id="txt_password" name="txt_password">
                                                </div>
                                                <div class="form-group">
                                                    <label>Photo</label>
                                                    <input required="" type="file" class="form-control" id="file_photo" name="file_photo">
                                                </div>
                                                <div class="form-group">
                                                    <label>Hostal</label>
                                                    <select name="selhostel" class="form-control" id="selhostel" >
                                                        <option value="">---select---</option>
                                                        <%
                                                            String selQry11 = "select * from tbl_hostel where warden_id='"+session.getAttribute("wid")+"'";
                                                            ResultSet rs11 = con.selectCommand(selQry11);
                                                            while (rs11.next()) {
                                                        %>   
                                                        <option value="<%=rs11.getString("hostel_id")%>">
                                                            <%=rs11.getString("hostel_name")%>
                                                        </option> 
                                                        <%
                                                            }
                                                        %>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label>District</label>
                                                    <select name="seldistrict" class="form-control" id="seldistrict" onchange="getPlace(this.value)">
                                                        <option value="">---select---</option>
                                                        <%
                                                            String selQry1 = "select * from tbl_district";
                                                            ResultSet rs1 = con.selectCommand(selQry1);
                                                            while (rs1.next()) {
                                                        %>   
                                                        <option value="<%=rs1.getString("district_id")%>">
                                                            <%=rs1.getString("district_name")%>
                                                        </option> 
                                                        <%
                                                            }
                                                        %>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label>Place</label>
                                                    <select name="selPlace" class="form-control" id="selplace">
                                                        <option value="">---select---</option>
                                                    </select>                                                </div>
                                                <div class="form-group" align="center">
                                                    <input type="submit" class="btn-dark" name="btn_save" style="width:100px; border-radius: 10px 5px " value="Save">
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="QA_table mb_30">
                                    <table class="table lms_table_active">
                                        <thead>
                                            <tr style="background-color: #74CBF9">
                                                <td align="center" scope="col">Sl.No</td>
                                                <td align="center" scope="col">Name</td>
                                                <td align="center" scope="col">Action</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                                int i = 0;
                                                String selQry = "select * from tbl_student s inner join tbl_hostel h on s.hostel_id=h.hostel_id where warden_id='"+session.getAttribute("wid")+"' ";
                                                ResultSet rs = con.selectCommand(selQry);
                                                while (rs.next()) {

                                                    i++;
                                            %>
                                            <tr>    
                                                <td align="center"><%=i%></td>
                                                <td align="center"><%=rs.getString("student_name")%></td>
                                                <td align="center"> 
                                                    <a href="Student.jsp?del=<%=rs.getString("student_id")%>" class="status_btn">Delete</a> 
                                                </td> 
                                            </tr>
                                            <%                      }


                                            %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script src="../Assets/JQ/jquery.js"></script>
        <script>

                                                        function getPlace(did)
                                                        {
                                                            $.ajax({
                                                                url: "../Assets/AjaxPages/AjaxPlace.jsp?did=" + did,
                                                                success: function(result) {
                                                                    $("#selplace").html(result);

                                                                }
                                                            });
                                                        }

        </script>
    </body>

    <%@include file="Footer.jsp" %>
</html>
