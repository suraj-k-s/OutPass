<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

<%
    if (request.getParameter("btn_login") != null) {
        String email = request.getParameter("txt_email");
        String password = request.getParameter("txt_password");

        String selAdmin = "select * from tbl_admin where admin_email='" + email + "' and admin_password='" + password + "'";
        ResultSet rsAdmin = con.selectCommand(selAdmin);

        String selwarden = "select * from tbl_warden where warden_email='" + email + "' and warden_password='" + password + "'";
        ResultSet rswarden = con.selectCommand(selwarden);

        String selGuard = "select * from tbl_guard where guard_email='" + email + "' and guard_password='" + password + "'";
        ResultSet rsGuard = con.selectCommand(selGuard);

        String selStudent = "select * from tbl_student where student_email='" + email + "' and student_password='" + password + "'";
        ResultSet rsStudent = con.selectCommand(selStudent);

        if (rsAdmin.next()) {
            session.setAttribute("aid", rsAdmin.getString("admin_id"));
            session.setAttribute("aname", rsAdmin.getString("admin_name"));
            response.sendRedirect("../Admin/HomePage.jsp");

        } else if (rswarden.next()) {
            session.setAttribute("wid", rswarden.getString("warden_id"));
            session.setAttribute("wname", rswarden.getString("warden_name"));
            response.sendRedirect("../Warden/HomePage.jsp");

        } else if (rsGuard.next()) {
            session.setAttribute("gid", rsGuard.getString("guard_id"));
            session.setAttribute("gname", rsGuard.getString("guard_name"));
            response.sendRedirect("../Guard/HomePage.jsp");

        } else if (rsStudent.next()) {
            session.setAttribute("sid", rsStudent.getString("student_id"));
            session.setAttribute("sname", rsStudent.getString("student_name"));
            response.sendRedirect("../Student/HomePage.jsp");

        } else {
%>
<script>
    alert("Invalid Credentials");
    window.location = "Login.jsp";
</script>
<%
        }
    }
%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" href="../Assets/Template/Login/assets/images/fav.png" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&display=swap" rel="stylesheet">
        <link rel="shortcut icon" href="../Assets/Template/Login/assets/images/fav.jpg">
        <link rel="stylesheet" href="../Assets/Template/Login/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="../Assets/Template/Login/assets/css/all.min.css">
        <link rel="stylesheet" href="../Assets/Template/Login/assets/css/animate.css">
        <link rel="stylesheet" href="../Assets/Template/Login/assets/plugins/slider/css/owl.carousel.min.css">
        <link rel="stylesheet" href="../Assets/Template/Login/assets/plugins/slider/css/owl.theme.default.css">
        <link rel="stylesheet" type="text/css" href="../Assets/Template/Login/assets/css/style.css" />
    </head>

    <body class="form-login-body"> 
        <div class="container-fluid">

            <div class="login-body container-fluid">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="login-text">
                                <h4>Login to OutPass</h4>
                                <form method="post">
                                    <input type="email" placeholder="Enter Email" name="txt_email" class="form-control ">

                                    <input type="password" placeholder="Enter Password" name="txt_password" class="form-control">

                                    <button type="submit" name="btn_login" class="btn btn-primary">Sign In</button>
                                    <p>Dont have an account <a href="../Guest/Student.jsp">Sign Up!</a></p>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="login-img">
                                <img src="../Assets/Template/Login/assets/images/IMG_9680.JPG" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

    <script src="../Assets/Template/Login/assets/js/jquery-3.2.1.min.js"></script>
    <script src="../Assets/Template/Login/assets/js/popper.min.js"></script>
    <script src="../Assets/Template/Login/assets/js/bootstrap.min.js"></script>
    <script src="../Assets/Template/Login/assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
    <script src="../Assets/Template/Login/assets/plugins/slider/js/owl.carousel.min.js"></script>
    <script src="../Assets/Template/Login/assets/js/script.js"></script>
</html>
