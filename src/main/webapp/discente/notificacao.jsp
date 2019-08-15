<%-- 
    Document   : pagina_inicial
    Created on : 07/06/2018, 15:17:41
    Author     : Natan S. dos Santos
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="EventoDAO" class="com.br.OMT.DAO.EventoDAO" />
<jsp:useBean id="FotosEventosDAO" class="com.br.OMT.DAO.FotosEventosDAO" />
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Observat�rio Mundo do Trabalho</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <main>
            <c:set var="eventos" value="${EventoDAO.listEventos()}"/>
            <c:if test="${not empty usuario}">

                <div class="container-fluid">

                    <div class="row justify-content-center">

                        <div> 
                            <jsp:include page="pertil_flutuante.jsp"/>
                        </div>

                        <div class="col-8">
                            <nav class="navbar navbar-expand-lg navbar-light green darken-1">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a href="index.jsp" class="nav-link text-white">
                                            <i class="fa fa-arrow-alt-circle-left fa-lg"></i>
                                            Voltar
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                            <div class="tab-content card px-4 py-4">
                                <h4 href="#"><strong> Notifica��es</strong></h4>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">
                                                <div class="form-check">
                                                    <input class="form-check-input position-static" type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
                                                    <label class="form-check-label" for="inlineRadio1"> Selecionar tudo</label>
                                                </div>
                                            </th>
                                            <th scope="col">Mensagem</th>
                                            <th scope="col">Data</th>
                                            <th scope="col">Op��o</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="form-check">
                                                    <input class="form-check-input position-static" type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
                                                    <label class="form-check-label" for="inlineRadio1"> Tony Stark</label>
                                                </div>
                                            </td>
                                            <td>Venho por meio deste informar que sua...</td>
                                            <td>12/02/2003</td>
                                            <td><button class="btn btn-primary">Ver mais</button></td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="form-check">
                                                    <input class="form-check-input position-static" type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
                                                    <label class="form-check-label" for="inlineRadio1"> Tony Stark</label>
                                                </div>
                                            </td>
                                            <td>Venho por meio deste informar que sua...</td>
                                            <td>12/02/2003</td>
                                            <td><button class="btn btn-primary">Ver mais</button></td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="form-check">
                                                    <input class="form-check-input position-static" type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
                                                    <label class="form-check-label" for="inlineRadio1"> Tony Stark</label>
                                                </div>
                                            </td>
                                            <td>Venho por meio deste informar que sua...</td>
                                            <td>12/02/2003</td>
                                            <td><button class="btn btn-primary">Ver mais</button></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                </div>
            </c:if>
            <c:if test="${empty usuario}">
                <h1> Acesso negado <a href="../home.jsp">Volte para a tela de login </a></h1>
            </c:if>
        </main>
        <jsp:include page="../footer.jsp"/>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
        <script src="../js/general.js"></script>
    </body>
</html>
