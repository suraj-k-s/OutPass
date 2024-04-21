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
        <title>Guard</title>

        <%@include file="Header.jsp" %>
    </head>

    <%
        if (request.getParameter("btn_save") != null) {
            String insQry = "insert into tbl_guard(guard_name,guard_contact,guard_email,guard_address,guard_password,guard_doj,hostel_id,warden_id)"
                    + "values('" + request.getParameter("txt_name") + "','" + request.getParameter("txt_contact") + "','" + request.getParameter("txt_email") + "','" + request.getParameter("txt_address") + "','" + request.getParameter("txt_password") + "',curdate(),'" + request.getParameter("sel_hostel") + "','"+session.getAttribute("wid")+"')";
            con.executeCommand(insQry);
            response.sendRedirect("Guard.jsp");

        }
        if (request.getParameter("del") != null) {
            String delQry = "delete from tbl_guard where guard_id='" + request.getParameter("del") + "'";
            con.executeCommand(delQry);
            response.sendRedirect("Guard.jsp");
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
                                                    <h3 class="mb-0" >Table Guard</h3>
                                                </div>
                                            </div>
                                            <form>
                                                <div class="form-group">
                                                    <label for="sel_hostel">Select Hostel</label>
                                                    <select required="" class="form-control" name="sel_hostel" id="sel_hostel">
                                                        <option value="" >Select</option>
                                                        <%                                                            
                                                            String disQry = "select * from tbl_hostel";
                                                            ResultSet rs1 = con.selectCommand(disQry);
                                                            while (rs1.next()) {
                                                        %>
                                                        <option value="<%=rs1.getString("hostel_id")%>" ><%=rs1.getString("hostel_name")%></option>
                                                        <%
                                                            }

                                                        %>
                                                    </select>
                                                </div>
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
                                                <td align="center" scope="col">Hostel</td>
                                                <td align="center" scope="col">Action</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                                int i = 0;
                                                String selQry = "select * from tbl_guard p inner join tbl_hostel d on d.hostel_id=p.hostel_id";
                                                ResultSet rs = con.selectCommand(selQry);
                                                while (rs.next()) {

                                                    i++;
                                            %>
                                            <tr>    
                                                <td align="center"><%=i%></td>
                                                <td align="center"><%=rs.getString("guard_name")%></td>
                                                <td align="center"><%=rs.getString("hostel_name")%></td>
                                                <td align="center"> 
                                                    <a href="Guard.jsp?del=<%=rs.getString("guard_id")%>" class="status_btn">Delete</a> 
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
    </body>
    <%@include file="Footer.jsp" %>
</html>
