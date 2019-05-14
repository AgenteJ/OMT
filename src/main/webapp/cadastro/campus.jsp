<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro de Empresa</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    
    <body>
        <%@include file="../header.jsp"%>
        <!--mensagem de boas vindas-->
        <h4 class="text-center my-4">
            Seja bem-vindo ao<br>
            <img src="../img/logoInicial.png" alt="Logotipo do OMT" height="150" width="300">
        </h4> 
        
        <div class="container">
             <!--Nav Tabs-->
                <ul class="nav nav-tabs nav-justified green darken-2" role="tablist">
                    <li class="nav-item">
                        <a href="egresso.jsp" class="nav-link" data-toggle="tab" role="tab">
                            <i class="fas fa-user-graduate fa-lg"></i>
                             Discente
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="campus.jsp" class="nav-link active" data-toggle="tab" role="tab">
                            <i class="fas fa-school fa-lg"></i>
                             Campus
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="empresa.jsp" class="nav-link" data-toggle="tab" role="tab">
                            <i class="fas fa-briefcase fa-lg"></i> Empresa</a>
                    </li>
                    <li class="nav-item">
                        <a href="administrador.jsp" class="nav-link">
                            <i class="fa fa-user-tie fa-lg"></i>   Administrador</a>
                    </li>
                </ul>
            <div class="card px-4 py-4">
                <form method="post" name="cadastrar-campus" id="cadastrar-campus" action="/OMT/CampusServlet">
                    <section>
                        <h4 class="mb-4"><strong>Dados do Campus</strong></h4>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="cnpj">CNPJ</label>
                                <input class="form-control CNPJ" type="text" id="cnpj" name="cnpj" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="cnae">CNAE</label>
                                <input class="form-control CNAE" type="text" id="cnae" name="cnae" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nome">Nome do Campus</label>
                            <input class="form-control" type="text" id="nome" name="nome" required>
                        </div>
                        <div class="form-group">
                            <label for="nomeFantasia">Nome Fantasia do Campus</label>
                            <input class="form-control" type="text" id="nomeFantasia" name="nomeFantasia" required>
                        </div>
                        <div class="form-group">
                            <label for="cep">CEP</label>
                            <input class="form-control CEP" type="text" id="cep" name="cep" required aria-describedby="infoCEP">
                            <small id="infoCEP" class="form-text text-muted">
                                Preenchendo o CEP, outros campos relacionados ao endere�o ser�o preenchidos automaticamente
                            </small>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="estado">Estado</label>
                                <input class="form-control" type="text" id="estado" name="estado" readonly required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="cidade">Cidade</label>
                                <input class="form-control" type="text" id="cidade" name="cidade" readonly required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="bairro">Bairro</label>
                                <input class="form-control" type="text" id="bairro" name="bairro" readonly required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="rua">Rua</label>
                                <input class="form-control" type="text" id="rua" name="rua" readonly required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="numero">N�mero</label>
                                <input class="form-control" type="text" id="numero" name="numero" >
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col">
                                <label for="complemento">Complemento</label>
                                <input class="form-control" type="text" id="complemento" name="complemento" required>
                            </div>
                        </div>  
                        <div class="form-row">
                            <div class="form-group col">
                                <label for="tipo">Tipo</label>
                                <select class="form-control" name="tipo" id="tipo" required>
                                    <option value="" disabled selected>Selecionar op��o</option>
                                    <option value="C">Campus</option>
                                    <option value="R">Reitoria</option>
                                </select>
                            </div>
                        </div>
                    </section>
                    <hr class="my-4">
                    <section>
                        <h4 class="mb-4"><strong>Usu�rio padr�o</strong></h4> 
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="nomeUsuario">Nome</label>
                                <input class="form-control" type="text" id="nomeUsuario" name="nomeUsuario" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="login">Usu�rio</label>
                                <input class="form-control" type="text" id="login" name="login" required aria-describedby="infoLogin">
                                <small id="infoLogin" class="form-text text-muted">
                                    Nome para entrar no sistema
                                </small>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="senha">Senha</label>
                                <input class="form-control validate" id="senha" type="password" name="senha" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="confirmar">Confirmar Senha</label>
                                <input class="form-control validate" id="confirmar" type="password" name="senha" required>
                            </div>
                        </div>
                    </section>
                    <div class="text-right">
                        <button type="submit" name="acao" value="cadastrar" class="btn btn-green waves-effect">
                            <i class="fa fa-check mr-1"></i>Cadastrar</button>
                        <button type="reset" class="btn btn-grey waves-effect"><i class="fas fa-eraser mr-1"></i>Limpar</button>
                    </div>
                </form>
            </div>
        </div>
        <%@include file="../footer.jsp"%>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/mdb.min.js"></script>
        <script src="../js/general.js"></script>
        <script src="../js/jquery.mask.min.js"></script>
        <script src="../js/mascaras.js"></script>
        <script src="../js/consultaCNPJ.js"></script>
        <script>
            $('#cadastrar-empresa').submit(function () {
                $('#cnpj').unmask('00.000.000/0000-00');
                $('#cnae').unmask('00000-0/00');
            });
        </script>
    </body>
</html>