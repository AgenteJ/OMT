<%-- 
    Document   : curriculo
    Created on : 07/06/2018, 15:20:11
    Author     : Natan S. dos Santos
--%>
<%@page import="java.time.Period"%>
<%@page pageEncoding="ISO-8859-1"%>
<%-- @page language="java" contentType="text/html; charset=UTF-8"--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="FormacaoDAO" class="com.br.OMT.DAO.FormacaoDAO"/>
<jsp:useBean id="TrabalhoCurriculoDAO" class="com.br.OMT.DAO.TrabalhoCurriculoDAO"/>
<jsp:useBean id="ProjetosDAO" class="com.br.OMT.DAO.ProjetosDAO"/>
<jsp:useBean id="IOUtils" class="org.apache.commons.io.IOUtils"/>
<c:set var="formacoes" value="${FormacaoDAO.listarPorID(usuario.id)}"/>
<c:set var="trabalhosCurriculo" value="${TrabalhoCurriculoDAO.listTrabalhoCurriculoByDiscente(usuario.id)}"/>
<c:set var="projetos" value="${ProjetosDAO.listByDiscente(usuario.id)}"/>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Curr�culo</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <jsp:include page="../discente/header.jsp"/>

        <main>
            <div class="container-fluid col-lg-8">
                <nav class="navbar navbar-expand-lg navbar-light green darken-1">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a href="javascript:history.back()" class="nav-link text-white">
                                <i class="fa fa-arrow-alt-circle-left fa-lg"></i>
                                Voltar
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="index.jsp" class="nav-link text-white">
                                <i class="fa fa-home fa-lg">
                                </i>P�gina inicial
                            </a>
                        </li>
                    </ul>
                </nav>
                <div id="to-pdf">
                    <div class="card px-4 py-4">
                        <section>
                            <div class="form-row align-items-center">
                                <div class="col-sm-6">
                                    <h3 class="font-weight-bold mb-4">Dados pessoais</h3>
                                </div>
                                <div class="col-sm-6">
                                    <a href="../discente/alterarPerfil.jsp" class="btn btn-primary float-right">
                                        <i class="fa fa-edit mr-1"></i>Atualizar informa��es
                                    </a>
                                </div>  
                            </div>
                            <div class="mr-3 ml-2">
                                <div class="form-row mt-2 mb-3">
                                    <div class="col-auto">
                                        <div class="">
                                            <c:choose>
                                                <c:when test="${fn:length(usuario.foto) > 0}">
                                                    <div>
                                                        <img class="foto-curriculo border border-light rounded z-depth-1" src="${IOUtils.toString(usuario.foto, 'UTF-8')}">
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div>
                                                        <img class="foto-curriculo border border-light rounded z-depth-1" src="../img/student.png">
                                                    </div>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <h4><c:out value="${usuario.nome}"/></h4>
                                        <h5><c:out value="${usuario.formacao.nome}"/></h5>
                                        <h6>Manaus, Amazonas, Brasil</h6>
                                        <a class="d-block" target="blank" href="${usuario.linkCurriculoLattes}">
                                            Curr�culo Lattes</a>
                                        <a class="d-block" target="blank" href="${usuario.linkPerfilLinkedIn}">
                                            <i class="fab fa-linkedin-in mr-1"></i>Perfil LinkedIn</a>
                                    </div>
                                </div>
                                <table class="table table-sm table-bordered">
                                    <tbody>
                                        <tr>
                                            <th scope="row">Nome em cita��es bibliogr�ficas</th>
                                            <td>LIMA, V. Y. P.</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Sexo</th>
                                            <td><c:out value="${usuario.sexo}"/></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Etnia</th>
                                            <td><c:out value="${usuario.etnia}"/></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Filia��o</th>
                                            <td>${usuario.nomePai} e ${usuario.nomeMae}</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Estado Civil</th>
                                            <td><c:out value="${usuario.estadoCivil}"/></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Idade</th>
                                            <td>${usuario.idade} anos </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Nascimento</th>
                                            <td><fmt:formatDate type="both" dateStyle="short" pattern="dd/MM/yyyy" value="${usuario.dataNascimento}"/> - Brasil</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Carteira de Identidade</th>
                                            <td>40028922 SSP - AM - 12/07/2012</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">CPF</th>
                                            <td class="CPF"><c:out value="${usuario.CPF}"/> </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Endere�o residencial</th>
                                            <td>Av. Djalma Batista</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                                <i class="fa fa-phone mr-1"></i>Telefone
                                            </th>
                                            <td>4002-8922</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                                <i class="fa fa-at mr-1"></i>Endere�o eletr�nico
                                            </th>
                                            <td>E-mail para contato : ${usuario.email}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </section> 
                        <hr class="my-4">
                        <section>
                            <div class="form-row align-items-center">
                                <div class="col-sm-6">
                                    <h3 class="font-weight-bold">Forma��o acad�mica/ titula��o </h3>
                                </div>
                                <div class="col-sm-6">
                                    <a href="../cadastro/formacao.jsp" class="btn btn-primary float-right"><i class="fa fa-plus mr-1"></i>Adicionar forma��o</a>
                                </div>
                            </div>
                            <div class="mr-3 ml-2">
                                <c:if test="${formacoes.size() > 0}">
                                    <table class="table table-sm table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Nome</th>
                                                <th>Escola/Institui��o</th>
                                                <th>Ano de t�rmino</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${formacoes}" var="formacao">
                                                <tr>
                                                    <td><c:out value="${formacao.nome}"/></td>
                                                    <td><c:out value="${formacao.escola}"/></td>
                                                    <td><c:out value="${formacao.anoTermino}"/></td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </c:if>
                                <c:if test="${formacoes.size() == 0}">
                                    <h4 class="grey-text text-center my-4">
                                        Nenhuma forma��o registrada ainda
                                    </h4>
                                </c:if>
                            </div>
                        </section>
                        <hr class="my-4">
                        <section>
                            <div class="form-row align-items-center">
                                <div class="col-sm-6">
                                    <h3 class="font-weight-bold mb-4">Experi�ncias profissionais</h3>
                                </div>
                                <div class="col-sm-6">
                                    <a href="../cadastro/experienciaProfissional.jsp" class="btn btn-primary float-right"><i class="fa fa-plus mr-1"></i>Adicionar experi�ncia</a>
                                </div>
                            </div>

                            <div class="mr-3 ml-2">
                                <c:if test="${trabalhosCurriculo.size() > 0}">
                                    <table class="table table-sm table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Profiss�o</th>
                                                <th>Descri��o</th>
                                                <th>In�cio</th>
                                                <th>Fim</th>
                                                <th>Dura��o</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${trabalhosCurriculo}" var="trabalhoCurriculo">
                                                <tr>
                                                    <td><c:out value="${trabalhoCurriculo.profissao}"/></td>
                                                    <td><c:out value="${trabalhoCurriculo.descricao}"/></td>
                                                    <td><fmt:formatDate type="both" dateStyle="short" pattern="dd/MM/yyyy" value="${trabalhoCurriculo.tempoInicio}"/></td>
                                                    <td><fmt:formatDate type="both" dateStyle="short" pattern="dd/MM/yyyy" value="${trabalhoCurriculo.tempoFinal}"/></td>
                                                    <td><fmt:formatNumber type="number" maxFractionDigits="2" value="${trabalhoCurriculo.duracao/1000/60/60/24/365}"/> anos</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </c:if>
                                <c:if test="${trabalhosCurriculo.size() == 0}">
                                    <h4 class="grey-text text-center my-4">
                                        Sem experi�ncia profissional
                                    </h4>
                                </c:if>
                            </div>
                        </section>
                        <hr class="my-4">
                        <section>
                            <div class="form-row align-items-center">
                                <div class="col-sm-6">
                                    <h3 class="font-weight-bold mb-4">Participa��o em projetos acad�micos</h3>
                                </div>
                                <div class="col-sm-6">
                                    <a href="../cadastro/projeto.jsp" class="btn btn-primary float-right"><i class="fa fa-plus mr-1"></i>Adicionar projeto</a>
                                </div>
                            </div>
                            <div class="mr-3 ml-2">
                                <c:if test="${projetos.size() > 0}">
                                    <table class="table table-sm table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Nome</th>
                                                <th>Descri��o</th>
                                                <th>�rea</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${projetos}" var="projeto">
                                                <tr>
                                                    <td><c:out value="${projeto.nome}"/></td>
                                                    <td><c:out value="${projeto.descricao}"/></td>
                                                    <td><c:out value="${projeto.area}"/></td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </c:if>
                                <c:if test="${projetos.size() == 0}">
                                    <h4 class="grey-text text-center my-4">
                                        Nenhum projeto registrado
                                    </h4>
                                </c:if>
                            </div>
                        </section>
                        <hr class="my-4">
                        <div class="row">
                            <section class="col-sm-12 col-lg-6">
                                <div class="form-row align-items-center">
                                    <div class="col-sm-6">
                                        <h3 class="font-weight-bold mb-4">�reas de atua��o</h3>
                                    </div>
                                    <div class="col-sm-6">
                                        <a href="../cadastro/AreaDeAtuacao.jsp" class="btn btn-primary float-right"><i class="fa fa-plus mr-1"></i>Adicionar �rea de atua��o</a>
                                    </div>
                                </div>

                                <div class="mr-3 ml-2">
                                    <table class="table table-sm table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Nome</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Ci�ncia da Computa��o</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </section>
                            <hr class="my-4">
                            <section class="col-sm-12 col-lg-6">
                                <div class="form-row align-items-center">
                                    <div class="col-sm-6">
                                        <h3 class="font-weight-bold mb-4">Idiomas</h3>
                                    </div>
                                    <div class="col-sm-6">
                                        <a href="../cadastro/idioma.jsp" class="btn float-right btn-primary"><i class="fa fa-plus mr-1"></i>Adicionar idioma</a>
                                    </div>
                                </div>
                                <div class="mr-3 ml-2">
                                    <table class="table table-sm table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Nome</th>
                                                <th>Situa��o</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Ingl�s</td>
                                                <td>Compreende Razoavelmente , Fala Pouco , Escreve Razoavelmente , L� Bem </td>
                                            </tr>
                                            <tr>
                                                <td>Portugu�s</td>
                                                <td >Compreende Bem , Fala Bem , Escreve Bem , L� Bem </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </section>
                        </div>
                        <hr>

                        <div class="text-right">
                            <!--button id="btnBaixarCurriculo" class="btn btn-md btn-cyan"><i class="fa fa-download mr-1"></i>Baixar</button-->
                            <button id="btnImprimirCurriculo" class="btn btn-md btn-mdb-color"><i class="fa fa-print mr-1"></i>Imprimir</button>
                        </div>
                    </div>
                </div>
            </div>

        </main>
        <jsp:include page="../footer.jsp"/>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
        <script src="../js/general.js"></script>
        <script src="../js/jquery.mask.min.js"></script>
        <script src="../js/mascaras.js"></script>
        <script src="../js/jspdf.min.js"></script>
        <script src="../js/html2canvas.min.js"></script>
        <script src="../js/general.js"></script>
        <script type="text/javascript">
            $("#btnBaixarCurriculo").click(function () {
                var pdf = new jsPDF('p', 'pt', 'a4');
                var original = $("#to-pdf");
                var novo = Object.assign({}, original);

                $($(novo).find('.not-printable')).each(function () {
                    $(this).hide();
                });
                var padding = $(novo).css('padding');
                $(novo).css('padding', '20px');
                pdf.addHTML(novo, function () {
                    pdf.save('web.pdf');
                    $($(novo).find('.not-printable')).each(function () {
                        $(this).show();
                    });
                    $(novo).css('padding', padding);
                });
            });
            $("#btnImprimirCurriculo").click(function () {
                window.print();
            });
        </script>
    </body>
</html>
