<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%
<!DOCTYPE html>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
   <title>Alta de Usuario</title>
  </head>
<body>
 <div class="container-fluid">
            <a class="fw-bold navbar-brand text-primary" href="#">Backoffice</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="active nav-link text-primary" href="/bootcamp-jsp-html/user/list">BajaUsusario</a></li>
                    <li class="nav-item"><a class="active nav-link text-primary" href="/bootcamp-jsp-html/category/list">ModificaciónUsuario</a></li
                </ul>
            </div>
        </div>
<%
if (request.getAttribute("r_status") != null){
            if ((String) request.getAttribute("r_status") == "OK"){
                out.println("<h1>Alta de usuario</h1>");
            }
            if ((String)request.getAttribute("r_status") == "ERROR"){
                out.println("<h1>"+(String) request.getAttribute("r_msg")+"</h1>");
            }
        }
%>
<h2>Agregar Usuario</h2>
<div class = "container">
 <form action="/Hello" method="POST">
  <label for="fname">Nombre:</label><br>
  <input type="text" id="fname" name="fname" value="******"><br>
  <label for="lname">Apellido:</label><br>
  <input type="text" id="lname" name="lname" value="******"><br><br>
  <label for="text">TipoUsuario:</label><br>
  <input type="text" id="text" name="text" value="Admin"><br><br>
  <label for="date">Fecha:</label><br>
  <input type="date" id="date" name="date" value="mm/dd/yyyy"><br><br>
  <input type="submit" value="Crear">
 </form>
</div>
<p>If you click the "Crear" button, the form-data will be sent to a page called "/action_page.php".</p>
<div class="container">
    <footer>
        <div class="row">
            <div class="col-2">Marca Registrada</div>
            <div class="col-2"><p>copy 2023</p></div>
            <div class="col-1"><b>Contactos:</b></div>
            <div class="col-2"><a href="#">Telefono +56 9 000000 </a></div>
            <div class="col-4"><a href="#">Correo: ABMsoluciones123@gmail.com </a></div>

        </div>
    </footer>
</div>
</body>
</html>

