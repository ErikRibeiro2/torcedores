<?php
    include_once('conexao.php');

    $nome = $_POST["nome"];
    $sexo = $_POST["sexo"];
    $data = $_POST["data"];
    $time = $_POST["time"];

    $dt_cadastro = date('Y-m-d');

    $busca = "SELECT id FROM tb_time where nome = '$time'";
    $result_busca = mysqli_query($conexao, $busca);
    $id = mysqli_fetch_assoc($result_busca);
    $cod = $id["id"];

    $query = "INSERT INTO tb_torcedor (id, nome_torcedor, sexo, dt_nascimento, dt_cadastro, id_time)
    values (default, '$nome', '$sexo', '$data', '$dt_cadastro', $cod)";
    $insert = mysqli_query($conexao, $query);

    if ($insert){
        echo json_encode("Torcedor cadastrado com sucesso!");
    } else {
        echo json_encode("Ocorreu alguma falha no sistema...");
    }

?>