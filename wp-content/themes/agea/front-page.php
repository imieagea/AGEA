<?php get_header(); ?>
		<section id="contenu">
			<article>
			<?php 
			$recrut = new WP_Query('page_id=29'); 
			if($recrut->have_posts()) : while($recrut->have_posts()) : $recrut-> the_post(); ?>
			<div class="bandeau recrut"><h1><?php the_title(); ?></h1></div>
			<div class="text_recrut"><?php the_content(); ?></div>
			<a href="" class="button_cv">Déposez votre CV !</a>	
<div class="clear"></div>	
<?php endwhile;endif; ?>		
			</article>
			
			<article>
			<?php 
			$a_la_une = new WP_Query('post_type=news&posts_per_page=1&order=DESC'); 
			if($a_la_une->have_posts()) : while($a_la_une->have_posts()) : $a_la_une-> the_post(); ?>
			<div class="bandeau une">À la une: <?php the_title(); ?></div>
			<div class="text_une">
			<?php the_content(); ?>
			</div>
			<?php endwhile;endif; ?>	
			</article>
		</section>
	<?php get_sidebar(); ?>	
	<?php get_footer(); ?>