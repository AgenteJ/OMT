<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastrar experi�ncia de trabalho</title>
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/mdb.css"/>
        <link rel="stylesheet" href="../css/fontawesome-all.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <jsp:include page="../header.jsp"/>
        <main>
            <div class="container-fluid col-md-8">
                <nav class="navbar navbar-expand-lg navbar-light green darken-1">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a href="javascript:history.back()" class="nav-link text-white">
                                <i class="fa fa-arrow-alt-circle-left fa-lg"></i>
                                Voltar
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="card px-4 py-4">
                    <form id="cadastrar-trabalho" method="POST" action="/OMT/TrabalhoCurriculoServlet">
                        <h3 class="font-weight-bold mb-4">Cadastrar experi�ncia profissional</h3>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="profissao">Profiss�o</label>
                                <input class="form-control validate" placeholder="Nome da profiss�o" name="profissao" id="profissao" type="text">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="salario">Nome da empresa/empregador/local de trabalho</label>
                                <input class="form-control validate" placeholder="Empresa/empregador/local de trabalho" name="empregador" id="empregador" type="text"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="inicio">Data de in�cio</label>
                                <input class="form-control validate data" type="text" id="inicio" name="inicio"/>  
                            </div>
                            <div class="form-group col-md-6">
                                <label for="fim">Data de fim</label>
                                <input class="form-control validate data" type="text" id="fim" name="fim"/>  
                            </div>
                        </div>

                        

                        <div class="form-group">
                            <label for="descricao">Descri��o</label>
                            <textarea class="form-control" placeholder="Descri��o" name="descricao" id="descricao" rows="5"></textarea>
                        </div>
                        <div class="text-right">
                            <button type="submit" name="acao" value="cadastrar" class="btn btn-md btn-green">
                                <i class="fa fa-check mr-1"></i>Cadastrar</button>
                            <button type="reset" class="btn btn-md btn-grey waves-effect"><i class="fas fa-eraser mr-1"></i>Limpar</button>
                        </div>
                    </form>
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
        <script>
            $('#cadastrar-evento').submit(function (e) {
                alert($('#inscricaoInicio').val());
            });
        </script>
    </body>
</html>