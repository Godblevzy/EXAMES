<html lang="pt">
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
			border-left: 4px solid #9987338d-434c-4804-86cb-b550c9840d6f
		}

		.myMenu {
			margin-bottom: 150px
		}

		.myFont {
			font-max-size: 8px
		}
	</style>

	<body  onload="w3_show_nav('menuProf')">


		<?php require 'menu.php'; ?>

		<div class="w3-main w3-container" style="margin-left:270px;margin-top:117px;">

			<div class="w3-panel w3-padding-large w3-card-4 w3-light-grey">
				<h1>Olá <b>Leonardo Nobre</b>!</h1>
				<a class="w3-bar-item w3-button" href='discListar.php'><img src="imagens/lista.jpg">                         <b>Exames Cadastrados</b> </a>
				<a class="w3-bar-item w3-button" href='discContratar.php'><img src="imagens/cadastro.jpg"><b>                 Cadastrar Exames</b></a>


			</div>

		<?php require 'rodape.php';?>
	</body>
</html>
