<%-- 
    Document   : Admin.jsp
    Created on : Mar 21, 2022, 12:44:49 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //     this is comment for security purpose
    if(request.getSession(false).getAttribute("type").toString().equalsIgnoreCase("admin")){
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
    <link rel="stylesheet" href="admin.css">
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body class="grey lighten-3">
    <!--SIDE NAVBAR-->
    <div class="navbar-fixed header-section">
        <nav class="red">
            <div class="container">
                <div class="nav-wrapper">
                    <div class="row">
                        <div class="col s12">
                            <a href="#" data-target="sidenav-1" class="left sidenav-trigger hide-on-medid-and-up"><i
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
        <li><a href="#updateStatus" onclick="eligible()">ELIGIBLE DONOR</a></li>
        <li><a href="#updateStatus" onclick="report()">GENERATE REPORT</a></li>
        <li><a href="#updateStatus" onclick="manager()">MANAGE MANAGER</a></li>
        <li><a href="#updateStatus" onclick="blood()">MANAGE BLOOD DONOR</a></li>
        <li><a href="#camplocation" onclick="camplocation()">UPDATE CAMP LOCATION</a></li>
        <li><a href="#logout">LOGOUT</a></li>
    </ul>


    <!--Home Section-->
    <section id="home-section" class="section homesection">

        <div class="container center">
            <h3>
                Welcome Admin
            </h3>
        </div>

    </section>


    <!--Generate Report-->
    <section class="report-section section" id="report-section">
        <div class="container">
            <div class="row">
                <div class="card  managedonorcard">
                    <div class="card-title grey lighten-4">
                        <div class="row">
                            <div class="col s12">
                                <h6 class="left">Generate Report</h6>

                            </div>
                        </div>
                    </div>
                    <div class="card-content">
                        <div class="scroll">
                            <table class="striped table-sortable">
                                <thead>
                                    <tr>
                                        <th>Pincode</th>
                                        <th>Count</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>380004</td>
                                        <td>5</td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!--Update Camp Location-->
    <section id="updatecamp-location" class="section updatecamplocationsection">
        <div class="container">
            <div class="row">
                <div class="col m9 offset-m2">
                    <div class="card updatecamp-card center">
                        <div class="card-title">
                            <h5>Update Camp Location</h5>
                        </div>
                        <div class="card-content">
                            <div class="form">
                                <form action="" method="post">
                                    <div class="row">
                                        <div class="col s12">
                                            <div class="input-field col s12">
                                                <textarea name="ucamplocation" id="textarea1"
                                                    class="materialize-textarea" required></textarea></textarea>
                                                <label for="ucamplocation">Camp Location</label>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="card-action">
                            <button class="btn waves-effect waves-light red white-text submitbtn" type="submit"
                                name="action">Submit</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>


    <!--MAnage Donor MODULE-->
    <!--Manage Blood Donor-->
    <section id="manageblood-donor" class="section manageblooddonor-section">
        <div class="container">
            <div class="card  managedonorcard">
                <div class="card-title grey lighten-4">
                    <div class="row">
                        <div class="col s12">
                            <h6 class="left">List Of Donor</h6>

                        </div>
                    </div>
                </div>
                <div class="card-content">
                    <div class="scroll">
                        <table class="striped">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Donor</th>
                                    <th>Blood Group</th>
                                    <th>Information</th>
                                    <th>Docdent</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Sweta &nbsp;Rathod</td>
                                    <td>B-</td>
                                    <td>
                                        Email: &nbsp;swetarathod910@gmail.com <br>
                                        Phone No:&nbsp;8347406010 <br>
                                        Date of Birth:&nbsp;02/06/2002 <br>
                                        Gender:&nbsp; Female <br>
                                        Weight:&nbsp; 50 <br>
                                        Address:&nbsp; dsdsdkdjkdjkdjkdjkjkdksdkddjk <br>
                                    </td>
                                    <td>dsdsdssssssssssssssssssssssssssssssssssssss</td>
                                    <td>
                                        <a class="waves-effect waves-light btn-small modal-trigger light-blue darken-4"
                                            href="#modal1">Edit</a>
                                        <a class="waves-effect waves-light btn-small  red">Delete</a>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div id="modal1" class="modal modal-fixed-header modal-fixed-footer">
        <div class="modal-header grey lighten-3">
            <h5>Update Info</h5>
        </div>
        <div class="modal-content">
            <div class="container">
                <form action="updateinfo" method="post">
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="text" name="dfname" value="" required>
                                <label for="dfname">First Name</label>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="text" name="dlname" value="" required>
                                <label for="dlname">Last Name</label>
                            </div>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="tel" name="dphno" maxlength="10" value="" required>
                                <label for="dphno">Phone no</label>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="tel" name="dsphno" minlength="10" maxlength="10" value="">
                                <label for="dsphno">Secound Phone no</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6">

                            <div class="input-field col s12">
                                <input type="email" name="demail" class="validate" value="" required>
                                <label for="demail">E mail</label>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="password" name="dpwd" value="" required>
                                <label for="dpwd">Password</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="text" class="datepicker" id="dbdate" value="" required>
                                <label for="dbdate">Birthdate</label>
                            </div>

                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="number" name="dage" value="" required>
                                <label for="dage">Age</label>
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
                                            <input class="with-gap" name="gender" type="radio" value="" required />
                                            <span>Male</span>
                                        </label>
                                    </span>
                                    <span>
                                        <label>
                                            <input class="with-gap" name="gender" type="radio" value="" required />
                                            <span>Female</span>
                                        </label>
                                    </span>
                                    <span>
                                        <label>
                                            <input class="with-gap" name="gender" type="radio" value="" required />
                                            <span>Other</span>
                                        </label>
                                    </span>

                                </p>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="number" name="dweight" value="" required>
                                <label for="dweight">Weight</label>
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

                                <div class="file-field input-field">
                                    <div class="btn red ">
                                        <span>File</span>
                                        <input type="file">
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
                            <textarea name="daddress" id="textarea1" class="materialize-textarea" value=""
                                required></textarea></textarea>
                            <label for="daddress">Address</label>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="modal-footer grey lighten-3">
            <a href="#!" class="modal-close waves-effect waves-green btn-flat">ADD</a>
            <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cancel</a>
        </div>

    </div>


    <!--ELigible Donor MODULE-->
    <!--Eligible Donor-->
    <section id="eligible-section" class="section eligible-section">
        <div class="container">
            <div class="card  managedonorcard">
                <div class="card-title grey lighten-4">
                    <div class="row">
                        <div class="col s12">
                            <h6 class="left">List Of New Donor</h6>
                            <a class="waves-effect waves-light btn modal-trigger right red" href="#modal2"><i
                                    class="material-icons left">add</i>New Donor</a>
                        </div>
                    </div>
                </div>
                <div class="card-content">
                    <div class="scroll">
                        <table class="striped">
<!--                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Donor</th>
                                    <th>Blood Group</th>
                                    <th>Information</th>
                                    <th>Docudent</th>
                                    <th>Action</th>
                                </tr>
                            </thead>-->
<!--                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Sweta &nbsp;Rathod</td>
                                    <td>B-</td>
                                    <td>
                                        Email: &nbsp;swetarathod910@gmail.com <br>
                                        Phone No:&nbsp;8347406010 <br>
                                        Date of Birth:&nbsp;02/06/2002 <br>
                                        Gender:&nbsp; Female <br>
                                        Weight:&nbsp; 50 <br>
                                        Address:&nbsp; dsdsdkdjkdjkdjkdjkjkdksdkddjk <br>
                                    </td>
                                    <td>dsdsdssssssssssssssssssssssssssssssssssssss</td>
                                    <td>
                                        <a class="waves-effect waves-light btn-small light-blue darken-4">Qualify</a>
                                        <a class="waves-effect waves-light btn-small  red">Disqualify</a>
                                    </td>
                                </tr>

                            </tbody>-->
                          
                            
                           
                          <%="hello there"%>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Edit Donor Model-->
    <div id="modal2" class="modal modal-fixed-header modal-fixed-footer">
        <div class="modal-header grey lighten-3">
            <h5>New Donor</h5>
        </div>
        <div class="modal-content">
            <div class="container">
                <form action="updateinfo" method="post">
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="text" name="udfname" value="" required>
                                <label for="udfname">First Name</label>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="text" name="udlname" value="" required>
                                <label for="udlname">Last Name</label>
                            </div>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="tel" name="udphno" maxlength="10" value="" required>
                                <label for="udphno">Phone no</label>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="tel" name="udsphno" minlength="10" maxlength="10" value="">
                                <label for="udsphno">Secound Phone no</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6">

                            <div class="input-field col s12">
                                <input type="email" name="udemail" class="validate" value="" required>
                                <label for="udemail">E mail</label>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="password" name="udpwd" value="" required>
                                <label for="udpwd">Password</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="text" class="datepicker" id="udbdate" value="" required>
                                <label for="udbdate">Birthdate</label>
                            </div>

                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="number" name="udage" value="" required>
                                <label for="udage">Age</label>
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
                                            <input class="with-gap" name="gender" type="radio" value="" required />
                                            <span>Male</span>
                                        </label>
                                    </span>
                                    <span>
                                        <label>
                                            <input class="with-gap" name="gender" type="radio" value="" required />
                                            <span>Female</span>
                                        </label>
                                    </span>
                                    <span>
                                        <label>
                                            <input class="with-gap" name="gender" type="radio" value="" required />
                                            <span>Other</span>
                                        </label>
                                    </span>

                                </p>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="number" name="udweight" value="" required>
                                <label for="udweight">Weight</label>
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

                                <div class="file-field input-field">
                                    <div class="btn red ">
                                        <span>File</span>
                                        <input type="file">
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
                            <textarea name="uaddress" id="textarea1" class="materialize-textarea" value=""
                                required></textarea></textarea>
                            <label for="uaddress">Address</label>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="modal-footer grey lighten-3">
            <a href="#!" class="modal-close waves-effect waves-green btn-flat">ADD</a>
            <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cancel</a>
        </div>

    </div>



    <!--MANAGER MODULE-->
    <!--MAnage manager-->
    <section id="manager-section" class="section manager-section">
        <div class="container">
            <div class="card  managedonorcard">
                <div class="card-title grey lighten-4">
                    <div class="row">
                        <div class="col s12">
                            <h6 class="left">List Of Manager</h6>
                            <a class="waves-effect waves-light btn modal-trigger right red" href="#modal3"><i
                                    class="material-icons left">add</i>New Manager</a>
                        </div>
                    </div>
                </div>
                <div class="card-content">
                    <div class="scroll">
                        <table class="striped">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Name </th>
                                    <th>Id No</th>
                                    <th>Information</th>
                                    <th>Docdent</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Sweta &nbsp;Rathod</td>
                                    <td>24</td>
                                    <td>
                                        Email: &nbsp;swetarathod910@gmail.com <br>
                                        Phone No:&nbsp;8347406010 <br>
                                        Date of Birth:&nbsp;02/06/2002 <br>
                                        Gender:&nbsp; Female <br>
                                        Weight:&nbsp; 50 <br>
                                        Address:&nbsp; dsdsdkdjkdjkdjkdjkjkdksdkddjk <br>
                                    </td>
                                    <td>dsdsdssssssssssssssssssssssssssssssssssssss</td>
                                    <td>
                                        <a href="#modal4"
                                            class="waves-effect waves-light btn-small modal-trigger light-blue darken-4">Update</a>
                                        <a class="waves-effect waves-light btn-small  red">Delete</a>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Add Manager Model-->
    <div id="modal3" class="modal modal-fixed-header modal-fixed-footer">
        <div class="modal-header grey lighten-3">
            <h5>New Manager</h5>
        </div>
        <div class="modal-content">
            <div class="container">
                <form action="updateinfo" method="post">
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="text" name="mfname" value="" required>
                                <label for="mfname">First Name</label>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="text" name="mlname" value="" required>
                                <label for="mlname">Last Name</label>
                            </div>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="tel" name="mphno" maxlength="10" value="" required>
                                <label for="mphno">Phone no</label>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="tel" name="msphno" minlength="10" maxlength="10" value="">
                                <label for="msphno">Secound Phone no</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6">

                            <div class="input-field col s12">
                                <input type="email" name="memail" class="validate" value="" required>
                                <label for="memail">E mail</label>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="password" name="mpwd" value="" required>
                                <label for="mpwd">Password</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="text" class="datepicker" id="mbdate" value="" required>
                                <label for="mbdate">Birthdate</label>
                            </div>

                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="number" name="mage" value="" required>
                                <label for="mage">Age</label>
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
                                            <input class="with-gap" name="gender" type="radio" value="" required />
                                            <span>Male</span>
                                        </label>
                                    </span>
                                    <span>
                                        <label>
                                            <input class="with-gap" name="gender" type="radio" value="" required />
                                            <span>Female</span>
                                        </label>
                                    </span>
                                    <span>
                                        <label>
                                            <input class="with-gap" name="gender" type="radio" value="" required />
                                            <span>Other</span>
                                        </label>
                                    </span>

                                </p>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="number" name="mweight" value="" required>
                                <label for="mweight">Weight</label>
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

                                <div class="file-field input-field">
                                    <div class="btn red ">
                                        <span>File</span>
                                        <input type="file">
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
                            <textarea name="maddress" id="textarea1" class="materialize-textarea" value=""
                                required></textarea></textarea>
                            <label for="maddress">Address</label>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="modal-footer grey lighten-3">
            <a href="#!" class="modal-close waves-effect waves-green btn-flat">ADD</a>
            <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cancel</a>
        </div>

    </div>
    <!--update manager Model-->
    <div id="modal4" class="modal modal-fixed-header modal-fixed-footer">
        <div class="modal-header grey lighten-3">
            <h5>Update Info</h5>
        </div>
        <div class="modal-content">
            <div class="container">
                <form action="updateinfo" method="post">
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="text" name="umfname" value="" required>
                                <label for="umfname">First Name</label>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="text" name="umlname" value="" required>
                                <label for="umlname">Last Name</label>
                            </div>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="tel" name="umphno" maxlength="10" value="" required>
                                <label for="umphno">Phone no</label>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="tel" name="umsphno" minlength="10" maxlength="10" value="">
                                <label for="umsphno">Secound Phone no</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6">

                            <div class="input-field col s12">
                                <input type="email" name="umemail" class="validate" value="" required>
                                <label for="umemail">E mail</label>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="password" name="umpwd" value="" required>
                                <label for="umpwd">Password</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="text" class="datepicker" id="umbdate" value="" required>
                                <label for="umbdate">Birthdate</label>
                            </div>

                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="number" name="umage" value="" required>
                                <label for="umage">Age</label>
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
                                            <input class="with-gap" name="gender" type="radio" value="" required />
                                            <span>Male</span>
                                        </label>
                                    </span>
                                    <span>
                                        <label>
                                            <input class="with-gap" name="gender" type="radio" value="" required />
                                            <span>Female</span>
                                        </label>
                                    </span>
                                    <span>
                                        <label>
                                            <input class="with-gap" name="gender" type="radio" value="" required />
                                            <span>Other</span>
                                        </label>
                                    </span>

                                </p>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="input-field col s12">
                                <input type="number" name="umweight" value="" required>
                                <label for="umweight">Weight</label>
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

                                <div class="file-field input-field">
                                    <div class="btn red ">
                                        <span>File</span>
                                        <input type="file">
                                    </div>
                                    <div class="file-path-wrapper">
                                        <input name="filename" class="file-path validate" type="text"
                                            placeholder="Upload Your Docdent ">
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12 ">
                            <textarea name="umaddress" id="textarea1" class="materialize-textarea" value=""
                                required></textarea></textarea>
                            <label for="umaddress">Address</label>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="modal-footer grey lighten-3">
            <a href="#!" class="modal-close waves-effect waves-green btn-flat">Update</a>
            <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cancel</a>
        </div>

    </div>



    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="admin.js"></script>


</body>

</html>