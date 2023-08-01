<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            height: 100%;
            font-size: 1rem;
            line-height: 1.6;
            font-family: montserrat;
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

        ul {
            list-style: none;
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

        .container {
            max-width: 600px;
            transform: translate(0%, 20%);
            margin: 0 auto;
        }

        .apply_box {
            max-width: 600px;
            padding: 20px;
            background-color: #EFF5F5;
            margin: 0 auto;
            box-shadow: 5px 20px 50px #000;
            border-radius: 10px;
        }

        .form_container {
            margin-top : 20px;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            }

        .form_control {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 15px;
            margin-bottom: 5px;
        }

        input, select, textarea {
            padding: 6px 10px;
            border: 1px solid grey;
            border-radius: 4px;
            font-size: 15px;
        }

        input:focus {
            outline-color: blue;
        }

        .buttonContainer {
            display: flex;
            justify-content: flex-end;
            margin-top: 20px;
        }

        button {
            transition: 0.3s ease-in;
        }
        button:hover {
            background-color: #ccc;
            border: 2px solid red;
            color: black;
            transition: 0.3s ease-out;
            cursor: pointer;
        }

        .textare_control {
            grid-column: 1 /span 2;
        }

        .textare_control textarea {
            width: 100%;
        }

        @media (max-width: 460px) {
            .textare_control {
            grid-column: 1 /span 1;}

        }

        .pimg1 {
            background-image: url(Images/l.jpg);
            width: auto;
            height: auto;
            min-height: 900px;
            position: relative;
            background-position: center;
            background-size: cover;
            background-repeat: repeat;
            background-attachment: fixed;
        }

    </style>
</head>
<body>
<header>
    <nav>
        <h1 class="logo">Hospital Management System</h1>
        <ul class="menu">
            <li><a href="Home.html">Home</a></li>
            <li><a href="/login">Login</a></li>
            <li><a href="/AboutUs">About Us</a></li>
        </ul>
    </nav>
</header>
<section class="pimg1">
    <div class="container">
        <div class="apply_box">
            <h1 style="text-align: center">Enquiry form</h1><br>
            <hr>
            <form method="get" action="ContactUs">
                <div class="form_container">
                    <div class="form_control"><br>
                        <label for="name">Name</label>
                        <input id="name" name="name" placeholder="Enter Name..." required/>
                    </div>
                    <div class="form_control"><br>
                        <label for="emailid">Email Id</label>
                        <input type="email" id="emailid" name="emailid" placeholder="Enter Email Id..." required/>
                    </div>
                    <div class="form_control"><br>
                        <label for="contactnum">Contact No</label>
                        <input id="contactnum" name="contactnum" placeholder="Enter Contact Number..." required />
                    </div>
                    <div class="form_control"><br>
                    	<label for="location">Location</label>
                    		<select id=location name="loc" required>
                    			<option value="">Select a location...</option>
                    			<option value="Gandhi Hospital, Hyderabad">Gandhi Hospital, Hyderabad</option>
                    			<option value="Osmania Hospital, Hyderabad">Osmania Hospital, Hyderabad</option>
                    			<option value="Niloufer Hospital, Hyderabad">Niloufer Hospital, Hyderabad</option>
                    			<option value="Government Hospital, Khammam">Government Hospital, Khammam</option>
                    			<option value="Government Hospital Center, Khammam">Government Hospital Center, Khammam</option>
                    			<option value="Government Hospital, Siddipet">Government Hospital, Siddipet</option>
                    			<option value="Government Hospital, Siddipet">Government Hospital, Siddipet</option>
                    			<option value="Government Hospital, Dubbak">Government Hospital, Dubbak</option>
                    			<option value="Government Hospital, Gajwel">Government Hospital, Gajwel</option>
                    			<option value="Government Hospital, Medak">Government Hospital, Medak</option>
                    			<option value="Government Hospital, Narsapur">Government Hospital, Narsapur</option>
                    		</select>
                    </div>
                    <div class="form_control"><br>
                    	<label>Speciality</label>
                    	<select id=location name="spe" required>
                    		<option value="">Select a Speciality...</option>
                    		<option value="Cardiology">Cardiology</option>
                    		<option value="Dermatology">Dermatology</option>
                    		<option value="Neurology">Neurology</option>
                    		<option value="Pediatrics">Pediatrics</option>
                    		<option value="Orthopedic">Orthopedic</option>
                    		<option value="ENT">ENT</option>
                    		<option value="Opthlamology">Opthlamology</option>
                    		<option value="Gynecology">Gynecology</option>
                    	</select>
                    </div><br>
                    <div class="textarea_control"><br>
                    	<label for="query">Query</label>
                    	<textarea id="query" name="query" rows="4" cols="50" placeholder="Enter your query..." required ></textarea>
                    </div>
                    </div>
                    <div class="buttonContainer">
                    	<input type = "submit">
                    </div>
                </form>
            </div>
        </div>
    </section>
</body>
</html>