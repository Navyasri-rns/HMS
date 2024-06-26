<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Forgot Password</title>
    <style >

    	input {
    	  width: 20%;
    	  padding: 12px;
    	  margin-top: 6px;
    	  margin-bottom: 16px;

    	}

    	input[type=submit] {
    	    margin-left:200px;
    	    background-color: #04AA6D;
    	    color: white;
    	}

    	.container {
    	  max-width: 800px;
          margin: 0 auto;
          background-color: #f2f2f2;
          padding: 20px;
          border: 1px solid #ccc;
          border-radius: 5px;
          text-align: center;
          box-sizing: border-box;
          box-shadow: 5px 20px 50px #000;
          border-radius: 10px;
    	}


    	#message {
    	  display:none;
    	  background: #f1f1f1;
    	  color: #000;
    	  position: relative;
    	  padding: 20px;
    	  margin-top: 10px;
    	}

    	#message p {
    	  padding: 10px 35px;
    	  font-size: 18px;
    	}

    	.valid {
    	  color: blue;
    	}

    	.valid:before {
    	  position: relative;
    	  left: -35px;
    	  content: "✔";
    	}

    	.invalid {
    	  color: red;
    	}

    	.invalid:before {
    	  position: relative;
    	  left: -35px;
    	  content: "✖";
    	}
    </style>

</head>
<body>
<div class="row justify-content-center">
  <div class="col-4">
    <br><br>
    <h3 style="text-align:center">Reset your password</h3>
    <br><br>


      <form>
      <div class="container">
        <label for="psw"> Set a Password  </label>
        <input type="password" id="psw" name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  onkeyup='check()' required>
        <br>
        <label for="confirmpassword">Confirm password</label>
        <input type="Password" name="confirmpassword" id="confirmpassword"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" onkeyup='check()' required><br>

        <input type="submit" value="Submit">
      </div>
      </form>

    <div id="message">
      <h3>Password must contain the following:</h3>
      <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
      <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
      <p id="number" class="invalid">A <b>number</b></p>
      <p id="length" class="invalid">Minimum <b> characters</b></p>
    </div>

    <script type="text/javascript">
		var myInput = document.getElementById("psw");
		var myInput1= document.getElementById("confirmpassword");
		var letter = document.getElementById("letter");
		var capital = document.getElementById("capital");
		var number = document.getElementById("number");
		var length = document.getElementById("length");

		var check = function() {
			if (document.getElementById('psw').value == document.getElementById('confirmpassword').value) {
				document.getElementById('message').style.color = 'green';
				document.getElementById('message').innerHTML = 'password matching';
				}
			else {
				document.getElementById('message').style.color = 'red';
				document.getElementById('message').innerHTML = 'password not matching';
				}
			} 

		myInput.onfocus = function() {
		  document.getElementById("message").style.display = "block";
		}
		myInput1.onfocus = function() {
			  document.getElementById("message").style.display = "block";
			}

		myInput.onblur = function() {
		  document.getElementById("message").style.display = "none";
		}
		myInput1.onblur = function() {
			  document.getElementById("message").style.display = "none";
			}

		myInput.onkeyup = function() {
		  var lowerCaseLetters = /[a-z]/g;
		  if(myInput.value.match(lowerCaseLetters)) {
		    letter.classList.remove("invalid");
		    letter.classList.add("valid");
		  } else {
		    letter.classList.remove("valid");
		    letter.classList.add("invalid");
		  }

		  var upperCaseLetters = /[A-Z]/g;
		  if(myInput.value.match(upperCaseLetters)) {
		    capital.classList.remove("invalid");
		    capital.classList.add("valid");
		  } else {
		    capital.classList.remove("valid");
		    capital.classList.add("invalid");
		  }

		  var numbers = /[0-9]/g;
		  if(myInput.value.match(numbers)) {
		    number.classList.remove("invalid");
		    number.classList.add("valid");
		  } else {
		    number.classList.remove("valid");
		    number.classList.add("invalid");
		  }

		  if(myInput.value.length >= 8) {
		    length.classList.remove("invalid");
		    length.classList.add("valid");
		  } else {
		    length.classList.remove("valid");
		    length.classList.add("invalid");
		  }
}
</script>
</div>
</div>
</body>
</html>