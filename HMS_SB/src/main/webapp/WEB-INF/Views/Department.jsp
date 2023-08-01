<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Department</title>
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
                 justify-content: space-between
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
              .pimg1{
                     box-sizing: border-box;
                     box-shadow: 5px 20px 50px #000;
                     border-radius: 10px;
                     width: 400px;
                     max-width: 600px;
                     margin:0 auto;
                     transform:translate(0%, 30%);
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
<div class="Container"><br>
<h2 style="text-align:center;">Book an Appointment</h2><br><hr><br>
	<form action="department" method="post" style="text-align:center;">
<%-- 		<input type="text" value="<%out.println(session.getAttribute("hos_lo"));%>">
 --%>
   <select id="Hospital" onchange="populateSpecialists()" name="hospital_name">
	    <option value="">Select Hospital</option>
	    <option value="GHK"><%
		String n1 = request.getParameter("Pincode");
        if(n1.equals("507165")|| n1.equals("507168")|| n1.equals("507001")|| n1.equals("507158")) {
				out.print("Government Hospital");
		}
	else{
		out.print("Chandana Hospital");
		}


		%></option>
	    <!-- <option value="GHN">GHN</option>
	    <option value="GHS">GHS</option>
	    <option value="GHM">GHM</option> -->
	  </select>
	  <br><br>

	  <select id="Speciality" onchange="populateDoctors()" name="speciality">
	    <option value="">Select Speciality</option>
	  </select>
	  <br><br>

	  <select id="Doctor" name="doctor_name">
	    <option value="">Select Doctor</option>
	  </select>
	  <br><br>

	  <label>Appointment Date</label>
	  <input type="date" id="Appointment Date" name="appointment_date">
	  <br><br>

	  <input type="submit" name="submit">
		<br><br>
	</form>
	</div>
	<script>

    // Define the data for the dropdowns
    var data = {
      GHK: {
        cardiology: ["Navya", "Anusha", "Harsha"],
        ent: ["Vishnu", "Nishanth", "Anuha"],
        pediatrics: ["Naveen", "Bhargavi", "Ram"]
      },
      GHN: {
        gynecology: ["Thabhitha", "Oliva", "Hemanth"],
        orthopedic: ["Mounika", "Ram", "Dinesh"],
        dermatology: ["Vidya", "Krishna", "Ravi"]
      },
      GHS: {
        opthalmology: ["Mahesh", "Rakesh", "Divya"],
        neurology: ["Sridhar", "Suraj", "Uday"],
        cardiology: ["Karthik", "Ramesh", "Nishitha"]
      },
      GHM: {
    	genMedicine: ["Pavan","Satheesh","Venkat"],
    	gynecology: ["Prasad","Srinivas","Surya"],
    	pediatrics: ["Pavani","Chary","Chaitanya"]
      }
    };

    // Function to populate the speciality dropdown
    function populateSpecialists() {
      var Hospital = document.getElementById("Hospital").value;
      var spDropdown = document.getElementById("Speciality");
      spDropdown.innerHTML = "<option value=''>Select Speciality</option>";

      if (Hospital !== "") {
        var sp = data[Hospital];
        for (var Speciality in sp) {
          var option = document.createElement("option");
          option.value = Speciality;
          option.text = Speciality.charAt(0).toUpperCase() + Speciality.slice(1);
          spDropdown.appendChild(option);
        }
      }
    }


    // Function to populate the Doctors dropdown
    function populateDoctors() {
      var Hospital = document.getElementById("Hospital").value;
      var Speciality = document.getElementById("Speciality").value;
      var DDropdown = document.getElementById("Doctor");
      DDropdown.innerHTML = "<option value=''>Select Doctor</option>";

      if (Hospital !== "" && Speciality !== "") {
        var Docs = data[Hospital][Speciality];
        for (var i = 0; i < Docs.length; i++) {
          var option = document.createElement("option");
          option.value = Docs[i];
          option.text = Docs[i];
          DDropdown.appendChild(option);
        }
      }
    }
	</script>
	</section>
</body>

</html>