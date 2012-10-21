<?php get_header();
if(have_posts()) : while(have_posts()) : the_post();
		 ?>
		<section id="contenu">
			<article>
			<div class="bandeau recrut"><h1><?php the_title(); ?></h1></div>
			<?php the_content();	 ?>			
			</article>		
		</section>
	<?php 
		endwhile;endif;
		get_sidebar(); ?>	
	<?php get_footer(); ?>