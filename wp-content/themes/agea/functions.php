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
		'supports'          => array('title', 'editor'),
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
	
		

		//On crée un post stype pour les infos à la une.
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
	
		register_post_type('Contact', array(
		'label'             => 'Contact',
		'add_new_item'      =>'Ajouter un contact',
		'edit_item'         =>'Editer un contact',
		'new_item'          =>'Ajouter un contact',
		'view_item'         =>'Consulter une contact',
		'not_found'         =>'contact non trouvée',
		'menu_name'         =>'contact',
		'singular_label'    => 'contact',
		'menu_position'		=> 20,  
		'public'            => true,
		'show_ui'           => true,
		'capability_type'   => 'post',
		'hierarchical'      => false,
		'has_archive'       => true,
		'rewrite'           => array('slug' => 'contact'),
		'supports'          => array('title', 'editor', 'author', 'excerpt', 'thumbnail'),
		'show_in_nav_menus' => true
	)	
	);
	register_nav_menu( 'menu', 'Menu' );
	
	

	//On ajoute les meta box pour la fiche candidat
	add_action("admin_init", "admin_init");
	function admin_init()
	{
		add_meta_box("comment_rh","Commentaire RH: ","comment_rh","fiche","normal","low");
	}

	function comment_rh($fiche)
	{
		echo '<label for="comment_rh">Commentaire RH</label>';
		wp_editor("","comment_rh",array(
				"textarea_name"=>"comment_rh",
				"teeny"=>true
			));
	}


?>