<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Iconic Cars</title>
    <style>
      #profile_pic{
      max-height: 400px;
      max-width: 200px;
    }
    </style>
  </head>
  <body>
      <%@ include file="admin_header.jsp"%>
      
    <a:forEach var="se" items="${seller}"> 
        <div class="card mb-3" style="max-width: 540px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img src="download_images.do?image_path=${se.profilePic}" class="mt-4" id="profile_pic" alt="...">
              </div>
              <div class="col-md-8 pl-4">
                <div class="card-body bg-light">
                  <b class="h5">Name</b>&nbsp;&nbsp;&nbsp;<span class="card-title ">${se.name}</span>
                  <b class="h5">Email</b>&nbsp;&nbsp;&nbsp;<span class="card-title">${se.email}</span>
                  <b class="h5">Contact</b>&nbsp;&nbsp;&nbsp;<span class="card-title">${se.contact}</span>
                  <b class="h5">Address</b>&nbsp;&nbsp;&nbsp;<span class="card-title ">${se.address}</span>
                  <b class="h5">Website</b>&nbsp;&nbsp;&nbsp;<span class="card-title ">${se.websiteUrl}</span>
                
                </div>
            </div>
            <div class="card-body">
              <span class="">
                <a href="admin_control.do?area=A&request=1&rest_id=${se.userId}" class="card-link btn btn-outline-danger">
                      Reject
                </a>
              </span>  
              <span class="ml-auto">
                <a href="admin_control.do?area=A&request=2&rest_id=${se.userId}" class="card-link btn btn-success">
                    Accept
                </a>
              </span>
            </div>
            </div>
          </div>
    </a:forEach>
    

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

  </body>
</html>
