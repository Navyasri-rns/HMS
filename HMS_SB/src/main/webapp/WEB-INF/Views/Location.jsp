<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Location</title>
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
            #form{
                 box-sizing: border-box;
                 box-shadow: 5px 20px 50px #000;
                 border-radius: 10px;
                 width:400px;
                 height: 300px;
            }
            .k{
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
        <div class="row justify-content-center">
            <div class="col-4">
                <div class="k">
                    <div id=form>
                        <h1 style="text-align:center; ">Location</h1>
                        <hr>
                        <br>
                        <form style="text-align:center" method="post" action="location" >

                            <select id="District" onchange="populateArea()" name="District">
                                <option value="">Select District</option>
                                <option value="Hyderabad">Hyderabad</option>
                                <option value="Khammam">Khammam</option>
                              </select>
                                 <br><br>

                              <select id="Areas" onchange="populatePin()" name="Areas">
                                <option value="">Select Areas</option>
                              </select>
                              <br><br>

                              <select id="Pincode" name="Pincode">
                                <option value="">Select Pincode</option>
                              </select>
                              <br><br>

                            <input type="submit" name="submit" >

                        </form>
                    </div>
        <script>

        // Define the data for the dropdowns
        var data = {
          Hyderabad: {
            secunderabad: ["500003", "500007"],
            afzalgunj: ["500012", "500002"]
          },
          Khammam: {
            wyra: ["507165", "507168"],
            khammam: ["507001", "507158"]
          }
        };

        // Function to populate the speciality dropdown
        function populateArea() {
          var District = document.getElementById("District").value;
          var spDropdown = document.getElementById("Areas");
          spDropdown.innerHTML = "<option value=''>Select Areas</option>";

          if (District !== "") {
            var sp = data[District];
            for (var Areas in sp) {
              var option = document.createElement("option");
              option.value = Areas;
              option.text = Areas.charAt(0).toUpperCase() + Areas.slice(1);
              spDropdown.appendChild(option);
            }
          }
        }


        // Function to populate the Doctors dropdown
        function populatePin() {
          var District = document.getElementById("District").value;
          var Areas = document.getElementById("Areas").value;
          var DDropdown = document.getElementById("Pincode");
          DDropdown.innerHTML = "<option value=''>Select Pincode</option>";

          if (District !== "" && Areas !== "") {
            var Docs = data[District][Areas];
            for (var i = 0; i < Docs.length; i++) {
              var option = document.createElement("option");
              option.value = Docs[i];
              option.text = Docs[i];
              DDropdown.appendChild(option);
            }
          }
        }
        </script>

                        </form>
                    </div>
                </div>
                </div>
                </div>
	</section>
</body>

</html>