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
            border-left: 4px solid #380077
        }

        .myMenu {
            margin-bottom: 150px
        }
    </style>
</head>
<body onload="w3_show_nav('menuDisc')">

<?php require 'menu.php';?>

<div class="w3-main w3-container" style="margin-left:270px;margin-top:117px;">

    <div class="w3-panel w3-padding-large w3-card-4 w3-light-grey">
        <h1 class="w3-xxlarge">Cadastro de Exames</h1>

        <p class="w3-large">
            <div class="w3-code cssHigh notranslate">
            
                <?php

                date_default_timezone_set("America/Sao_Paulo");
                $data = date("d/m/Y H:i:s", time());
                echo "<p class='w3-small' > ";
                echo "Acesso em: ";
                echo $data;
                echo "</p> "
                ?>

                <div class="w3-responsive w3-card-4">
                    <div class="w3-container w3-blue">
                        <h2>Sessão exclusiva para cadastro de <b>Exames</b></h2>
                    </div>
                    <form class="w3-container" action="DiscContratar_exe.php" method="post" onsubmit="return check(this.form)">
						<input type="hidden" id="acaoForm" name="acaoForm" value="Contratar">
						<p>
						<label class="w3-text-deep-black"><b>Exame</b></label>
						<input class="w3-input w3-border w3-light-grey" name="Nome" type="text" required></p>
						<p>
						<label class="w3-text-deep-black"><b>Periocidade</b></label>
						<textarea class="w3-input w3-border w3-light-grey " name="Ementa"  rows="5" title="Texto Descritivo" required></textarea>
						<p>  
						<input type="submit" value="Enviar" class="w3-btn w3-blue" >
						<input type="button" value="Cancelar" class="w3-btn w3-blue" onclick="window.location.href='.'"></p>
					</form>
				</div>

			</div>
		</p>
	</div>

</div>


<?php require 'rodape.php';?>
</body>
</html>
