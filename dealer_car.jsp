<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.1/font/bootstrap-icons.css">
  <title>ICONIC CARS</title>
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
    <div class="row shadow">
      <div class="col-md-10 py-2">
      </div>
      <div class="col-md-2 ">
        <button class="btn btn-outline-secondary mt-2 ml-5 mb-2">
          <a href="add_car_details.jsp?edit=0" class="text-decoration-none text-dark">
            Add Car
          </a>
        </button>
      </div>
    </div>
    <div class="row">
      <div class="col">
        <div class="card-deck">
          <div class="row justify-content-start ">
            <c:forEach var="carItems" items="${carData}">
              <div class="col my-4">
                <div class="card d-inline-block" style="width: 16rem;">
                  <div class="card-body border-bottom" style="width: 14rem;height: 14rem;">
                    <img src="fetch_image.do?image_id=${carItems.carPicId.carPicId}&car_num=${carItems.vechicleNo}" class="card-img-top img-fluid" id="carImage" alt="...">
                  </div>               
                  <div class="card-body">
                    <h5 class="card-title">${carItems.name.toUpperCase()}</h5>
                  </div>
                  <ul class="list-group list-group-flush">
                    <li class="list-group-item"><b>Vechicle Number</b> ${carItems.vechicleNo.toUpperCase()}</li>
                    <li class="list-group-item"><b>Reg Date</b>&nbsp;&nbsp;&nbsp; ${carItems.regDate}</li>
                    <li class="list-group-item"><b>RTO Registered&nbsp;&nbsp;&nbsp;</b> ${carItems.rtoLocation}</li>
                  </ul>
                  <div class="card-body">
                    <a href="add_car_details.jsp?edit=1&cId=${carItems.carId}&name=${carItems.name}&average=${carItems.average}&date=${carItems.regDate}&km_driven=${carItems.kmDriven}&price=${carItems.price}&vechicle_no=${carItems.vechicleNo}&rto_location=${carItems.rtoLocation}&owner=${carItems.owner}&car_pic_id=${carItems.carPicId.carPicId}" class="card-link ">Edit <i class="fa-solid fa-pen-to-square"></i></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="deleteCar.do?delCar=${carItems.carId}&vechNo=${carItems.vechicleNo}" class="card-link text-danger">Delete <i class="fa-solid fa-trash"></i></a>
                  </div>
                </div>
              </div>
            </c:forEach>
          </div>
        </div>
      </div>
    </div>   
  </div>

  
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</body>
</html>

<!-- <div class="card mb-3 d-inline-block" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img src="images/logo.png" id="car_image" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">${car.name}</h5>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div> -->