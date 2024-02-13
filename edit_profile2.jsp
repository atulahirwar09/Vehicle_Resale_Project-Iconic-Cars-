<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.1/font/bootstrap-icons.css">
    <script src="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone-min.js"></script>
    <link href="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone.css" rel="stylesheet" type="text/css" />    

    <title>ICONIC CARS</title>
    <style>
    .bg-banner2 {
        background-image:url('images/car2.jpg');
        background-size: cover;
        
    }    
    .module-border-wrap { 
        background: linear-gradient(to right, red, rgb(130, 119, 199));
    } 
    #submitBtn {
        text-decoration: none;
    }  
    
    </style>
</head>
<body>    
  <%@ include file="header.jsp"%>
<!-- <div class="jumbotron jumbotron-fluid bg-banner2" id="jumbo1">
  <div class="container-fluid ">      
    <div class="row p-md-4">
        
        <div class="col-md-4  m-auto p-md-3 border-dark bg-white shadow rounded module-border-wrap">
            
            <h2>Dealer Profile Picture</h2>
            <div class="dropzone" id="my_dropzone"></div>
                <p class="text-center mt-md-3">
                    <input type="button" class="btn btn-primary btn-sm" value="Upload Profile Picture" id="upload_profile_pic">
                </p>
            </div>
        <div class="col-md-4  m-auto p-md-3  bg-white shadow rounded module-border-wrap">
            <h2>Dealer Certificate</h2>
            <div class="dropzone" id="my_dropzone2"></div>
            <p class="text-center mt-md-3">
                <input type="button" class="btn btn-primary btn-sm" value="Upload Certificate" id="upload_cert">
            </p>            
        </div>       
    </div>   

    <p class="text-center mt-md-5 mb-md-5 p-md-4">
        <button type="button" class="btn btn-success btn-lg " id="uploadComplete">
            <a href="upload_dealer_file.do">Submit</a>
        </button>
    </p>             -->
    <!-- <p class="text-center mt-md-5 mb-md-5 p-md-4">
        <button type="button" class="btn btn-success btn-lg " id="uploadComplete">Submit</button>
    </p>             -->
  <!-- </div>
</div>
  <script>
    let uploadComplete = document.querySelector('#uploadComplete');
    var i = 0;
    let uploadDp = document.querySelector('#upload_profile_pic');
    let uploadCert = document.querySelector('#upload_cert');

    let picUpload = new Dropzone('#my_dropzone', {
            url: 'upload_dealer_file.do',
            uploadMultiple: false,
            maxFilesize: 1,
            acceptedFiles: 'image/jpg,image/jpeg,image/png',
            autoProcessQueue: false,
            addRemoveLinks: true
        });
        console.log('11')

    uploadDp.addEventListener('click', () => {
        picUpload.processQueue();
        uploadDp.className = 'disabled btn btn-secondary';
        i++;
        console.log(i);
        console.log('12');
    });

    let certifUpload = new Dropzone('#my_dropzone2', {
        url: 'upload_dealer_file.do',
        uploadMultiple: false,
        maxFilesize: 1,
        acceptedFiles: 'image/jpg,image/jpeg,image/png',
        autoProcessQueue: false,
        addRemoveLinks: true
    });
    console.log('13');
    uploadCert.addEventListener('click', () => {
        certifUpload.processQueue();
        uploadCert.className = 'disabled btn btn-secondary';
        i++;
        console.log(i);
        console.log('14');
    }); -->

    
   
    
  </script>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</body>
</html>