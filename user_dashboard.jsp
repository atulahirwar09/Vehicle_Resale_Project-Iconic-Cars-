<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <title>Iconic Cars</title>
    <style>

      #carImage{
        max-height: 200px;
        max-width: 300px;
      }
      </style>  

  </head>
  <body>
    <%@ include file="header.jsp"%>

    <div class="container-fluid">
      <div class="row">
        <div class="col">
          
          <div class="text-center font-weight-bolder h3 py-2 text-info border-bottom">Your Cart <span><i class="fa-solid fa-cart-shopping text-dark"></i></span></div>
              
          <div class="card-deck">
            <div class="row justify-content-start ">
              <c:forEach var="del_car1" items="${delCars1}">
                <div class="col mb-2">
                  <div class="card d-inline-block" style="width: 16rem;">
                    <div class="card-body border-bottom" style="width: 14rem;height: 14rem;">
                      <img src="fetch_image.do?image_id=${del_car1.carPicId.carPicId}&car_num=${del_car1.vechicleNo}" class="card-img-top img-fluid" id="carImage" alt="...">
                    </div>               
                    <div class="card-body">
                      <h5 class="card-title">${del_car1.name.toUpperCase()}</h5>
                    </div>
                    <ul class="list-group list-group-flush">
                      <li class="list-group-item"><b>Vechicle No</b> ${del_car1.vechicleNo}</li>
                      <li class="list-group-item"><b>Reg Date</b>&nbsp;&nbsp;&nbsp; ${del_car1.regDate}</li>
                      <li class="list-group-item"><b>Location&nbsp;&nbsp;&nbsp;</b> ${del_car1.rtoLocation}</li>
                    </ul>
                  </div>
                </div>
              </c:forEach>
            </div>
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