<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Patient</title>
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
                text-align: center;
                 box-sizing: border-box;
                 box-shadow: 5px 20px 50px #000;
                 border-radius: 10px;
            }
            .container h2 {
                text-align: center;
            }
       </style>
</head>
<body>
<div class="container">
  <h2>Update Patient</h2><br>
  <form method="post" action="update">
    <label>Id</label>
    <input type="text" name="id"><br><br>
    <label>Name</label>
    <input type="text" name="name"><br><br>
    <label>DOB</label>
    <input type="date" name="dob"><br><br>
    <label>Phn No</label>
    <input type="text" name="phno"><br><br>
    <label>Password</label>
    <input type="text" name="password"><br><br>

    <input type="submit" value="Register">
  </form>
</div>
</body>
</html>