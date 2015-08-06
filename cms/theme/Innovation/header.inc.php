<?php if(!defined('IN_GS')){ die('you cannot load this page directly.'); }
/****************************************************
*
* @File: 			header.inc.php
* @Package:		GetSimple
* @Action:		Innovation theme for GetSimple CMS
*
*****************************************************/
?><!DOCTYPE html><html lang="en" > <!--<![endif]-->
<head>
<meta charset="utf-8">
<title>Schick-Personal - <?php get_page_title(); ?></title>
<meta name="keywords" content="<?php get_page_meta_keywords(); ?>"/>
<meta name="description" content="<?php get_page_meta_desc(); ?>"/>

<script>
setTimeout(function(){
//location.href = "/#c<?php get_page_slug(); ?>";
},200);
</script>

</head> 
<body id="<?php get_page_slug(); ?>" >
