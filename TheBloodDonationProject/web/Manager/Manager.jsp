<%-- 
    Document   : Manager.jsp
    Created on : Mar 21, 2022, 12:43:28 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //     this is comment for security purpose
    if(request.getSession(false).getAttribute("type").toString().equalsIgnoreCase("manager")){
      }
        else{
        request.getRequestDispatcher("Login.html").forward(request, response);
        }
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
    <link rel="stylesheet" href="manager.css">
</head>

<body class="grey lighten-3">
    <!--Header Section-->

    <div class="navbar-fixed header-section">
        <nav class="red">
            <div class="container">
                <div class="nav-wrapper">
                    <div class="row">
                        <div class="col s12">
                            <a href="#" data-target="sidenav-1" class="left sidenav-trigger hide-on-medium-and-up"><i
                                    class="material-icons white-text">menu</i></a>
                            <a href="#" class="navlogo center flow-text">The Blood Donation</a>

                        </div>
                    </div>

                </div>
            </div>
        </nav>
    </div>
    <ul class="sidenav sidenav-fixed" id="sidenav-1">
        <li><a href="#home" onclick="home()">HOME</a></li>
        <li><a href="#updateProfile" onclick="adddonor()">ADD BLOOD DONOR</a></li>
        <li><a href="#updateStatus" onclick="addpackage()">ADD BLOOD PACKAGE</a></li>
        <li><a href="#updateStatus" onclick="updatestatus()">UPDATE DONOR'S STATUS</a></li>
        <li><a href="#profile" onclick="updatebloodgroup()">UPDATE BLOOD GROUP</a></li>
        <li><a href="#logout">LOGOUT</a></li>
    </ul>
    <!--Home section-->
    <section id="home" class="section home-section">
        <div class="container">
            <img class="responsive-img" src="homePage.jpg" alt="">
        </div>
    </section>

    <!--Add New Donor Section-->
    <section id="adddonor-section" class="section adddonor-section ">
        <div class="container">
            <div class="row">
                <div class="col m10 s12 offset-m1">
                    <div class="card adddonor-card">
                        <div class="card-title center">
                            <h5>Blood Donor</h5>
                        </div>
                        <div class="card-content ">
                            <div class="form">
                                <form action="adddonor" method="post">
                                    <div class="row">
                                        <div class="col s12 m6">
                                            <div class="input-field col s12">
                                                <input type="text" name="adfname">
                                                <label for="adfname">First Name</label>
                                            </div>
                                        </div>
                                        <div class="col s12 m6">
                                            <div class="input-field col  s12">
                                                <input type="text" name="adlname">
                                                <label for="adlname">Last Name</label>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 m6">
                                            <div class="input-field col s12">
                                                <input type="tel" name="adphno" maxlength="10">
                                                <label for="adphno">Phone no</label>
                                            </div>
                                        </div>
                                        <div class="col s12 m6">
                                            <div class="input-field col s12">
                                                <input type="tel" name="adsphno" minlength="10" maxlength="10">
                                                <label for="adsphno">Secound Phone no</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 m6">

                                            <div class="input-field col s12">
                                                <input type="email" name="admail" class="validate">
                                                <label for="ademail">E mail</label>
                                            </div>
                                        </div>
                                        <div class="col s12 m6">
                                            <div class="input-field col s12">
                                                <input type="password" name="adpwd">
                                                <label for="adpwd">Password</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 m6">
                                            <div class="input-field col s12">
                                                <input type="text" class="datepicker" id="adbdate">
                                                <label for="adbdate">Birthdate</label>
                                            </div>

                                        </div>
                                        <div class="col s12 m6">
                                            <div class="input-field col s12">
                                                <input type="number" name="adage">
                                                <label for="adage">Age</label>
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
                                                            <input class="with-gap" name="gender" type="radio" />
                                                            <span>Male</span>
                                                        </label>
                                                    </span>
                                                    <span>
                                                        <label>
                                                            <input class="with-gap" name="gender" type="radio" />
                                                            <span>Female</span>
                                                        </label>
                                                    </span>
                                                    <span>
                                                        <label>
                                                            <input class="with-gap" name="gender" type="radio" />
                                                            <span>Other</span>
                                                        </label>
                                                    </span>

                                                </p>
                                            </div>
                                        </div>
                                        <div class="col s12 m6">
                                            <div class="input-field col s12">
                                                <input type="number" name="aduweight">
                                                <label for="adweight">Weight</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12 m6">
                                            <div class="input-field col s12">

                                                <select>
                                                    <option value="A+" selected>A+</option>
                                                    <option value="A-">A-</option>
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
                                                        <input type="file" multiple>
                                                    </div>
                                                    <div class="file-path-wrapper">
                                                        <input name="filename" class="file-path validate" type="text"
                                                            placeholder="Upload Your Document ">
                                                    </div>

                                                </div>
                                            </div>

                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="input-field col s12 ">
                                            <textarea name="adaddress" id="textarea1"
                                                class="materialize-textarea"></textarea>
                                            <label for="adaddress">Address</label>
                                        </div>
                                    </div>

                                </form>
                            </div>

                        </div>
                        <div class="card-action center">
                            <button class="btn waves-effect red" name="adddonorbutton">ADD DONOR</button>
                        </div>
                    </div>
                </div>
    </section>

    <!--Add Blood Package-->
    <section id="addbloodpackage-section" class="addbloodpackage section">
        <div class="conatiner center">
            <div class="row">
                <div class="col m10 s12 offset-m1">
                    <div class="card updatebgroup-card">
                        <div class="card-title">
                            <h5>Add Blood Package</h5>
                        </div>
                        <div class="card-content center">
                            <div class="form">
                                <div class="row">
                                    <div class="col s12 m6">
                                        <div class="input-field col s12">
                                            <input name="dfname" type="text">
                                            <label for="dfname">First Name</label>
                                        </div>
                                    </div>

                                    <div class="col s12 m6">
                                        <div class="input-field col s12">
                                            <input name="dlname" type="text">
                                            <label for="dlname">Last Name</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col s12 m6">
                                        <div class="input-field col s12">
                                            <input name="dphno" type="text">
                                            <label for="dphno">Phone No</label>
                                        </div>
                                    </div>
                                    <div class="col s12 m6">
                                        <div class="input-field col s12">
                                            <input type="number" name="dage">
                                            <label for="dage">Age</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col s12 m6">
                                        <div class="input-field col s12">
                                            <select>
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
                                            <input type="text" class="datepicker" id="dbdate">
                                            <label for="dbdate">Collection Date</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s12 m6">
                                        <div class="input-field  s12">
                                            <input type="number" name="duweight">
                                            <label for="dweight">Weight </label>
                                        </div>
                                    </div>
                                    <div class="col s12 m6">
                                        <div class="input-field  s12">
                                            <input type="text" name="dname">
                                            <label for="dname">Doctor Name </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card-action center">
                            <button class="btn waves-effect red" name="addbloodpackagebutton">Add blood package</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!--Update Blood Group-->
    <section id="updatebloodgroup-section" class="updatebgroup section">
        <div class="conatiner center">
            <div class="row">
                <div class="col m5 s12 offset-m3">
                    <div class="card updatebgroup-card">
                        <div class="card-title">
                            <h5>Update Blood Group</h5>
                        </div>
                        <div class="card-content center">
                            <div class="form">
                                <div class="row">
                                    <div class="input-field col m12 s12 ">
                                        <input type="text" name="phoneno" pattern="[6-9]{1}[0-9]{9}" maxlength="10">
                                        <label for="phoneno">Phone Number</label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="input-field col s12">
                                        <select>
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
                            </div>
                        </div>
                        <div class="card-action center">
                            <button class="btn waves-effect red" name="updaetbloodgroupbtn">Update Blood group</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--Update Blood Status-->
    <section id="updatestatus-section" class="updatebgroup section">
        <div class="conatiner">
            <div class="row">
                <div class="col m5 s12 offset-m3">
                    <div class="card updatebgroup-card">
                        <div class="card-title center">
                            <h5>Update Donor's Status</h5>
                        </div>
                        <div class="card-content">
                            <form id="demoForm" method="post">
                                <div class="row ">
                                    <div class="input-field col s12 ">
                                        <input type="tel" name="phoneno" maxlength="10">
                                        <label for="phoneno">Phone
                                            Number</label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="input-field col s12">
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
                            </form>

                        </div>
                        <div class="card-action center">
                            <button class="btn waves-effect red" name="updatestatusbtn">Update Status</button>
                        </div>
                    </div>
                </div>
            </div>
    </section>



    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="manager.js"></script>
</body>

</html>