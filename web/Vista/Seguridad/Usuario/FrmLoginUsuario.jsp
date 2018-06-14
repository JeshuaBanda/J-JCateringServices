<%-- 
    Document   : FrmLoginUsuario
    Created on : 13-jun-2018, 19:04:41
    Author     : Jeshua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<title>Login V16</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <script>
              function  entrar()
              {
                 document.form.action="<%=request.getContextPath()%>/UsuariosServlet";
                 document.form.method="POST";
                 document.form.op.value="2";
                 document.form.submit();
              }             
            function   limpiar()
            {              
                document.getElementById('username').value= ""; 
                document.getElementById('pass').value= ""; 
            }
        </script>
    </head>
    <body onload="limpiar()">
        <div >
            <div style="background-image: url('<%=request.getContextPath()%>/images/bg-01.jpg');">
                <div>
                    <span>
			Iniciar Sesion
                    </span>
                    <form action="UsuariosServlet" method="post" >
                        <div>
                            <input type="text" name="username" id="username" placeholder="Usuario">
                            <span class="focus-input100" ></span>
                        </div>
                        <div>
                            <input type="password" name="pass" id="pass" placeholder="Contraseña">
                            <span class="focus-input100" ></span>
                        </div>
                        <div>
                            <button id="btnIngresar" type="submit">
				Ingresar
                            </button>
                        </div>
                    </form>
                </div>
            </div>
	</div>
        <div></div>
        
    </body>
</html>
