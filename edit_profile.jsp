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
        background-image: url(images/2.jpg);
        background-size: cover;
        background-attachment: fixed;
        font-family: Georgia, 'Times New Roman', Times;
    }
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
  <div class="container">      
    <div class="row p-md-4">
        
        <div class="col-md-7  m-auto p-md-4 rounded  shadow bg-light">
          <form action="save_profile_2.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="dcity" id="hidden">
            <label for="exampleFormControlTextarea1">Gender</label>
            <div class="form-row ml-md-1 mb-md-2 rounded border justify-content-around p-md-3">
              <div class="form-check">
                <input class="form-check-input" type="radio" name="gender" id="exampleRadios1" value="M" checked>
              <label class="form-check-label pr-md-4" for="exampleRadios1">
                Male
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="gender" id="exampleRadios2" value="F">
              <label class="form-check-label  pr-md-4" for="exampleRadios2">
                Female
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="gender" id="exampleRadios3" value="T" >
              <label class="form-check-label  pr-md-4" for="exampleRadios3">
                Other
              </label>
            </div>
          </div>
            <div class="form-group">
              <label for="exampleFormControlTextarea1">Address</label>
              <textarea class="form-control bg-transparent" name="address" required id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
            
            <div class="form-group">
              <label for="inputAddress">Website</label>
              <input type="text" class="form-control" name="website" required id="inputAddress">
            </div>              
            <div class="form-group">
              <label for="inputCity">City</label>
              <input type="text" class="form-control mb-md-3"  required id="city">
              <div id="city_list" class="d-none"></div>
            </div>            
            
            <div class="form-group border rounded-left">
              <label for="inputProfilePic" class="mb-3 pt-2 px-2">Profile pic</label>
              <input type="file" name="dProfilePic" class="mb-4 customfile " id="inputProfilePic">
            </div>
            <div class="form-group border rounded-right">
              <label for="inputCertificate" class="mb-3 pt-2 px-2">Certificate</label>
              <input type="file" name="dCertificate" class="mb-4 customfile" id="inputCertificate">
            </div>
          
            <p class="text-center">
              <button type="submit" class="btn btn-primary mt-md-3 ">Save and Continue</button>
            </p>
          </form>
        </div>
      </div>      
  </div>

<script>
  const city = document.querySelector('#city');
  let city_id = null;
  const city_list = document.querySelector('#city_list');
  let hidden = document.querySelector("#hidden");

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
                  elm.city_id = ct.cityId;
                  elm.addEventListener('click', (e) => {
                      city.value = e.target.innerText;  
                      city_id = e.target.city_id;
                      hidden.value = city_id;
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

</script>

  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
  
</body>
</html>

<!-- <div class="container">      
  <div class="row p-md-4">
      <div class="col-5  m-auto p-md-4 rounded  shadow bg-light">
        
        <form action="save_profile_2.do" method="post">
          <input type="hidden" name="dcity" id="hidden">
          <div class="form-group">
            <label for="exampleFormControlTextarea1">Address</label>
            <textarea class="form-control bg-transparent" name="address" required id="exampleFormControlTextarea1" rows="3"></textarea>
          </div>
          
          <div class="form-group">
            <label for="inputAddress">Website</label>
            <input type="text" class="form-control" name="website" required id="inputAddress">
          </div>              
          <div class="form-group">
            <label for="inputCity">City</label>
            <input type="text" class="form-control mb-md-3"  required id="city">
            <div id="city_list" class="d-none"></div>
          </div>
          <div class="form-row mt-md-4 ml-md-1">
            <div class="form-check">
              <input class="form-check-input" type="radio" name="gender" id="exampleRadios1" value="M" checked>
            <label class="form-check-label pr-md-4" for="exampleRadios1">
              Male
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="gender" id="exampleRadios2" value="F">
            <label class="form-check-label  pr-md-4" for="exampleRadios2">
              Female
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="gender" id="exampleRadios3" value="T" >
            <label class="form-check-label  pr-md-4" for="exampleRadios3">
              Other
            </label>
          </div>
          </div>
          <p class="text-center">
            <button type="submit" class="btn btn-primary mt-md-3 ">Save and Continue</button>
          </p>
        </form>
      </div>
    </div>      
</div> -->