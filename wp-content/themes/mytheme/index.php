<?php get_header(); ?>

<div id="primary">
   <main id="main" class="site-main" role="main">

      <?php
      // Start the loop
      while (have_posts()) {
         the_post();
         // Display post content
         the_content();
      }
      ?>

   </main><!-- #main -->
</div><!-- #primary -->

<?php get_footer(); ?>

