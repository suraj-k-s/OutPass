<%-- 
    Document   : AddNewProperty
    Created on : 26 Feb, 2024, 12:04:01 PM
    Author     : rinub
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new property</title>
    </head>
<%@include file="Head.jsp" %>
    <body>
        <form enctype="multipart/form-data" method="post" action="../Assets/ActionPages/RentUploadAction.jsp">
            <form method="POST">
                <table border="1">
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="txt_name"  autocomplete="off" required=""/></td>
                    </tr>
                    <tr>
                        <td>Image</td>
                        <td><input type="file" name="filephoto"  required=""/></td>

                    </tr>
                    <tr>
                        <td>Amount</td>
                        <td><input type="text" name="txt_amount" autocomplete="off" required=""/></td>
                    </tr>
                    <tr>
                        <td>Details</td>
                        <td><textarea name="txt_details"></textarea></td>   
                    </tr>
                    <tr>
                        <td>Rent Type</td>
                    <a href="AddNewProperty.jsp"></a>
                    <td>
                        <select name="sel_type" id="sel_type">
                            <option value="">---select---</option>
                            <%
                                String selQryr = "select * from tbl_renttype";
                                ResultSet rsr = con.selectCommand(selQryr);
                                while (rsr.next()) {
                            %>   
                            <option value="<%=rsr.getString("renttype_id")%>">
                                <%=rsr.getString("renttype_name")%>
                            </option> 
                            <%
                                }
                            %>
                        </select>
                    </td>
                    </tr>
                    <td>Country</td>
                    <td>
                        <select name="selcountry" id="selcountry" onchange="getState(this.value)">
                            <option value="">---select---</option>

                            <%
                                String selQry = "select * from tbl_country";
                                ResultSet rs = con.selectCommand(selQry);
                                while (rs.next()) {
                            %>   
                            <option value="<%=rs.getString("country_id")%>">
                                <%=rs.getString("country_name")%>
                            </option> 
                            <%
                                }
                            %>
                        </select>
                    </td>
                    </tr>
                    <tr>
                        <td>State</td>
                        <td>
                            <select name="selstate" id="selstate" onchange="getDistrict(this.value)">
                                <option value="">---select---</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>District</td>
                        <td>
                            <select name="#seldistrict" id="seldistrict" onchange="getPlace(this.value)">
                                <option value="">---select---</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Place</td>
                        <td>
                            <select name="selPlace" id="selplace">
                                <option value="">---select---</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2" align="center"><input type="submit" name="btn_save" value="submit"/></td>
                    </tr>

                </table>
            </form>
            <script src="../Assets/JQ/jquery.js"></script>
            <script>
                                function getState(cid)
                                {
                                    $.ajax({
                                        url: "../Assets/AjaxPages/AjaxState.jsp?cid=" + cid,
                                        success: function(result) {
                                            $("#selstate").html(result);

                                        }
                                    });
                                }
                                function getDistrict(sid)
                                {
                                    $.ajax({
                                        url: "../Assets/AjaxPages/AjaxDistrict.jsp?sid=" + sid,
                                        success: function(result) {
                                            $("#seldistrict").html(result);

                                        }
                                    });
                                }
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
    <%@include file="Foot.jsp" %>
</html>
