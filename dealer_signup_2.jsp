<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.1/font/bootstrap-icons.css">
  <title>ICONIC CARS</title>
  <style>
    * {
    margin: 0;
    padding: 0;
    }
    body{
        background-image: url(images/1.jpg);
        background-size: cover;
        background-attachment: fixed;
        font-family: Georgia, 'Times New Roman', Times;
    }
  </style>
</head>
<body>    
  <%@ include file="header.jsp"%>
  <!-- A Verification OTP Is Send to your email -->
  <div class="container-fluid">
      <div class="row">
        <div class="col-md-8 mx-auto mt-5">
          <div class="alert alert-success " role="alert">
            <h2 class="alert-heading" align="center">Verify Your Account</h2>
            <hr>
            <div class="alert alert-success w-100" id="email_otp_block">
              <h3 class="text-weight-bold">Please Check your <a href="http://gmail.com" target="_self">Inbox</a> A verification mail is sent to your registered email address...</h3> 
          </div>
          <div>
            <span class="text-weight-bold">Enter OTP: </span> <input class="form-control" type="text" id="otp" >
            <br>
            <input type="button" class="btn btn-primary" id="otp_btn" value="Verify Your Account">
          </div>
        </div>
      </div>
    </div>
  </div>

    <script>
      const otp_btn = document.querySelector('#otp_btn');
      const otp = document.querySelector('#otp');

      const checkOTP = async () => {
        let result = await fetch('check_otp.do?otp='+otp.value);
        return result.text();
      };

      otp_btn.addEventListener('click', () => {

        checkOTP().then((data)=>{
          if(data == 'true'){
            window.location = "edit_profile.jsp";
          }
        }).catch((err)=>{
          console.log(err);
        });
      });
    </script>
    
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</body>
</html>  
  