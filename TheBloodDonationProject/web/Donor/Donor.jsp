<%-- 
    Document   : Donor.jsp
    Created on : Mar 21, 2022, 12:43:00 AM
    Author     : lenovo
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//    if(request.getSession(false).getAttribute("type")!=null){
//    //     this is comment for security purpose
//    if(request.getSession(false).getAttribute("type").toString().equalsIgnoreCase("donor")){
//      }
//        else{
//        request.getRequestDispatcher("Login.html").forward(request, response);
//        }
//    }
//    else{
//    String redirectURL = "http://localhost:8080/TheBloodDonationProject/";
//        response.sendRedirect(redirectURL);
//
//    }
%>
<!DOCTYPE html>
<html>

    <head>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!--Import Css File-->
        <link rel="stylesheet" href="donor.css">
        <title>Donor Site</title>
    </head>


    <body class="grey lighten-3">
        <%!
            int id;
            String password, name, lastname, phno, email, weight, age, gender, bloodgroup, document, spno, address, pincode, dob;
            boolean status;

        %>
        <%
            
            System.out.println("this is donor");
            if (request.getSession(false).getAttribute("type").toString().compareToIgnoreCase("donor") == 0) {
                id = (int) request.getSession(false).getAttribute("id");

                Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/blooddonation?zeroDateTimeBehavior=CONVERT_TO_NULL";
                String sql = "SELECT `u_fname`, `u_lname`, `u_phno`, `u_email`,u_password FROM `user_master` WHERE u_id =" + id;
                String sql2 = "SELECT `d_weight`, `d_age`, `d_gender`, `d_bloodgroup`, `d_document`, `d_sphno`, `d_address`, `d_pincode`, `d_dob`, d_status FROM `donor_master` WHERE u_id = " + id;
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery(sql);
                rs.next();
                password = rs.getString("u_password");
                name = rs.getString(1);
                lastname = rs.getString(2);
                phno = rs.getString(3);
                email = rs.getString(4);
                rs = stmt.executeQuery(sql2);
                rs.next();
                weight = rs.getString(1);
                age = rs.getString(2);
                gender = rs.getString(3);
                bloodgroup = rs.getString(4);
                document = rs.getString(5);
                spno = rs.getString(6);
                address = rs.getString(7);
                pincode = rs.getString(8);
                dob = rs.getString(9);
                status = rs.getBoolean(10);
             

            } else {
                RequestDispatcher rd = request.getRequestDispatcher("Login.html");
                rd.forward(request, response);
    }
     %>

        <!--Header Section-->
        <div class="navbar-fixed">
            <nav class="red">
                <div class="container">
                    <div class="nav-wrapper">
                        <a href="#!" class="navlogo center-on-small-and-down  flow-text">The Blood Donation</a>
                        <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i
                                class="material-icons white-text">menu</i></a>
                        <ul class="right hide-on-med-and-down">
                            <li><a href="#home" onclick="home()">HOME</a></li>
                            <li><a href="#profile" onclick="camplocation()">CAMP LOCATION</a></li>
                            <li><a href="#updateProfile" onclick="updateprofile()">UPDATE PROFILE</a></li>
                            <li><a href="#updateStatus" onclick="updatestatus()">UPDATE STATUS</a></li>
                            <li><a href="../LogOut">LOGOUT</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <ul class="sidenav" id="mobile-demo">
            <li><a href="#home" onclick="home()">HOME</a></li>
            <li><a href="#camplocation" onclick="camplocation()">CAMP LOCATION</a></li>
            <li><a href="#updateProfile" onclick="updateprofile()">UPDATE PROFILE</a></li>
            <li><a href="#updateStatus" onclick="updatestatus()">UPDATE STATUS</a></li>
            <li><a href="#logout">LOGOUT</a></li>
        </ul>

        <!--Home section-->
        <section id="donorHomesection" class="section">
            <section class="section home-section">
                <div class="container">
                    <h4 class="sectionheading center red-text flow-text">
                        Give Blood
                    </h4>
                    <p class="sectioncontent  center flow-text">
                        Patient Need Your Help.
                    </p>
                </div>
            </section>

            <!--Requirement Section-->
            <section class="section requirement-section white">

                <div class="container">


                    <h4 class="sectionheading flow-text">
                        Requirements by blood donation type
                    </h4>
                    <p class="requirement-section-content">
                        These are some of the requirements donors must meet to be eligible to donate blood based on
                        their
                        donation type.
                    </p>
                    <h5 class="requirement-section-listHead">Blood Donation</h5>
                    <ul class="sectioncontent">
                        <li><i class="material-icons red-text">chevron_right</i>Donation frequency: Every 56 days*</li>
                        <li><i class="material-icons red-text">chevron_right</i>You must be in good health and feeling
                            well**</li>
                        <li><i class="material-icons red-text">chevron_right</i>You must be at least 18 years old</li>
                        <li><i class="material-icons red-text">chevron_right</i>You must weigh at least 110 lbs</li>

                    </ul>
                    <p class="sectioncontent #212121-text">
                        If you have any questions regarding your eligibility, please call us at (123) 456 7890
                    </p>
                </div>
            </section>

        </section>

        <!--Camplocation Section-->
        <section id="camplocation-section" class="section camplocation-section grey lighten-3">

        </section>

        <!--Update Info Section-->
        <section id="updateinfo-section" class="section updateinfo-section grey lighten-3 ">
            <div class="container">
                <div class="row">
                    <div class="col m10 offset-m1">
                        <div class="card updateinfo-card">
                            <div class="card-title">
                                <h5>Update Profile</h5>
                            </div>
                            <div class="card-content ">
                                <div class="form">
                                    <form action="updateinfo" method="post">
                                        <div class="row">
                                            <div class="col s12 m6">
                                                <div class="input-field col s12">
                                                    <input type="text" name="ufname" value="<%= name%>" required>
                                                    <label for="ufname">First Name</label>
                                                </div>
                                            </div>
                                            <div class="col s12 m6">
                                                <div class="input-field col s12">
                                                    <input type="text" name="ulname" value="<%=lastname%>" required>
                                                    <label for="ulname">Last Name</label>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col s12 m6">
                                                <div class="input-field col s12">
                                                    <input type="tel" name="uphno" maxlength="10" value="<%=phno%>" required>
                                                    <label for="uphno">Phone no</label>
                                                </div>
                                            </div>
                                            <div class="col s12 m6">
                                                <div class="input-field col s12">
                                                    <input type="tel" name="sphno" minlength="10" maxlength="10" value="<%=spno%>">
                                                    <label for="usphno">Secound Phone no</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col s12 m6">

                                                <div class="input-field col s12">
                                                    <input type="email" name="uemail" class="validate" value="<%=email%>" required>
                                                    <label for="uemail">E mail</label>
                                                </div>
                                            </div>
                                            <div class="col s12 m6">
                                                <div class="input-field col s12">
                                                    <input type="text" name="upwd" value="<%=password%>" required>
                                                    <label for="upwd">Password</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col s12 m6">
                                                <div class="input-field col s12">
                                                    <input type="text"  id="ubdate" value="<%=dob%>" required>
                                                    <label for="ubdate">Birthdate</label>
                                                </div>

                                            </div>
                                            <div class="col s12 m6">
                                                <div class="input-field col s12">
                                                    <input type="number" name="uage" value="<%=age%>" required>
                                                    <label for="uage">Age</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col s12 m6">
                                                <div class="input-field col s12">
                                                    <p>Gender</p>
                                                    <p>
                                                        <span>
                                                            <label>
                                                                <input class="with-gap" name="gender" type="radio" checked
                                                                       required />
                                                                <span>Male</span>
                                                            </label>
                                                        </span>
                                                        <span>
                                                            <label>
                                                                <input class="with-gap" name="gender" type="radio" value=""
                                                                       required />
                                                                <span>Female</span>
                                                            </label>
                                                        </span>
                                                        <span>
                                                            <label>
                                                                <input class="with-gap" name="gender" type="radio" value=""
                                                                       required />
                                                                <span>Other</span>
                                                            </label>
                                                        </span>

                                                    </p>

                                                </div>
                                            </div>
                                            <div class="col s12 m6">
                                                <div class="input-field col s12">
                                                    <input type="number" name="uweight" value="<%=weight%>" required>
                                                    <label for="uweight">Weight</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col s12 m6">
                                                <div class="input-field col s12">

                                                    <select >
                                                        <option value="A+" selected>A+</option>
                                                        <option value="A-" class="red-text">A-</option>
                                                        <option value="B+">B+</option>
                                                        <option value="B-">B-</option>
                                                        <option value="O+">O+</option>
                                                        <option value="O-">O-</option>
                                                        <option value="AB+">AB+</option>
                                                        <option value="AB-">AB-</option>

                                                    </select>
                                                    <label>Blood Group</label>



                                                </div>

                                            </div>
                                            <div class="col s12 m6">

                                                <div class="input-field col s12">

                                                    <div class="file-field input-field">
                                                        <div class="btn red ">
                                                            <span>File</span>
                                                            <input type="file">
                                                        </div>
                                                        <div class="file-path-wrapper">
                                                            <input name="filename" class="file-path validate" type="text" 
                                                                   placeholder="<%=document%> ">
                                                        </div>

                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="input-field col s12 ">
<!--                                                <textarea name="uaddress" id="textarea1"  class="materialize-textarea"
                                                          value=""></textarea></textarea>-->

<input type="text" value ="<%=address%>">
                                                <label for="uaddress">Address</label>
                                            </div>
                                        </div>

                                    </form>
                                </div>

                            </div>
                            <div class="card-action center">
                                <button class="btn waves-effect red" onclick="alert('Update Successfully')">Save Changes</button>
                            </div>
                        </div>
                    </div>
                    </section>


                    <!--Update Status Section-->
                    <section id="updatestatus-section" class="section updatestatus-section grey lighten-3">
                        <div class="container">
                            <div class="row">
                                <div class="col m8 s12 offset-m2">
                                    <div class="card updatestatus-card">
                                        <div class="card-title">
                                            <h5>Update Status</h5>
                                        </div>
                                        <div class="card-content">

                                            <div class="switch">
                                                <label>
                                                    <span class="switch-text">Not-avaliable</span>
                                                    <input type="checkbox">
                                                    <span class="lever"></span>
                                                    <span class="switch-text">Avaliable</span>
                                                </label>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Compiled and minified JavaScript -->
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
                    <script src="donor.js"></script>
                    </body>

                    </html>
