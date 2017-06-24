<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
 -->
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">    
    <link rel="stylesheet" href="web/jquery/jquery-ui-1.12.1.ui-light/jquery-ui.min.css">
    <link rel="stylesheet" href="web/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link href="web/plugins/tag-it/css/jquery.tagit.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="web/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="web/plugins/WOW-master/css/libs/animate.css">
    <link rel="stylesheet" href="web/estilo.css">
    <!-- As 3 meta tags acima *devem* vir em primeiro lugar dentro do `head`; qualquer outro conteúdo deve vir *após* essas tags -->
    <title>MovieHunter</title>

    <!-- HTML5 shim e Respond.js para suporte no IE8 de elementos HTML5 e media queries -->
    <!-- ALERTA: Respond.js não funciona se você visualizar uma página file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

  	<div class="container-fluid" style="height: 300px; background-image: url('img/background6.jpg'); background-position: bottom; background-repeat: no-repeat; background-size: cover;">
  		<div class="row">
  			<div class="col-md-12" align="center">
  				<br><br><br>
  			</div>
  		</div>
  	</div>

	<nav class="navbar navbar-inverse" style="border-radius: 0;">
	  <div class="container">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#"><i class="fa fa-video-camera"></i> MovieHunter</a>
	    </div>

	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav menu-principal">
	        <li class="active"><a id="menu-busca" href="#"><span class="glyphicon glyphicon-search"></span> Buscar filme</a></li>
			<li><a id="menu-ranking" href="#"><span class="glyphicon glyphicon-signal"></span> Ranking</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	      </ul>

	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>

	<div id="buscar" class="wrapper container">
		<br><br>
		<div class="">
			<h1 class="text-bold text-center" style="color: #fff;">
				B&ensp;U&ensp;S&ensp;C&ensp;A 
			</h1>
		</div><br><br>
		<form id="form-busca" action="" class="form-busca col-md-8 col-md-offset-2" style="padding: 20px 50px;">
			
			<div class="form-group">
				<label for="titulo">Título</label>
				<input id="titulo" name="titulo" type="text" class="input-lg form-control">
			</div>

			<div class="form-group">
				<label for="diretor">Diretor</label>
				<input id="diretor" name="diretor" type="text" class="input-lg form-control">
				<p class="help-block">Digite o nome de um Diretor e pressione ENTER para adiciona-lo à busca</p>
			</div>
			
			<div class="text-center">
				<button class="btn btn-lg btn-primary">
					<span class="glyphicon glyphicon-search"></span> Pesquisar
				</button>
			</div>
			<div class="row" hidden>
				<div class="col-md-3 form-group">
					<label for="limite">Visualizar</label>
					<select name="limite" id="limite" class="form-control">
						<option value="50">50</option>
						<option value="100">100</option>
						<option value="200">200</option>
						<option value="500">500</option>
						<option value="1000">1000</option>
						<option value="all">Todos</option>
					</select>
				</div>
			</div>

		</form>


		<div id="resultado" class="col-md-6 col-md-offset-3" hidden>
			
			<div class="filme-container">
				
				<h4>Título do filme</h4>
				<p>Diretor - Gênero - Ano</p>

			</div>
			<div class="filme-container">
				
				<h4>Título do filme</h4>
				<p>Diretor - Gênero - Ano</p>

			</div>

		</div>

	</div>

	<div id="ranking" class="wrapper container" style="display: none;">
		<br><br>
		<div class="">
			<h1 class="text-center"  style="color: #fff;">R&ensp;A&ensp;N&ensp;K&ensp;I&ensp;N&ensp;G</h1>
		</div><br><br>

		<form action="" id="" class="form-busca col-md-8 col-md-offset-2">
			
			<p>Filtre o ranking de filmes</p>

			<div class="col-md-6 form-group">
				<label for="">Gênero</label>
				<select name="" id="" class="form-control">
					<option value="">Selecione um gênero</option>
					<option value="">Ação</option>
					<option value="">Terror</option>
				</select>
			</div>
			
		</form>
	</div>

	<footer>
		<span class="" style="margin-right: 20px;"><b>MovieHunter</b> &copy; 2017 All rights reserved</span> <br>
		<small style="margin-left: 20px;">Developers: Bernardo Camargo, Vitor Pratali, Lucas Occaso, Arthur Toledo</small>
	</footer>
    <!-- jQuery (obrigatório para plugins JavaScript do Bootstrap) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="web/jquery/jquery-ui-1.12.1.ui-light/jquery-ui.min.js"></script>

    <!-- Inclui todos os plugins compilados (abaixo), ou inclua arquivos separadados se necessário -->
    <script src="web/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="web/plugins/tag-it/js/tag-it.min.js"></script>
    <script src="web/plugins/WOW-master/dist/wow.min.js"></script>


    <script type="text/javascript">
		var wow = new WOW(
		  {
		    boxClass:     'wow',      // animated element css class (default is wow)
		    animateClass: 'animated', // animation css class (default is animated)
		    offset:       0,          // distance to the element when triggering the animation (default is 0)
		    mobile:       true,       // trigger animations on mobile devices (default is true)
		    live:         true,       // act on asynchronously loaded content (default is true)
		    callback:     function(box) {
		      // the callback is fired every time an animation is started
		      // the argument that is passed in is the DOM node being animated
		    },
		    scrollContainer: null // optional scroll container selector, otherwise use window
		  }
		);
		wow.init();

    	$(document).ready(function() {

      		$('#menu-ranking').click(function(event){
      			event.preventDefault();
      			$('#menu-busca').parent().removeClass('active');
      			$(this).parent().addClass('active');
      			/*$("#ranking").show();
      			$('#buscar').hide();*/
      			$('#buscar').removeClass('wow bounceInLeft bounceOutRight animated').addClass('wow bounceOutRight animated').hide();    			
      			$('#ranking').removeClass('wow bounceInLeft bounceOutRight animated').addClass('wow bounceInLeft animated').show();
      		});

      		$('#menu-busca').click(function(event){
      			event.preventDefault();
      			$('#menu-ranking').parent().removeClass('active');
      			$(this).parent().addClass('active');
      			/*$("#buscar").show();
      			$('#ranking').hide();*/
      			$('#buscar').removeClass('wow bounceInLeft bounceOutRight animated').addClass('wow bounceInLeft animated').show();
      			$('#ranking').removeClass('wow bounceInLeft bounceOutRight animated').addClass('wow bounceOutRight animated').hide();      			
      		});

    		$('#diretor').tagit({
    			allowSpaces: true,
    			placeholderText: "Digite o nome do diretor",
    			availableTags: ["c++", "java", "php", "javascript", "ruby", "python", "c"],
    			autocomplete: {delay: 0, minLength: 2}
    		});
    	});
    </script>
  </body>
</html>