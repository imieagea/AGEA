<?php
	date_default_timezone_set("Europe/Paris");


	//On crée et enregistre le post type
	register_post_type('fiche', array(
		'label'             => 'Fiche Candidat',
		'labels' => array(
				'add_new_item'      =>'Ajouter une fiche candidat'
			),
		'edit_item'         =>'Editer une fiche',
		'new_item'          =>'Ajouter une fiche',
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

	//
	//Puis la taxonomy qui sera utilisée pour les fiches
	register_taxonomy( "mobilite_géographique", array( "fiche" ), array(
		"hierarchical" 		=> true,
		"label" 			=> "Mobilité géographique",
		"labels"			=> array(
			"name" => "Mobilité géographique",
			"search_name" => "Rechercher par mobilité géographique",
			"singular_name" => "Département",
			"add_new_item" => "Ajouter un département",
			"choose_from_most_used" => null,
			"parent_item" => "Ce select ne sert à rien et il ne faut pas l'utiliser =D",
			"most_used" => null,
			"separate_items_with_commas" => "Séparez les départements par des virgules"),
		"rewrite" 			=> true, "slug" => 'departements' )
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