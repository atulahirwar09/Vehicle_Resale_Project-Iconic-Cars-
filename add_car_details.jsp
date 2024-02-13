<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.1/font/bootstrap-icons.css">
  <link rel="stylesheet" href="css/style1.css">
  <title>ICONIC CARS</title>
  <style>
    .customfile{
      border: 2px solid #000;
      border-radius: 50px;
      padding: 2px;
      font-size: 15px;
    }
    .customfile::-webkit-file-upload-button{
      background: #000;
      color: #fff;
      padding: 4px, 8px;
      border: none;
      border-radius: 50px;
      cursor: pointer; 
    }
  </style>
</head>
<body>    
  <%@ include file="header.jsp"%>
    <div class="container-fluid">    
        <div class="row p-md-4">
            <div class="col-md-7 m-auto p-md-4 rounded  shadow bg-light">
              <h2 class="text-center mb-3">Enter Car Details</h2>
                <hr>  
                <form action="addCar.do" method="get" id="modifyCar">
                  <c:if test="${param.edit==1}">
                    <input type="hidden" name="edit" value="${param.edit}" id="edit1">
                    <input type="hidden" name="car_id" value="${param.cId}">
                    <input type="hidden" name="car_no" value="${param.vechicle_no}">
                    <input type="hidden" name="car_name" value="${param.name}" id="h_name">
                    <input type="hidden" name="car_loc" value="${param.rto_location}" id="car_loc">
                    <input type="hidden" name="car_pic_id" value="${param.car_pic_id}">
                  </c:if>
                    <div class="form-row">                     
                      <div class="form-group col-md-6" id="man">
                        <label for="inputManufactures">Manufactures</label>
                        <select id="inputManufactures" required class="form-control" name="cManufactures">
                          <option selected disabled>Choose...</option>
                          <option value="1">Mahindra</option>
                          <option value="2">Toyota</option>
                          <option value="3">Maruti Suzuki</option>
                          <option value="4">Honda</option>
                          <option value="5">Kia</option>
                          <option value="6">Tata</option>
                          <option value="7">Ashok Leyland</option>
                          <option value="8">Bajaj</option>
                          <option value="9">Eicher</option>
                          <option value="10">Jeep</option>
                          <option value="11">BMW India</option>
                          <option value="12">Mercedes Benz</option>
                          <option value="13">MG Motor</option>
                          <option value="14">Nissan</option>
                          <option value="15">Audi</option>
                          <option value="16">Porshe</option>
                          <option value="17">Volkaswagen</option>
                          <option value="18">Lexus</option>
                          <option value="19">Renault</option>
                          <option value="20">Datsun</option>
                          <option value="21">Hyundai</option>
                        </select>
                      </div>
                      <div class="form-group col-md-6" id="c_name">
                        <label for="inputCarName ">Car Name</label>
                        <input type="text" class="form-control" required name="cName" id="inputCarName" value="${param.name}">
                        <div class="d-none border" id="carName"></div>
                        <input type="hidden" name="chidden" id="chidden">
                      </div>
                    </div>
                    <div class="form-row">
                      <div class="form-group col-md-6" id="ct_box">
                        <label for="city">RTO Location</label>
                        <input type="text" class="form-control" required name="city" id="city">
                        <div class="d-none border" id="city_list"></div>
                      </div>
                      <div class="form-group col-md-6">
                        <label for="inputAverage">Average</label>
                        <input type="text" class="form-control" required name="average" id="inputAverage" value="${param.average}">
                      </div>
                    </div>                                      
                    
                    <div class="form-row">
                      <div class="form-group col-md-4">
                          <label for="inputVechicleNum" >Vechicle Number</label>
                          <input type="text" class="form-control" required name="vechicleNum" maxlength="10" id="inputVechicleNum" placeholder="eg. 5000" value="${param.vechicle_no}">
                        </div>
                        <div class="form-group col-md-4">
                          <label for="inputRegDate">Registration Date</label>
                          <input type="date" name="regDate" required class="form-control" id="inputRegDate" placeholder="1/1/2023" value="${param.date}">
                        </div>                    
                        <div class="form-group col-md-4">
                          <label for="inputKmDrive" >KM Driven</label>
                          <input type="text" name="kmDriven" required class="form-control" maxlength="6" id="inputKmDrive" placeholder="eg. 5000" value="${param.km_driven}">
                        </div>
                    </div>
                    <div class="form-row mb-3">                    
                      <div class="form-group col-md-6 ">
                        <label for="owner" class="">Owner</label>
                        <input type="text"  required name="cOwner" class="form-control" id="owner" placeholder="eg. 1,2,3" value="${param.owner}">
                      </div>
                      <div class="form-group col-md-6 ">
                        <label for="price" class="font-weight-bolder">Price</label>
                        <input type="number" required name="cPrice" class="form-control" id="price" placeholder="eg. 40,00,000" value="${param.price}">
                      </div>
                    </div>
                    <p class="text-center">                  
                      <button type="submit" class="btn btn-primary w-100 font-weight-bolder">Save</button>
                    </p>
                  </form>
                </div>       
            </div>    
          </div>
          <%@ include file="footer.jsp"%>

  
<script>
      const manu = document.querySelector('#inputManufactures');
      const cName = document.querySelector('#inputCarName');
      const carNm = document.querySelector('#carName');
      const chidden = document.querySelector('#chidden');
      const modify_car = document.querySelector('#modifyCar');
      
      let carNmId = null;
      
      const city = document.querySelector('#city');
      let city_id = null;
      const city_list = document.querySelector('#city_list');
      

      var edit = document.querySelector('#edit1');
      var man = document.querySelector('#man');
      var c_name = document.querySelector('#c_name');
      var h_name = document.querySelector('#h_name');
      var car_loc = document.querySelector('#car_loc'); 


      
      
    const carNameRequest = async () => {
            let result = await fetch('search_carName.do?cName='+cName.value+'&manu='+manu.value);   
                    
            let tmp = await result.json();

            return tmp;
        };
        
    cName.addEventListener('keyup', (e) => {
      console.log('111');
      var input = e.target.value;
      if(input.length > 2) {
        console.log('222');
        carNameRequest().then((data)=>{
          carNm.innerHTML = null;
          carNm.classList.replace('d-none', 'd-block');
          for(var ct of data) {
            console.log('333');
            console.log(ct);
                  let elm = document.createElement('div');
                  elm.className = 'ct_rec';
                  elm.innerText = ct.carName +' , '+ ct.modal;
                  elm.carNmId = ct.carBrandId;
                  elm.addEventListener('click', (e) => {
                      cName.value = e.target.innerText;  
                      carNmId = e.target.carNmId;
                      chidden.value = carNmId;
                      carNm.classList.replace('d-block', 'd-none');  

                      console.log(carNmId);
                  });
                  carNm.append(elm);
              }
          }).catch((err)=>{
              console.log(err);                    
          });
      } else {
        carNm.innerHTML = null;
        carNm.classList.replace('d-block','d-none');
      }
  });


  const cityRequest = async () => {
            let result = await fetch('search_city.do?city='+city.value);   
                    
            let tmp = await result.json();

            return tmp;
        };

  city.addEventListener('keyup', (e) => {
      var input = e.target.value;
      if(input.length > 2) {
          cityRequest().then((data)=>{
              city_list.innerHTML = null;
              city_list.classList.replace('d-none', 'd-block');
              for(var ct of data) {
                  console.log(ct);
                  let elm = document.createElement('div');
                  elm.className = 'ct_rec';
                  elm.innerText = ct.city;
                  elm.addEventListener('click', (e) => {
                      city.value = e.target.innerText;  
                      city_list.classList.replace('d-block', 'd-none');  
                  });
                  city_list.append(elm);
              }
          }).catch((err)=>{
              console.log(err);                    
          });
      } else {
        city_list.innerHTML = null;
        city_list.classList.replace('d-block','d-none');
      }
  });
  
  if(edit.value==1) {
    man.classList.add('d-none');
    modify_car.action = "edit_car.do"
    c_name.classList.replace('col-md-6', 'col');
    cName.value = h_name.value;
    city.value = car_loc.value;
  }
    
  </script>
 
 <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bs-custom-file-input/dist/bs-custom-file-input.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bs-custom-file-input/dist/bs-custom-file-input.min.js"></script>
</body>
</html>

<!-- <div class="form-group col-md-5 pt-2 ">
  <label for="" class="font-weight-bold ml-2 ">Car Pics</label>
  <input type="file" required name="cPics" multiple class="mb-4 customfile " id="">
</div> -->
<!--
                        </div> -->

                        <!-- Button trigger modal -->
                        <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                          Launch demo modal
                        </button> -->

                        <!-- Modal -->
                        <!-- <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                          <div class="modal-dialog modal-dialog-scrollable">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">
                                  <input class="form-control" type="search" placeholder="Search" aria-label="Search" id="search_bar">
                                  <button type="button" class="btn btn-info">
                                    Search <i class="bi bi-search"></i> 
                                  </button>
                                </h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                ...
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                              </div>
                            </div>
                          </div>
                        </div>
                    </div> -->

                    <!-- const locationReq = async () => {
                      let lResult = await fetch('search_city.do?city='+inputRto.value);
                      let temp = await result.json();
                      return temp;
                    };
                  
                    inputRto.addEventListener('keyup', (e) => {
                      var inputR = e.target.value;
                      if(inputR.length>2) {
                        locationReq().then((data)=>{
                          location.innerHTML = null;
                          location.classList.replace('d-none', 'd-block');
                          for(var loc of data) {
                            console.log(loc);
                            let elmt = document.createElement('div');
                            elmt.className = 'loc_rec';
                            elmt.innerText = loc.city;
                            elmt.rtoLoc = loc.cityId;
                            elmt.addEventListener('click', (e) => {
                                  inputRto.value = e.target.innerText;  
                                  rtoLoc = e.target.city_id;
                                  locHidden.value = city_id;
                                  location.classList.replace('d-block', 'd-none');  
                                });
                                city_list.append(elm);
                          }
                        }).catch((err)=>{
                          console.log(err);
                        });
                      } else {
                        location.innerHTML = null;
                        location.classList.replace('d-block', 'd-none');
                      }
                    });  -->