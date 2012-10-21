<aside id="sidebar">
			<div id="box_login">
				<div class="bandeau login">Adhérents AGEA</div>
				<form action="">
				<span class="before_login_input"></span><input type="text" class="login_input" placeholder="Identifiant"/>
				<span class="before_mdp_input"></span><input type="password" class="mdp_input" placeholder="Mot de passe"/>
				<input type="submit" value="Connexion" class="right_button"/><div class="clear"></div>
				</form>
			</div>
			<div id="box_actus">
				<div class="bandeau actus">Actualités</div>
				<ul id="list_actus">
				<?php 
			$actus = new WP_Query('post_type=post&tag_ID=4&posts_per_page=3&order=DESC'); 
			if($actus->have_posts()) : while($actus->have_posts()) : $actus-> the_post(); ?>
					<li>
						<a href="<?php the_permalink(); ?>"><?php the_title();?></a>
						<p><em> 
						<?php
$my_post_categories = get_the_category();

$my_post_child_cats = array();
foreach ( $my_post_categories as $post_cat ) {
    if ( 0 != $post_cat->category_parent ) {
        echo $post_cat->cat_name;
    }
}
?>
						</em></p>
					<?php the_excerpt();?>
					</li>
					<?php endwhile;endif; ?>	
				</ul>
				<a href="" class="all_actus">Voir toutes les actualités</a>
				<div class="clear"></div>
			</div>
			<div id="box_contact">
				<div class="bandeau contact">Contact</div>
				<p>
					Emné FAKHRY <br />
					4, rue de l'Héronnière <br />
					44000 Nantes <br />
					Mail : rg-paysloire@agea.fr <br />
					Portable : 06 58 69 00 73 <br />
					Fax : 02 40 69 81 14 <br />
				</p>
				<a href="" class="right_button contact_link">Contactez-nous</a><div class="clear"></div>
			</div>
		</aside>
		<div class="clear"></div>