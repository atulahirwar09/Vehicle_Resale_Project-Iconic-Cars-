<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.1/font/bootstrap-icons.css">
  <script src="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone-min.js"></script>
  <link href="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="css/style1.css">
  <title>ICONIC CARS</title>
  <style>
    #drop_img {
            width: 80%;
            border: 5px solid #111;
            border-radius: 5px;
            margin: 50px auto;
            background-color: #eee;
            color: #555;
            font-family: verdana;
            font-size: 26px;
            font-weight: bold;
        }
  </style>
</head>
<body>    
  <%@ include file="header.jsp"%>
  
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6 mx-auto  rounded-pill mt-5 p-3">
            <h4 class="p-2 font-weight-bold text-center">Add Car Photos</h4>
            <div id="drop_img" class="dropzone"></div>
            <div style="text-align: center;"> 
              <input type="button" class="btn btn-primary w-25" value="Upload" id="btn">
            </div>
        </div>
    </div>
</div>


  <script>
    const btn = document.querySelector('#btn');

    let dropImg = new Dropzone('#drop_img', {
      url: 'addCar.do',
      uploadMultiple: true,
      acceptedFiles: 'image/png,.jpg,.gif',
      autoProcessQueue: false,
      maxFilesize: 2,
      createImageThumbnails: true,
      thumbnailWidth: 100,
      thumbnailHeight: 100,
      addRemoveLinks: true,
      parallelUploads: 10
    }); 

    btn.addEventListener('click', () => {
        dropImg.processQueue();

        console.log('upload pic btn');
        window.location = "dealer_cars.do";
    });
  </script>

  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</body>
</html>