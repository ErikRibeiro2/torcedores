<?php
    include_once('conexao.php');

    if (isset($_POST["nome"]) && isset($_POST["abre"]) && isset($_POST["info"])){

        $nome = $_POST["nome"];
        $abre = $_POST["abre"];
        $info = $_POST["info"];
        $data_cadastro = date("Y-m-d");

        $query = "INSERT INTO tb_time (id, nome, abreviacao, informacao, dt_cadastro) 
        VALUES(default, '$nome', '$abre', '$info', '$data_cadastro')";
        $insert = mysqli_query($conexao, $query);

        if ($insert){
            echo json_encode('Dados cadastrados com sucesso!');
        } else {
            echo json_encode('Time não cadastrado!');
        }
    }
?>