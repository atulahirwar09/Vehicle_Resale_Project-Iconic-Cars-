<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Iconic Cars</title>
    <style>
        img{
            max-height: 400px;
        }
    </style>
  </head>
    <body>
        <%@ include file="header.jsp"%>

        <div class="container-fluid">
          <div class="row">
            <div class="col">
              
              <div class="text-center font-weight-bolder h3 py-3 text-info border-bottom">Cars Details</div>
              <div class="row justify-content-around">
                <div class="col-3 bg-light">
                  <img src="fetch_image.do?image_id=${delCars.carPicId.carPicId}&car_num=${delCars.vechicleNo}" class="img-fluid rounded float-left pt-3" id="carImage" alt="...">
                </div>
                <div class="col-8 border-dark alert alert-primary" role="alert">
                  <div class="d-flex justify-content-center h2 text-secondary "><u>Seller Info</u></div>
                  <div class="d-flex flex-column bd-highlight bg-light rounded">
                    <div class="p-2 bd-highlight"><span>Name &nbsp;&nbsp;</span> &nbsp;&nbsp;${delCars.userId.name}</div>
                    <div class="p-2 bd-highlight"><span>Email &nbsp;&nbsp;&nbsp;</span> &nbsp; ${delCars.userId.email}</div>
                    <div class="p-2 bd-highlight"><span>Contact</span> &nbsp;&nbsp; ${delCars.userId.contact}</div>
                    <div class="p-2 bd-highlight"><span>Address</span> &nbsp;&nbsp; ${delCars.userId.address}</div>
                    <div class="p-2 bd-highlight"><span>Website</span> &nbsp;&nbsp; ${delCars.userId.websiteUrl}</div>
                  </div>
                </div>
               </div>
            </div>
          </div>

          <div class="row justify-content-around">                
            <div class="col border-dark alert alert-success m-4" role="alert">
              <div class="d-flex justify-content-center h2 text-secondary "><u>Cars Info</u></div>

              <table class="table table-striped">
                <tbody>
                  <tr>
                    <th scope="row">Name</th>
                    <td>${delCars.name}</td>
                  </tr>
                  <tr>
                    <th scope="row">Average</th>
                    <td>${delCars.average}</td>
                  </tr>
                  <tr>
                    <th scope="row">Km Driven</th>
                    <td>${delCars.kmDriven}</td>
                  </tr>
                  <tr>
                    <th scope="row">Price</th>
                    <td>${delCars.price}</td>
                  </tr>
                  <tr>
                    <th scope="row">Vechicle No</th>
                    <td>${delCars.vechicleNo}</td>
                  </tr>
                  <tr>
                    <th scope="row">Location</th>
                    <td>${delCars.rtoLocation}</td>
                  </tr>
                </tbody>
              </table>
              </div>
            </div>
           </div>
        </div>

        <%@ include file="footer.jsp"%>  
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

  </body>
</html>