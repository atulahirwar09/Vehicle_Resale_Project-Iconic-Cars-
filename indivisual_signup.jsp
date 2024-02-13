<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.1/font/bootstrap-icons.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/style2.css">
  <title>ICONIC CARS</title>
  <style>
  </style>
</head>
<body>    
  <%@ include file="header.jsp"%>
  <div class="container">
    <div class="row">
        <div class="col-md-5">
            <div class="row p-md-4 mt-5 ml-1">
                <div class="col  m-auto p-md-3 shadow rounded border bg-transparent" >
                    <form action="signup_indivisual.do" method="post">
                        <legend align="center" class="text-white" >Create Your Individual Account</legend><hr>    
                        <div class="form-row mb-4">
                            <div class="col-md-3 pt-2">
                                <label for="indiv_name" class="text-white">Name <span class="text-danger"></span></label>
                            </div>
                            <div class="col-md-9">
                                <input type="text" autofocus pattern="[A-Za-z ]{3,30}" name="name" id="indiv_name" class="form-control  bg-transparent" placeholder="Full name">
                            </div>
                        </div>                
                        <div class="form-row mb-4">
                            <div class="col-md-3 pt-2">
                                <label for="indiv_email" class="text-white">Email<span class="text-danger"></span></label>
                            </div>
                            <div class="col-md-9">
                                <input type="email" name="email" id="indiv_email" class="form-control bg-transparent" placeholder="Email address">
                            </div>
                        </div>                
                        <div class="form-row mb-4">
                            <div class="col-md-3 pt-2">
                                <label for="indiv_password" class="text-white">Password <span class="text-danger"></span></label>
                            </div>
                            <div class="col-md-9">
                                <input type="password" name="password" id="indiv_password" class="form-control bg-transparent" placeholder="Password">
                            </div>
                        </div> 
                        <div class="form-row mb-4">
                            <div class="col-md-3 pt-2">
                                <label for="indiv_contact" class="text-white">Contact <span class="text-danger"></span></label>
                            </div>
                            <div class="col-md-9">
                                <input type="text" name="contact" id="indiv_name" maxlength="10" class="form-control bg-transparent" placeholder="Enter Your Contact">
                            </div>
                        </div>                
                        <div class="form-group">
                            <div class="col">
                                <div class="g-recaptcha" data-sitekey="6LdrDbIkAAAAAA6DdTH9au37p09uEmHr9h1_Xe6L"></div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary" id="dealer_signup_btn">Submit</button>
                    </form>
                </div>
            </div>
        </div>
                <div class="col-md-7">
                    <h1 class="text-left font-weight-bold text-light mt-5 ml-3 pt-3">Iconic Cars</h1>
                    <p class="text-left text-white-50 ml-3">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Molestiae, quos. Reprehenderit minima cumque autem maiores perspiciatis voluptatum obcaecati accusantium voluptates quasi, consequuntur velit veritatis rem eveniet omnis incidunt. Provident, adipisci.
                        Eveniet deleniti 
                    </p>
                </div>
    </div>
  </div>
  
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
  
</body>
</html>
<!-- <div class="container-fluid bg-light">
    <div class="row p-md-5 " >
        <div class="col-6 border m-auto p-md-5 shadow rounded bg-white">
            <form action="" method="post" class="bg-white">
                <legend align="center">Create Your Individual Account</legend><br>
                <div class="form-group">
                    <label for="indiv_name">Name <span class="text-danger">*</span></label>
                    <input type="text" name="email" id="indiv_name" class="form-control border-top-0 border-left-0 border-right-0" placeholder="Name">
                </div>
                <div class="form-group">
                    <label for="indiv_password">Email<span class="text-danger">*</span></label>
                    <input type="email" name="email" id="indiv_email" class="form-control border-top-0 border-left-0 border-right-0" placeholder="Email Address">
                </div>
                <div class="form-group">
                    <label for="indiv_password">Password <span class="text-danger">*</span></label>
                    <input type="password" name="email" id="indiv_password" class="form-control border-top-0 border-left-0 border-right-0" placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="indiv_contact">Contact <span class="text-danger">*</span></label>
                    <input type="text" name="indiv_contact" id="indiv_name" class="form-control border-top-0 border-left-0 border-right-0" placeholder="Contact">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</div> -->