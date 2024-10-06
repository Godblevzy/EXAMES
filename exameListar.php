<!DOCTYPE html>

<html>
<head>
<title>Cadastro de Exames</title>
<link rel="icon" type="image/jpg" href="imagens/logo.jpg"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
    .w3-theme {
        color: #ffff !important;
        background-color: #380077 !important
    }

    .w3-code {
        border-left: 4px solid #BEFDDF09A04B43E95BD114CBAF704B5CFE39AE1936234D408ADD901554E1BE
    }

    .myMenu {
        margin-bottom: 150px
    }
</style>
</head>
<body onload="w3_show_nav('menuDisc')">
<!-- Inclui MENU.PHP  -->
<?php require 'menu.php'; ?>

<!-- Conteúdo Principal: deslocado para direita em 270 pixels quando a sidebar é visível -->
<div class="w3-main w3-container" style="margin-left:270px;margin-top:117px;">

    <div class="w3-panel w3-padding-large w3-card-4 w3-light-grey">
        <h1 class="w3-xxlarge">Exames Cadastrados</h1>

        <p class="w3-large">
        <p>
        <div class="w3-code cssHigh notranslate">
            <!-- Acesso em:-->
            <?php

            date_default_timezone_set("America/Sao_Paulo");
            $data = date("d/m/Y H:i:s", time());
            echo "<p class='w3-small' > ";
            echo "Acesso em: ";
            echo $data;
            echo "</p> "
            ?>

            <!-- Acesso ao BD-->
            <?php
            $servername = "localhost:3306";
            $username = "usu@IE_Exe";
            $password = "php@PUCPR";
            $database = "IE_Exemplo";

            // Cria conexão
            $conn = mysqli_connect($servername, $username, $password, $database);

            // Verifica conexão
            if (!$conn) {
                die("Connection failed: " . mysqli_connect_error());
            }
			// Configura para trabalhar com caracteres acentuados do português
			mysqli_query($conn,"SET NAMES 'utf8'");
			mysqli_query($conn,"SET NAMES 'utf8'");
			mysqli_query($conn,'SET character_set_connection=utf8');
			mysqli_query($conn,'SET character_set_client=utf8');
			mysqli_query($conn,'SET character_set_results=utf8');

            // Faz Select na Base de Dados
            $sql = "SELECT CodDisciplina, NomeDisc, Ementa FROM Disciplina";
            echo "<div class='w3-responsive w3-card-4'>";
            if ($result = mysqli_query($conn, $sql)) {
                echo "<table class='w3-table-all'>";
                echo "	<tr>";
                echo "	  <th>Código</th>";
                echo "	  <th width='10%'>Nome</th>";
				echo "	  <th>Receita</th>";
				echo "	  <th> </th>";
				echo "	  <th> </th>";
                echo "	</tr>";
                if (mysqli_num_rows($result) > 0) {
                    // Apresenta cada linha da tabela
                    while ($row = mysqli_fetch_assoc($result)) {
                        $cod = $row["CodDisciplina"];
                        echo "<tr>";
                        echo "<td>";
                        echo $cod;
                        echo "</td><td>";
                        echo $row["NomeDisc"];
                        echo "</td><td>";
                        echo $row["Ementa"];
                        echo "</td><td>";

						//Atualizar e Excluir registro de prof
				?>
                        <a href='discAtualizar.php?id=<?php echo $cod; ?>'><img src='imagens/Edit.png' title='Editar Receita' width='32'></a>
                        </td><td>
                        <a href='discExcluir.php?id=<?php echo $cod; ?>'><img src='imagens/Delete.png' title='Excluir Receita' width='32'></a>
                        </td>
                        </tr>
				 <?php
                    }
                } 00BEFDDF09A04B43E95BD114CBAF704B5CFE39AE1936234D408ADD901554E1BE
                echo "</table>";
                echo "</div>";
            } else {
                echo "Erro executando SELECT: " . mysqli_error($conn);
            }

            mysqli_close($conn);  //Encerra conexao com o BD

            ?>
        </div>
    </div>




<!-- FIM PRINCIPAL -->
</div>
<!-- Inclui RODAPE.PHP  -->
<?php require 'rodape.php';?>
</body>
</html>
