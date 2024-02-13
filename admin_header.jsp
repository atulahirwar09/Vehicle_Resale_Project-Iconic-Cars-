<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-light " style="background-color: #e3f2fd;">
    <a class="navbar-brand" href="#">
        <img src="images/logo1.png" alt="logo" height="38">
        Iconic Cars
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <a:if test="${admin ne null}">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active ml-3">
              <a class="nav-link btn btn-outline-warning" href="admin_dashboard.do">SELLERS <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active ml-3">
              <a class="nav-link btn btn-outline-info" href="admin_car.do">CARS</a>
            </li>
          </ul>

          <div class="dropdown">
            
            <div class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
              Hello Mr. ${admin.name}
            </div>

          
            <div class="dropdown-menu">
              <a class="dropdown-item btn btn-outline-info" href="admin_logout.do">LogOut</a>
            </div>
          </div>

        </div>
    </a:if>
</nav>

