<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Doctors Login</title>
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
                      padding: 40px;
                      border: 1px solid #ccc;
                      border-radius: 5px;
                      text-align: center;
                      box-sizing: border-box;
                      box-shadow: 5px 20px 50px #000;
                      border-radius: 10px;
                    }
                    .container h2 {
                      text-align: center;
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

            .center {
                 box-sizing: border-box;
                 box-shadow: 5px 20px 50px #000;
                 border-radius: 10px;
            }

             </style>
</head>
<body>
<header>
    <nav>

        <h1 class="Logo">Hospital Management System</h1>
        <ul class="menu">
            <li><a href="Home.html">Home</a></li>
            <li><a href="/AboutUs">About Us</a></li>
            <li><a href="/ContactUs">Contact Us</a></li>
        </ul>
    </nav>
</header><br><br>
<section class="pimg1" >
    <div class="center">
        <br>
        <h1 style="text-align:center;">Doctor's LogIn</h1>
        <form method="post" class="tex" action="doctorslogin" style="text-align:center;">
            <div class="txt_filed">
                <br>
                <label>Doctor_ID</label>
                <input type="text" required name="a1">

            </div>
            <br>
            <div class="txt_filed">
                <label>Password </label>
                <input type="password" required name="a2">

            </div>
            <br>
            <div class="pass">Forgot Password?</div>

            <input type="submit" name="Login">
            <br>
            <br>
        </form>
    </div>
</section>
</body>
</html>