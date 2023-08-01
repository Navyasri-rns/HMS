<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us</title>
    <style>
        html,body{
            height:100%;
        }
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        ul{
            list-style: none;
        }
        body{
            font-size: 1rem;
            line-height: 1.6;
            font-family: montserrat;
        }
        header{
            background-color:  #EFF5F5;
            padding: 2rem 0;
        }
        nav{
            max-width:1100px;
            margin:0 auto;
            display: flex;
            justify-content:space-between;
            align-items: center;
        }
        .logo{
            font-size: 1.5rem;
            font-weight: 700;
        }
        .menu > li, .menu >a{
            display: inline-block;
        }
        .menu a{
            text-decoration: none;
            color: Black;
            display: block;
            padding: 10px 1.5rem;
            transition: background-color .22s ease, color .22s ease;
            }
        .menu a:hover{
            background-color: grey;
        }
    </style>

</head>

<body>
<div class="col-lg">
    <header>
        <nav>
            <h1 class="Logo">HMS</h1>
            <ul class="menu">
                <li><a href="/login">Login</a></li>
                <li><a href="/doctorslogin">Doctors Login</a></li>
                <li><a href="/ContactUs">Contact Us</a></li>
            </ul>
        </nav>
    </header>
    <section class="pimg1">
        <div class="ptext1">
            <p>
            <h2 class="h22"><b> About Project :</b>  </h2>
            <b> <br> The innovative idea  is about developing a Web Dynamic Project that would link every commoner seeking to admit in a hospital by making the process of registration effortless by means of booking an appointment with the desired doctor on the day and time the user wishes to.
                <br>
                <br>The user can select the nearest location wishing to admit in a nearby hospital and look through the availability of Doctors , Staff etc
                <br><br>The user can also view the past consultations with the doctor for future references.</b>
            <br></br></div><div class="ptext2">
        <h2><b>About Team :</b> </h2>
        <h4><b>
            <br>We are a team of 5, came up with an innovative idea that would solve an immediate problem of inaccessability of services provided in a hospital, by making the process
            digitalized by means of  web with ease.
        </b></h4>
    </div>
    </section>
</div>
</body>
</html>