<!doctype html>

<html>
    <head>
        <meta charset="utf-8">
        <title>Question�rio para egressos - OMT</title>

        <link href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/formEgresso.css">
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script type="text/javascript" src="js/formEgresso.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </head>

    <body>
        <div class="form-style-5">
            <form id="formulario">
                <ul id="progress">
                    <li class="ativo">Dados Pessoais</li>
                    <li>Unidade de Conclus�o</li>
                    <li>Curso conclu�do</li>
                    <li>Durante o curso</li>
                    <li>Atividades atuais</li>
                    <li>Emprego</li>
                    <li>Coment�rios e Sugest�es</li>
                </ul>

                <fieldset>
                    <div class="form-row">
                        <div class="col1">
                            <blockquote contenteditable="true">
                                <h2>Dados Pessoais</h2>
                            </blockquote>

                            <input type="text" name="nome_discente" placeholder="Nome Completo">
                            <h3>Naturalidade</h3>
                            <input type="text" name="nat" placeholder="Naturalidade">
                            <h3>Nacionalidade</h3>
                            <input type= "text" name="nac" placeholder="Nacionalidade">
                            <h3>Data de nascimento</h3>
                            <input type= "text" name="nasc" placeholder="Data de Nascimento">
                            <h3>Idade</h3>
                            <input type= "text" name="idade" placeholder="Idade">
                            <h3>G�nero:</h3>
                            <select id="sexo" name="gender" >
                                <option value="#">-</option>
                                <option value="masc">Masculino</option>
                                <option value="fem">Feminino</option>
                                <option value="other">Prefiro n�o informar</option>
                            </select>
                        </div>

                        <div class ="col2">
                            <blockquote contenteditable="true">
                                <h2>Endere�o</h2>
                            </blockquote>
                            <h3>CEP</h3>
                            <input type= "text" name="cep" placeholder="CEP">
                            <h3>Bairro</h3>
                            <input type= "text" name="bairro" placeholder="Bairro">
                            <h3>Munic�pio</h3>
                            <input type= "text" name="mun" placeholder="Municipio">
                            <h3>UF</h3>
                            <input type= "text" name="uf" placeholder="Unidade Federativa">
                        </div>

                        <div class="col">
                            <blockquote contenteditable="true">
                                <h2>Contato</h2>
                            </blockquote>
                            <h3>Telefone</h3>
                            <input type= "text" name="tel" placeholder="Telefone Convencional">
                            <h3>Celular</h3>
                            <input type= "text" name="cel" placeholder="Celular">
                            <h3>Email</h3>
                            <input type= "email" name="email" placeholder="Email">
                        </div>
                    </div>

                    <input type="submit" name="next" class="next acao" value="Pr�ximo">
                </fieldset>
                <fieldset>
                    <h2>Unidade do IFAM onde concluiu o curso</h2>
                    <h3>Campus:</h3>

                    <select id="camp" name="if">
                        <option value="#">-</option>
                        <option value="Cmc">Campus Manaus Centro</option>
                        <option value="cmdi">Campus Manaus Distrito Industrial</option>
                        <option value="cmzl">Campus Manaus Zona Leste</option>
                        <option value="cco">Campus Coari</option>
                        <option value="cla">Campus L�brea</option>
                        <option value="cmau">Campus Mau�s</option>
                        <option value="cpa">Campus Parintins</option>
                        <option value="ctab">Campus Tabatinga</option>
                        <option value="cita">Campus Itacoatiara</option>
                        <option value="chum">Campus Humait�</option>
                        <option value="cman">Campus Manacapuru</option>
                        <option value="cei">Campus Eirunep�</option>
                        <option value="cpf">Campus Presidente Figueiredo</option>
                        <option value="ctef">Campus Tef�</option>
                        <option value="csgc">Campus S�o Gabriel da Cachoeira</option>
                    </select>
                    <input type="submit" name="prev" class="prev acao" value="Anterior">
                    <input type="submit" name="next" class="next acao" value="Pr�ximo">
                </fieldset>
                <fieldset>
                    <h2>Curso conclu�do</h2>
                    <h3>Tipo do curso:</h3>
                    <select id="curso" name="curs">
                        <option value="#">-</option>
                        <option value="int">T�cnico Integrado</option>
                        <option value="subs">T�cnico Subsequente</option>
                        <option value="pro">Proeja</option>
                        <option value="lic">Licenciatura</option>
                        <option value="tec">Tecnol�gico</option>
                        <option value="bach">Bacharelado</option>
                    </select>

                    <input type="text" name="nome" placeholder="Nome do curso">
                    <input type="text" name="ano" placeholder="Ano de conclus�o">
                    <input type="text" name="nome" placeholder="Idade com a qual concluiu o curso">

                    <h3>Semestre de conclus�o:</h3>
                    <select id="semestre" name="sem">
                        <option value="#">-</option>
                        <option value="1">1�</option>
                        <option value="2">2�</option>
                    </select>
                    <input type="text" name="time" placeholder="Tempo de conclus�o(semestres/anos)">

                    <h3>Turno Frequentado:</h3>
                    <select id="turno" name="tur">
                        <option value="#">-</option>
                        <option value="man">Manh�</option>
                        <option value="tar">Tarde</option>
                        <option value="noi">Noite</option>
                    </select>
                    <input type="submit" name="prev" class="prev acao" value="Anterior">
                    <input type="submit" name="next" class="next acao" value="Pr�ximo">
                </fieldset>
                <fieldset>
                    <h2>Durante o curso...</h2>
                    <h3>Fez o curso com alguma atividade a mais?</h3>
                    <select>
                        <option value="#">-</option>
                        <option value="true">Trabalhando na �rea</option>
                        <option value="false">Trabalhando fora da �rea</option>
                        <option value="null">Sem trabalhar</option>
                    </select>
                    <input type="submit" name="prev" class="prev acao" value="Anterior">
                    <input type="submit" name="next" class="next acao" value="Pr�ximo">
                </fieldset>
                <fieldset>
                    <h2>Atividades atuais</h2>
                    <h3>Atualmente,faz faculdade ou p�s-gradua��o?</h3>
                    <select>
                        <option value="#">-</option>
                        <option value="1">Na mesma �rea de forma��o</option>
                        <option value="2">Em outra �rea</option>
                        <option value="3">N�o est� cursando faculdade ou p�s-gradua��o</option>
                        <option value="4">J� concluiu a faculdade ou p�s-gradua��o</option>
                    </select>
                    <h3>Caso esteja em outra �rea...</h3>
                    <input type="text" name="answer" placeholder="Se est� em outra �rea, informe qual ou se concluiu a faculdade informe o curso.">
                    <input type="submit" name="prev" class="prev acao" value="Anterior">
                    <input type="submit" name="next" class="next acao" value="Pr�ximo">
                </fieldset>
                <fieldset class="col">
                    <h2>Emprego</h2>
                    <h3>Atualmente trabalha na �rea de forma��o?</h3>
                    <select>
                        <option value="#">-</option>
                        <option value="1">Sim</option>	
                        <option value="2">N�o</option>	
                    </select>

                    <h3>Se respondeu "Sim", indique a rela��o de emprego.</h3>
                    <select>
                        <option value="#">-</option>
                        <option value="1">Empregado</option>
                        <option value="2">Aut�nomo</option>
                        <option value="4">Outro(especifique abaixo)</option>
                    </select>
                    <h3>Se possuir outra rela��o de emprego...</h3>
                    <input type="text" name="specified" placeholder="Especifique">	

                    <h3>Se est� trabalhando ou trabalhou, qual o ramo de atividade da empresa?</h3>
                    <select>
                        <option value="#">-</option>
                        <option value="1">Industrial</option>
                        <option value="2">Servi�os</option>
                        <option value="3">Agroneg�cios</option>
                        <option value="4">Outros(especificar)</option>
                    </select>
                    <h3>Caso esteja em outro ramo...</h3>
                    <input type="text" name="spec" placeholder="Especifique">

                    <h3>Informa��es da empresa em que trabalha atualmente.(Caso n�o esteja empregado preencha os campos com " - ")</h3>
                    <input type="text" name="emp" placeholder="Nome da empresa">
                    <input type="text" name="emp" placeholder="Endere�o Comercial">
                    <input type="text" name="emp" placeholder="Bairro">
                    <input type="text" name="emp" placeholder="CEP">
                    <input type="text" name="emp" placeholder="Telefone">
                    <input type="text" name="emp" placeholder="Ramal">
                    <input type="text" name="emp" placeholder="Email">
                    <input type="text" name="emp" placeholder="Nome completo do supervisor/Chefe imediato">
                    <input type="text" name="emp" placeholder="Data em que foi admitido no emprego. (DD/MM/AA)">

                    <h3>Caracter�sticas de sua fun��o</h3>
                    <select>
                        <option value="#">-</option>
                        <option value="1">Projetos</option>
                        <option value="2">Manuten��o</option>
                        <option value="3">Chefia</option>
                        <option value="4">Outros(Especificar)</option>
                    </select>
                    <input type="text" name="spec" placeholder="Especifique">

                    <h3>Rendimento mensal</h3>
                    <select>
                        <option value="#">-</option>
                        <option value="1">Menos de 1 sal�rio m�nimo</option>
                        <option value="2">1 a 3 sal�rios m�nimos</option>
                        <option value="3">4 a 5 sal�rios m�nimos</option>
                        <option value="4">6 a 10 sal�rios m�nimos</option>
                        <option value="5">Acima de 10 sal�rios m�nimos</option>
                    </select>

                    <h3>Se estiver trabalhando fora da �rea de forma��o. Indique o motivo.</h3>
                    <select>
                        <option value="#">-</option>
                        <option value="1">N�o encontrou trabalho na �rea de forma��o.</option>
                        <option value="2">Baixos sal�rios.</option>
                        <option value="3">Exig�ncia de experi�ncia.</option>
                        <option value="4">Trabalhos ofertados fora do atual domic�lio.</option>
                        <option value="5">A forma��o recebida n�o atende as exig�ncias do mercado de trabalho.</option>
                        <option value="6">N�o sente seguran�a para trabalhar na �rea.</option>
                        <option value="7">Falta emprego na �rea espec�fica de forma��o.</option>
                        <option value="8">Escolha vocacional equivocada.</option>
                        <option value="9">Discrimina��o em rela��o ao sexo exigido para a fun��o.</option>
                        <option value="10">Outros(Especificar)</option>
                    </select>
                    <h3>Se possui outro motivo...</h3>
                    <input type="text" name="spec" placeholder="Especifique">

                    <h3>Considera a matriz curricular suficiente para o desempenho da profiss�o?</h3>
                    <select>
                        <option value="#">-</option>
                        <option value="1">Sim</option>
                        <option value="2">N�o</option>
                    </select>

                    <h3>Se respondeu "N�o" , indique a dificuldade encontrada</h3>
                    <select>
                        <option value="#">-</option>
                        <option value="1">Carga hor�ria das disciplinas de cultura geral insuficiente.</option>
                        <option value="2">Carga hor�ria das disciplinas t�cnicas/te�ricas insuficiente.</option>
                        <option value="3">Carga hor�ria das disciplinas pr�ticas.</option>
                        <option value="4">Pouca articula��o entre as disciplinas.</option>
                        <option value="5">Carga hor�ria de est�gio insuficiente.</option>
                        <option value="6">Pouca oferta de atividades Complementares.</option>
                        <option value="7">Outros.(Especificar)</option>
                    </select>
                    <h3>Se possui outro motivo...</h3>
                    <input type="text" name="spec" placeholder="Especifique">

                    <h3>Tem interesse em participar do encontro de egressos 2019?</h3>
                    <select>
                        <option value="#">-</option>
                        <option value="1">Sim</option>
                        <option value="2">N�o</option>
                    </select>
                    <input type="submit" name="prev" class="prev acao" value="Anterior">
                    <input type="submit" name="next" class="next acao" value="Pr�ximo">
                </fieldset>
                <fieldset>
                    <h2>Espa�o para coment�rios/sugest�es</h2>
                    <textarea name="comment" placeholder="Coment�rios e sugest�es"></textarea>
                    <input type="submit" name="prev" class="prev acao" value="Anterior">
                    <input type="submit" name="acao" class="acao" value="Enviar" onClick="chamaEnvioForm()">
                </fieldset>
            </form>	
        </div>
        <script>
            function chamaEnvioForm() {
//                document.location.href = "/OMT/EnviaPDFFormEgresso";
                var redirectUrl = '/OMT/EnviaPDFFormEgresso';
                var form = $('<form action="' + redirectUrl + '" method="post">'
                        + '<input type="text" name="nome_discente" value="' + document.getElementByName("nome_discente") + '" />' + '</form>');
                $('body').append(form);
                form.submit();
            }
        </script>
    </body>


</html>