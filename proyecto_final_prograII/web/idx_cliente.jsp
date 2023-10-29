

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Clientes" %>
<%@page import="java.util.HashMap" %>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import ="modelo.Clientes" %>
<%@page import ="javax.swing.table.DefaultTableModel" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>lista de clientes</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
 
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
        
         <h1>Listado de Clientes</h1>
        
        
         <table class="table table-dark table-hover" >
                    <thead>
                      <tr>
                        <th>Nombres</th>
                        <th>Apellidos</th>
                        <th>NIT</th>
                        <th>Genero</th>
                        <th>Telefono</th>
                        <th>Correo Electronico</th>
                        <th>Fecha Ingreso</th>
                      </tr>
                    </thead>
                    <tbody id="tbl_clientes">
                        <%
                            Clientes clientes = new Clientes();
                            DefaultTableModel tabla = new DefaultTableModel();
                            tabla = clientes.leer();
                            for(int j=0;j<tabla.getRowCount();j++){
                                out.println("<tr data-id="+ tabla.getValueAt(j,0)+">");
                                    out.println("<td>"+ tabla.getValueAt(j,1)+"</td>");
                                    out.println("<td>"+ tabla.getValueAt(j,2)+"</td>");
                                    out.println("<td>"+ tabla.getValueAt(j,3)+"</td>");
                                    out.println("<td>"+ tabla.getValueAt(j,4)+"</td>");
                                    out.println("<td>"+ tabla.getValueAt(j,5)+"</td>");
                                    out.println("<td>"+ tabla.getValueAt(j,6)+"</td>");
                                    out.println("<td>"+ tabla.getValueAt(j,7)+"</td>");
                                out.println("</tr>");
                            }
                        %>   
                        
                    </tbody>
                  </table>
        
         <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
       
    
        
    </body>
</html>
