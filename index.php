<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Torcedores</title>
    <link rel="stylesheet" href="./view/css/index.css">
    <link rel="stylesheet" href="./view/css/popup.css">
</head>

<body>
    <button onclick="abreCadTime();fechaTorcedor()">Cadastrar time</button>
    <button onclick="abreCadTorcedor();fechaTime()">Cad Torcedor</button>

    <div id="cadastrar-time">
        <div cass="cabecalho">
            <h1>Cadastrar time</h1>
        </div>
        <div>
            <form id="formCadTime">
                <div>
                    <label for="cxNomeTime">Nome: </label><br>
                    <input type="text" name="cxNomeTime" id="cxNomeTime" class="input" required autocomplete="off">
                </div>
                <div>
                    <label for="">Abreviação: </label><br>
                    <input type="text" name="cxAbreviação" id="cxAbreviacao" maxlength="10" required autocomplete="off" >
                </div>
                <div>
                    <label for="cxInformacao">Informações: </label><br>
                    <textarea name="cxInformacao" id="cxInformacao" cols="30" rows="5" class="input" required autocomplete="off"></textarea>
                </div>
                <div id="btn">
                    <button id="btnCadastro" form="formCadTime" type="submit">Cadastrar</button>
                </div>
            </form>
        </div>
    </div>

    <div id="cadastrar-torcedor">
        <div class="cabecalho">
            <h1>Cadastrar Torcedor</h1>
        </div>
        <div>
            <form id="formCadTorcedor">
                <div>
                    <label for="cxNomeTime">Nome: </label><br>
                    <input type="text" name="cxNomeTor" id="cxNomeTorcedor" class="cxNomeTorcedor i" required autocomplete="off">
                </div>
                <div>
                    <label for="cxSexo">Sexo: </label><br>
                    <select name="cxSexo" id="cxSexo" class="cxSexo i">
                        <option value="masculino">Masculino</option>
                        <option value="feminino">Feminino</option>
                        <option value="outro">Outro</option>
                    </select>
                </div>
                <div>
                    <label for="cxData">Data de nascimento: </label><br>
                    <input type="date" name="cxData" id="cxData" class="i">
                </div>
                <div>
                    <label for="">Time:</label><br>
                    <select name="cxTime" id="cxTime" onload="carregaTimes()" class="i">
                        
                    </select>
                </div>
                <div id="btn">
                    <button id="btnCadastroTorcedor" form="formCadTime" type="submit">Cadastrar</button>
                </div>
            </form>
        </div>
    </div>

    <script src="./js/jQuery.js"></script>
    <script src="./js/scripts.js"></script>
</body>

</html>