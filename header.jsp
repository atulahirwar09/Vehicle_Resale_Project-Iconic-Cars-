<!-- JSTL Connection -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://kit.fontawesome.com/fa2f46837d.js" crossorigin="anonymous"></script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<style>
  .acc {
    text-decoration: none;
  }
</style>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <!-- logo -->
    <a href="home_page.do" class="navbar-brand mr-5">
      <img src="images/logo1.png" alt="logo" height="38">
      ICONIC CARS
    </a>  
    <!-- Three Lines Button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <!-- Search Feild -->

    <c:choose>
      <c:when test="${user eq null && client eq null}">
        
      </c:when>
      <c:when test="${client eq null}">
        <c:import url="dealer_menu.jsp" />
      </c:when>
      <c:otherwise>
        <c:import url="user_menu.jsp" />
      </c:otherwise>
    </c:choose>
    <!-- location Button -->
    
    <!-- Sign Button -->
    <!-- Button trigger modal -->
    <c:choose>
      <c:when test="${user eq null && client eq null}">
        <button type="button" class="btn btn-primary ml-md-auto">
          <a href="user_login.jsp" id="signinModal" class="text-decoration-none text-dark">
            Sign-In
          </a>
        </button>
      </c:when>
      <c:when test="${client eq null}">
        <div class="dropdown ml-md-auto">
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="bi bi-person-circle"></i> &nbsp; ${user.name}
          </button>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="signout.do">Logout</a>
          </div>
        </div>
      </c:when>
      <c:otherwise>
        <div class="dropdown ml-md-auto">
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="bi bi-person-circle"></i> &nbsp; Hello User
          </button>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="client_sign_out.do">Logout</a>
          </div>
        </div>
      </c:otherwise>
    </c:choose>
    
    <!-- Modal -->
    <div class="modal fade" id="sign_in_modal" tabindex="-1" aria-labelledby="exampleModal" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModal">Hi, Guest! <br>
              <p class="font-weight-light pb-md-0">Login to get your dream vechicle</p>
            </h5>     
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <a href="sign_login.do">
              <button type="button" class="btn btn-primary w-100" >Login</button>
            </a>
          </div>
          <div class="modal-footer" id="sign_acc">
            <a href="signup_indivisual.do" class="mr-md-auto acc"> 
              Create an <br> Individual Account <i class="bi bi-question-circle-fill"></i> 
            </a>
            <a href="signup_dealer.do" class="acc">
              Create an <br> Dealer Account <i class="bi bi-question-circle-fill"></i>             
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</nav>

<script>
  var signinModal = document.querySelector('#signinModal');

  signinModal.addEventListener('click', ()=> {
    $('sign_in_modal').modal('show');
  });
</script>
<!-- Sign Modal -->

<!-- <div class="modal fade" id="modal_sign_in" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Hi, Guest! <br><small>Login to get your dream Vechicle</small></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          
          <button type="submit" class="btn btn-primary w-100" id="login_btn">LOGIN</button>
          </form>
        </div>
        
        <div class="modal-footer">
          <a href="#" class="mr-auto">Create an <br>Individual Account <i style="font-size:24px" class="fa">&#xf059;</i> </a>
          <a href="#" class="">Create an <br>Dealer Account <i style="font-size:24px" class="fa">&#xf059;</i></a>
        </div>
      </div>
    </div>
  </div>  -->

  <!-- Menu Bar -->

  <!-- <script>
    const login_btn = document.querySelector('#login_btn');

    login_btn.addEventListener(click, ()=>{
      $('#myModal').modal('show');
    });
  </script> -->
