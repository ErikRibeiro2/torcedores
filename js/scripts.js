var ti = "n";
var to = "n";
function abreCadTime(){
    if(ti == "n"){
        document.getElementById('cadastrar-time').style.display = "block"
        ti = "s";
    } else if(ti == "s"){
        document.getElementById('cadastrar-time').style.display = "none"
        ti = "n"
    }
}
function abreCadTorcedor(){
    if(to == "n"){
        document.getElementById('cadastrar-torcedor').style.display = "block"
        to = "s";
    } else if(to == "s"){
        document.getElementById('cadastrar-torcedor').style.display = "none"
        to = "n"
    }
}
function fechaTime() {document.getElementById('cadastrar-time').style.display = "none"; ti = "n"}
function fechaTorcedor(){document.getElementById('cadastrar-torcedor').style.display = "none"; to = "n"}

function atualizaTimes(){
    $.post('./controller/carregaTimes.php', {}, function(data){
        $("#cxTime").html(data);
    })
}

$(document).ready(function () {
    fechaTime();
    fechaTorcedor();
    
});
$("#cxTime").ready(function () {
    $.post('./controller/carregaTimes.php', {}, function(data){
        $("#cxTime").html(data);
    })
});

$("#btnCadastro").click(function (e) { 
    e.preventDefault();
    
    var nome_time = $("#cxNomeTime").val()
    var abreviacao = `${$("#cxAbreviacao").val()}`.toUpperCase();
    var info = $("#cxInformacao").val();
    

    $.ajax({
        type: "POST",
        url: "./controller/addTime.php",
        data: {nome: nome_time, abre: abreviacao, info: info},
        dataType: "json",
    }).done(function (result) {
        console.log(result);
        fechaTime();
        atualizaTimes();
        alert('Cadastrado com sucesso!');
        $('#cxNomeTime').val(' ');
        $("#cxAbreviacao").val(' ');
        $("#cxInformacao").val(' ');
    });
});

$("#btnCadastroTorcedor").click(function (e) { 
    e.preventDefault();
    
    var nome_torcedor = $("#cxNomeTorcedor").val()
    var sexo = $("#cxSexo").val()
    var dt_nascimento = $("#cxData").val()
    var time = $("#cxTime").val()

    $.ajax({
        type: "POST",
        url: "./controller/addTorcedor.php",
        data: {nome: nome_torcedor, sexo: sexo, data: dt_nascimento, time: time},
        dataType: "json",
    }).done(function (result){
        console.log(result);
        alert('Torcedor cadastrado com sucesso!');
        $("#cxNomeTorcedor").val(' ');
        $("#cxSexo").val('masculino');
        $("#cxData").val(' ');
        $("#cxTime").val('null');
        fechaTorcedor();
    });
});