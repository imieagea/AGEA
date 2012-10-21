<?php
	date_default_timezone_set("Europe/Paris");

	register_post_type('fiche', array(
		'label'             => 'Fiche Candidat',
		'add_new_item'      =>'Ajouter une fiche',
		'edit_item'         =>'Editer une fiche',
		'new_item'          =>'Ajouter un picto',
		'view_item'         =>'Consulter une fiche',
		'not_found'         =>'Fiche non trouvée',
		'menu_name'         =>'Fiches Candidats',
		'singular_label'    => 'fiche',
		'menu_position'		=> 20,  
		'public'            => true,
		'show_ui'           => true,
		'capability_type'   => 'post',
		'hierarchical'      => false,
		'has_archive'       => true,
		'rewrite'           => array('slug' => 'fiche'),
		'supports'          => array('title', 'editor', 'author', 'excerpt', 'thumbnail'),
		'show_in_nav_menus' => true
	)	
	);
	
		register_post_type('news', array(
		'label'             => 'A la une',
		'add_new_item'      =>'Ajouter une news',
		'edit_item'         =>'Editer une news',
		'new_item'          =>'Ajouter un news',
		'view_item'         =>'Consulter une news',
		'not_found'         =>'news non trouvée',
		'menu_name'         =>'news',
		'singular_label'    => 'news',
		'menu_position'		=> 20,  
		'public'            => true,
		'show_ui'           => true,
		'capability_type'   => 'post',
		'hierarchical'      => false,
		'has_archive'       => true,
		'rewrite'           => array('slug' => 'news'),
		'supports'          => array('title', 'editor', 'author', 'excerpt', 'thumbnail'),
		'show_in_nav_menus' => true
	)	
	);
	register_nav_menu( 'menu', 'Menu' );

?>