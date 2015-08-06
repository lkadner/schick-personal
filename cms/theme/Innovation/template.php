<?php if(!defined('IN_GS')){ die('you cannot load this page directly.'); }
/****************************************************
*
* @File: 			template.php
* @Package:		GetSimple
* @Action:		Innovation theme for GetSimple CMS
*
*****************************************************/


# Get this theme's settings based on what was entered within its plugin. 
# This function is in functions.php 
$innov_settings = Innovation_Settings();

# Include the header template
include('header.inc.php'); 
?>
				
				<section  id="tabContent">
				<?php get_page_content(); ?>
				</section>
	

<!-- include the footer template -->
<?php include('footer.inc.php'); ?>