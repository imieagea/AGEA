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
	
?>