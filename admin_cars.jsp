<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Iconic Cars</title>
    <style>
      #profile_pic{
      max-height: 200px;
      max-width: 200px;
    }
    </style>
  </head>
  <body>
    <%@ include file="admin_header.jsp"%>
      
    <a:forEach var="cr" items="${cars}"> 
        <div class="card mb-3" style="max-width: 540px;">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <img src="fetch_image.do?image_id=${cr.carPicId.carPicId}&car_num=${cr.vechicleNo}" class="card-img-top img-fluid" id="carImage" alt="...">
                </div>
              <div class="col-md-8">
                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><b>Vechicle Number</b> ${cr.vechicleNo.toUpperCase()}</li>
                        <li class="list-group-item"><b>Reg Date</b>&nbsp;&nbsp;&nbsp; ${cr.regDate}</li>
                        <li class="list-group-item"><b>RTO Registered&nbsp;&nbsp;&nbsp;</b> ${cr.rtoLocation}</li>
                        <li class="list-group-item"><b>Fuel Type&nbsp;&nbsp;&nbsp;</b> ${cr.carBrandId.variantId.fuelTypeId.fuelTypeId}</li>
                    </ul>
                </div>
            </div>
            <div class="card-body">
                <a href="admin_control.do?area=B&request=3&rest_id=${cr.carId}" class="card-link btn btn-outline-danger">
                    Reject
                </a>
                <a href="admin_control.do?area=B&request=4&rest_id=${cr.carId}" class="card-link btn btn-success">
                    Accept
                </a>
            </div>
            </div>
          </div>
    </a:forEach>
    

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

  </body>
</html>
