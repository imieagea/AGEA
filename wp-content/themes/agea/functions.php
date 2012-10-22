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
	
		register_post_type('contact_infos', array(
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
		'rewrite'           => array('slug' => 'contact-infos'),
		'supports'          => array('title', 'editor', 'author', 'excerpt', 'thumbnail'),
		'show_in_nav_menus' => true
	)	
	);
	register_nav_menu( 'menu', 'Menu' );
	
	//On définie les départements
	$departements = array(
		'44'      	  => 'Loire-Atlantique',
		'35' 		  => 'Ille-et-Vilaine',
		'53'          => 'Mayenne',
		'49'          => 'Maine-et-Loire',
		'72'          => 'Sarthe',
		'85'  	      => 'Vendée',
		'22'  	      => 'Côtes-d\'Armor',
		'29'  	      => 'Finistère',
		'56'  	      => 'Morbihan'
	);

	//On ajoute les meta box (champs supplémentaires) pour la fiche candidat
	add_action("admin_init", "admin_init");
	function admin_init()
	{
		add_meta_box("comment_rh","Commentaire RH: ","comment_rh","fiche","normal","low");
		add_meta_box("departements","Mobilité géographique : ","departements","fiche","normal","high");
	}

	
	//Pour le champ commentaire, on utilise la fonction wp_editor de wordpress qui génère un éditeur WYSIWYG
	function comment_rh($fiche)
	{
		//echo '<label for="comment_rh">Commentaire RH</label>';
		wp_editor("","commentrh",array(
				"textarea_name"=>"comment_rh",
				"teeny"=>true
			));
	}

	//Fonction qui gère l'affichage du champ dans l'admin
	function departements($fiche)
	{
		wp_nonce_field( 'departements-nonce_'.$fiche->ID, 'departements-nonce');
		$departements_n = get_post_meta($fiche->ID,'_departements',false);
		/*$types_biens_n = get_post_meta($fiche->ID,'_type_biens',false);
		$all_type_biens_n = get_post_meta($fiche->ID,'_all_type_biens',true);*/
		global $departements;
		foreach($departements as $t => $ty){
			$ck = (in_array((String)$t,$departements_n)) ? 'checked' :'';
			echo '<input type="checkbox" name="departements[]" id="checkbox-'.$t.'" value="'.$t.'" '.$ck.'  /> <label for="checkbox-'.$t.'">('.$t.') '.ucfirst($ty).'</label>';
			echo '<br/>';
		}
	}

	//On définie les fonctions pour enregistrer 
	add_action('save_post','save_fiche');
	function save_fiche($ficheID)
	{
		if ( !current_user_can( 'edit_post', $ficheID ) )
		return $ficheID;

		if ( isset( $_POST['departements'] ) ) {
			check_admin_referer('departements-nonce_'.$_POST['post_ID'], 'departements-nonce') ;
			delete_post_meta($ficheID, "_departements");
			foreach($_POST['departements'] as $i=>$c){
				add_post_meta($ficheID, "_departements", $c); 
			}
		}

	}

	if(is_admin())
	// POUR LE BACK OFFICE
		get_template_part( 'functs', 'adminonly' );
	else
		// POUR LE FRONT OFFICE
		get_template_part( 'functs', 'frontendonly' );
?>