<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Slot</title>
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
	</header>
	<section class="pimg1">
<div class="row justify-content-center">
<div class="col-4">
<div id="form" class="fo">
<br>
<h1>Book appointment Time</h1><hr>
<br><br>
<form action="bookSlot" method="post">
	<button name="a" value="9am-10am" class="button" id="button">9am-10am</button>
	<button name="b" value="10am-11am" class="button" id="button">10am-11am</button>
	<button name="c" value="11am-12pm" class="button" id="button">11am-12pm</button>
	<button name="d" value="12pm-1pm" class="button" id="button">12pm-1pm</button>
	<button name="e" value="1pm-2pm" class="button" id="button">1pm-2pm</button>
	<button name="f" value="3pm-4pm" class="button" id="button">3pm-4pm</button>
	<button name="g" value="4pm-5pm" class="button" id="button">4pm-5pm</button>
	<button name="h" value="5pm-6pm" class="button" id="button">5pm-6pm</button>
	<button name="i" value="6pm-7pm" class="button" id="button">6pm-7pm</button>
	<button name="j" value="7pm-8pm" class="button" id="button">7pm-8pm</button>
	<button name="k" value="8pm-9pm" class="button" id="button">8pm-9pm</button>
</form>
</div></div></div>
</section>
</body>
</html>