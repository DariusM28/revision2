<%-- 
    Document   : idx_repostes
    Created on : 25/10/2023, 20:45:59
    Author     : Renato
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>reportes</title>
    </head>
    <body>
         <% 
       
     
       HttpSession sesion = request.getSession();
        if(sesion.getAttribute("txt_usuario") == null){
   response.sendRedirect("logincliente.jsp");
}else{
         
          }
 
       
      %>
         
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="idx_trab.jsp">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
          
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="idx_trab.jsp" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            PRODUCTO
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="idx_marcas.jsp">MARCA</a></li>
          </ul>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="idx_ventas.jsp" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            VENTAS
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="idx_cliente.jsp">CLIENTES</a></li>
              <li><a class="dropdown-item" href="idx_empledos.jsp">EMPLEADO</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="idx_puestos.jsp">PUESTOS</a></li>
          </ul>
        </li>
        
        
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="idx_compras.jsp" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            COMPRAS
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="idx_proveedores.jsp">PROVEEDORES</a></li>
          </ul>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="idx_reportes.jsp">REPORTES</a>
        </li>
        
        
      </ul>
    </div>
  </div>
</nav>
        
        
        <h1>Reportes</h1>
        
        
    </body>
</html>
