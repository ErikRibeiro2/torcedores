<?php
    include_once('conexao.php');

    $query = "SELECT * from tb_time";
    $result = mysqli_query($conexao, $query);
    if($result){
        echo "<option value='null'>Selecione...</option>";
        while($row = mysqli_fetch_assoc($result)){
            echo "<option value='" .$row["nome"]."'>". $row["nome"] ."</option>";
        }
    } else {
        echo "Falha na busca.";
    }
?>