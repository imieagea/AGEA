<?php get_header();
		 ?>
		<section id="contenu">
		<?php
if(have_posts()) : while(have_posts()) : the_post(); ?>
			<article>
			<div class="bandeau recrut"><h1><?php the_title(); ?></h1></div>
			<?php the_content();	 ?>			
			</article>		
			<?php endwhile;endif;?>
		</section>
	<?php 
		
		get_sidebar(); ?>	
	<?php get_footer(); ?>