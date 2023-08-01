<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Successfull</title>
     <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 20px;
            }

            .container {
                max-width: 800px;
                margin: 0 auto;
                background-color: #f2f2f2;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            .container h2 {
                text-align: center;
            }

            .link-list {
            list-style-type: none;
                 padding: 0;
            }

            .link-list li {
                margin-bottom: 10px;
            }

            .link-list li a {
                display: block;
                padding: 10px;
                background-color: #6e6ef7;
                color: white;
                text-decoration: none;
                border-radius: 5px;
                text-align:center;
            }

            .link-list li a:hover {
                 background-color: #ccccff;
            }
            header {
               background-color: #EFF5F5;
               padding: 2rem 0;
            }

             nav {
                max-width: 1100px;
                margin: 0 auto;
                display: flex;
                justify-content: space-between;
                align-items: center;
             }

             .logo {
               font-size: 1.5rem;
               font-weight: 700;
             }

             .menu>li,
             .menu>a {
                 display: inline-block;
             }

             .menu a {
                 text-decoration: none;
                 color: Black;
                 display: block;
                 padding: 10px 1.5rem;
                 transition: background-color .22s ease, color .22s ease;
             }

             .menu a:hover {
                  background-color: grey;

             }

     </style>
</head>
<body>
<header>
    <nav>
<!--        <div class="container">-->
<!--            <a class="navbar-brand" href="index.html">-->
<!--                <img src="https://th.bing.com/th/id/R.2dc4b1b58059934dc3863c080b307f9b?rik=ruVjLK1PrcbnWA&riu=http%3a%2f%2fwww.mbsindiapl.com%2fimages%2fimgs%2fteam%2fxHospital-Management-System.jpg.pagespeed.ic.TzbAPKPlgX.jpg&ehk=Y5OioFbXLuC8MnVnae19j2Y8TE%2bS5ImOOBBL60Tta5A%3d&risl=&pid=ImgRaw&r=0" alt="HMS"  style="float: left; border-radius: 30%">-->
<!--            </a>-->
<!--        </div>-->
        <h1 class="Logo">Hospital Management System</h1>
        <ul class="menu">
            <li><a href="/login">Login</a></li>
            <li><a href="/doctorslogin">Doctors Login</a></li>
            <li><a href="/update">Update Patient</a></li>
            <li><a href="/AboutUs">About Us</a></li>
            <li><a href="/ContactUs">Contact Us</a></li>
        </ul>

    </nav>
</header><br><br>

<div class="container">
    <h2>Please Select the Choice below</h2>
    <ul class="link-list">
        <li><a href="#">Prescriptions</a></li><br><br>
        <li><a href="/location">Book Slot</a></li><br><br>
        <li><a href="/view">View Slot</a></li><br><br>
    </ul>
</div>
</body>
</html>