<!DOCTYPE HTML>
<html lang="fr-FR">
<head>
	<meta charset="UTF-8">
	<title><?php bloginfo( 'name' ); ?></title>
	<?php wp_head(); ?>
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" type="text/css" media="screen">
	<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/jquery.min.js"></script>
	<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/modernizr.js"></script>
	<link href="<?php bloginfo('template_url'); ?>/css/anythingslider.css" rel="stylesheet"> 
	<script src="<?php bloginfo('template_url'); ?>/js/jquery.anythingslider.min.js"></script> 
</head>
<body>
<header id="header">
	<div id="header_content">
		<div id="logo">
		<a href=""></a>
		</div>
		<nav id="menu">
		<?php wp_nav_menu( array('menu' => 'Menu' )); ?>
			<!--<ul>
				<li class="first"><a href="">Accueil</a></li>
				<li><a href="">Qui sommes-nous ?</a></li>
				<li><a href="">Nos Actions</a></li>
				<li><a href="">Partenariats</a></li>
				<li><a href="">Adhérer</a></li>
				<li><a href="">Espace Orientation Jeune</a></li>
				<div class="clear"></div>
			</ul>		-->
		</nav>
		<div id="add_this">
				<ul>
					<li><a href="" id="add_t"></a></li>
					<li><a href="" id="add_g"></a></li>
					<li><a href="" id="add_f"></a></li>
				</ul>
		</div>
	</div>	
</header>
<div id="content_wrapper">
	<div id="content">