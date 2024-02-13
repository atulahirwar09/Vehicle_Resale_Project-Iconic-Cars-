<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <title>Login</title>
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }
      /* body{
        background-color: rgb(241, 234, 234);
      } */
      .row {
        border-radius: 10px;
        box-shadow: 12px 12px 22px rgb(195, 195, 195);
      }
      
    </style>
  </head>
  <body>
    <%@ include file="header.jsp"%>

    <section class="form my-4 mx-5">
      <div class="container rounded-right  bg-white rounded">
        <div class="row bg-white no-gutters ">
          <div class="col-lg-5">
            <img src="images/cp1.png" class="img-fluid rounded-left" alt="">
          </div>
          <div class="col-lg-7  px-5 pt-5 m-auto">
            <h4>Sign to your account</h4>
            <form action="dealer_signin.do" method="post"  name="myForm">
              <div class="form-row">
                <div class="col-lg-7">
                  <input type="email" name="demail" class="form-control my-3 p-4" placeholder="Email-Address" id="d_email" onblur="validate('email_feild')">
                  <small class="text-danger" id="email-validation"></small>
                </div>
              </div>
              <div class="form-row">
                <div class="col-lg-7">
                  <input type="password" name="dpassword" class="form-control my-3 p-4" placeholder="******" id="d_password" onblur="validate('password_feild')">
                  <small class="text-danger" id="password-validation"></small>
                </div>
              </div>
              <div class="form-row">
                <div class="col-lg-7">
                  <button type="submit" class="btn btn-info w-100 mt-3 mb-3">Login</button>
                </div>
              </div>
              <p><a href="#">Forgot password</a></p>
              <hr width="50%">
              <p>Don't have an <b>DEALER</b> account? <a href="signup_dealer.do">Register here</a> </p>
              <p>Don't have an <b>USER</b> account? <a href="signup_indivisual.do">Register here</a> </p>
            </form>
          </div>
        </div>
      </div>
    </section>

    <script>
      var d_email = document.myForm.demail;
      var d_password = document.myForm.dpassword;

      function validate(feild) {
        if(feild === 'email_feild') {
          if(d_email.value) {
            d_email.classList.remove("is-invalid");
            d_email.classList.add("is-valid");
            document.getElementById("email-validation").value="";
          }else {
            d_email.classList.remove("is-valid");
            d_email.classList.add("is-invalid");
            document.getElementById("email-validation").value="Email Feild is Required";
          }
        } else if(feild === 'password_feild') {
          if(d_password.value) {
            d_password.classList.remove("is-invalid");
            d_password.classList.add("is-valid");
            document.getElementById("password-validation").value="";
          }else {
            d_password.classList.remove("is-valid");
            d_password.classList.add("is-invalid");
            document.getElementById("password-validation").value="Password Feild is Required";
          }
        }
      }
    </script>
   
    
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>    
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
  </body>
</html>

<!-- <div class="jumbotron jumbotron-fluid bg-banner2" id="jumbo1">
  <div class="container">
    <div class="row">
      <div class="col-md-3"></div>
      <div class="col-md-6 m-auto border shadow p-3 mb-5 bg-white rounded">
         Login Form -->
        <!-- <form action="" method="post">
          <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" name="demail" id="exampleInputEmail1" aria-describedby="emailHelp">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" name="dpassword" id="exampleInputPassword1">
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
      <div class="col-md-3"></div>
    </div>
  </div>
</div>   --> 
<!-- 
.bg-banner2 {
  background-image:url('images/car2.jpg');
  background-size: cover;
  
} -->