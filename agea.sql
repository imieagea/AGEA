-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Lun 22 Octobre 2012 à 09:35
-- Version du serveur: 5.0.27
-- Version de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `agea`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `comment_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL auto_increment,
  `comment_post_ID` bigint(20) unsigned NOT NULL default '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL default '',
  `comment_author_url` varchar(200) NOT NULL default '',
  `comment_author_IP` varchar(100) NOT NULL default '',
  `comment_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL default '0',
  `comment_approved` varchar(20) NOT NULL default '1',
  `comment_agent` varchar(255) NOT NULL default '',
  `comment_type` varchar(20) NOT NULL default '',
  `comment_parent` bigint(20) unsigned NOT NULL default '0',
  `user_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2012-10-18 08:09:13', '2012-10-18 08:09:13', 'Bonjour, ceci est un commentaire.<br /> Pour supprimer un commentaire, connectez-vous, et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL auto_increment,
  `link_url` varchar(255) NOT NULL default '',
  `link_name` varchar(255) NOT NULL default '',
  `link_image` varchar(255) NOT NULL default '',
  `link_target` varchar(25) NOT NULL default '',
  `link_description` varchar(255) NOT NULL default '',
  `link_visible` varchar(20) NOT NULL default 'Y',
  `link_owner` bigint(20) unsigned NOT NULL default '1',
  `link_rating` int(11) NOT NULL default '0',
  `link_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL default '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `wp_links`
--

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wordpress.org', 'Documentation', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://www.wordpress-fr.net/planet/', 'Blog WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://feeds2.feedburner.com/WordpressFrancophonePlanet'),
(3, 'http://www.wordpress-fr.net/support/', 'Forums d&rsquo;entraide en français', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/extend/plugins/', 'Extensions', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/themes/', 'Thèmes', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, '<a href="http://www.wordpress-fr.net/support/">Forums d&rsquo;entraide</a>', 'Remarque', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://www.wordpress-fr.net/planet/', 'La planète WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL auto_increment,
  `option_name` varchar(64) NOT NULL default '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL default 'yes',
  PRIMARY KEY  (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=243 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/agea', 'yes'),
(2, 'blogname', 'Agea', 'yes'),
(3, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'wyllen44@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'default_post_edit_rows', '20', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(26, 'links_recently_updated_prepend', '<em>', 'yes'),
(27, 'links_recently_updated_append', '</em>', 'yes'),
(28, 'links_recently_updated_time', '120', 'yes'),
(29, 'comment_moderation', '0', 'yes'),
(30, 'moderation_notify', '1', 'yes'),
(31, 'permalink_structure', '/%postname%/', 'yes'),
(32, 'gzipcompression', '0', 'yes'),
(33, 'hack_file', '0', 'yes'),
(34, 'blog_charset', 'UTF-8', 'yes'),
(35, 'moderation_keys', '', 'no'),
(36, 'active_plugins', 'a:1:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";}', 'yes'),
(37, 'home', 'http://127.0.0.1/agea', 'yes'),
(38, 'category_base', '', 'yes'),
(39, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(40, 'advanced_edit', '0', 'yes'),
(41, 'comment_max_links', '2', 'yes'),
(42, 'gmt_offset', '1', 'yes'),
(43, 'default_email_category', '1', 'yes'),
(44, 'recently_edited', '', 'no'),
(45, 'template', 'agea', 'yes'),
(46, 'stylesheet', 'agea', 'yes'),
(47, 'comment_whitelist', '1', 'yes'),
(48, 'blacklist_keys', '', 'no'),
(49, 'comment_registration', '0', 'yes'),
(50, 'html_type', 'text/html', 'yes'),
(51, 'use_trackback', '0', 'yes'),
(52, 'default_role', 'subscriber', 'yes'),
(53, 'db_version', '21707', 'yes'),
(54, 'uploads_use_yearmonth_folders', '1', 'yes'),
(55, 'upload_path', '', 'yes'),
(56, 'blog_public', '0', 'yes'),
(57, 'default_link_category', '2', 'yes'),
(58, 'show_on_front', 'posts', 'yes'),
(59, 'tag_base', '', 'yes'),
(60, 'show_avatars', '1', 'yes'),
(61, 'avatar_rating', 'G', 'yes'),
(62, 'upload_url_path', '', 'yes'),
(63, 'thumbnail_size_w', '150', 'yes'),
(64, 'thumbnail_size_h', '150', 'yes'),
(65, 'thumbnail_crop', '1', 'yes'),
(66, 'medium_size_w', '300', 'yes'),
(67, 'medium_size_h', '300', 'yes'),
(68, 'avatar_default', 'mystery', 'yes'),
(69, 'enable_app', '0', 'yes'),
(70, 'enable_xmlrpc', '0', 'yes'),
(71, 'large_size_w', '1024', 'yes'),
(72, 'large_size_h', '1024', 'yes'),
(73, 'image_default_link_type', 'file', 'yes'),
(74, 'image_default_size', '', 'yes'),
(75, 'image_default_align', '', 'yes'),
(76, 'close_comments_for_old_posts', '0', 'yes'),
(77, 'close_comments_days_old', '14', 'yes'),
(78, 'thread_comments', '1', 'yes'),
(79, 'thread_comments_depth', '5', 'yes'),
(80, 'page_comments', '0', 'yes'),
(81, 'comments_per_page', '50', 'yes'),
(82, 'default_comments_page', 'newest', 'yes'),
(83, 'comment_order', 'asc', 'yes'),
(84, 'sticky_posts', 'a:0:{}', 'yes'),
(85, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(86, 'widget_text', 'a:0:{}', 'yes'),
(87, 'widget_rss', 'a:0:{}', 'yes'),
(88, 'uninstall_plugins', 'a:0:{}', 'no'),
(89, 'timezone_string', '', 'yes'),
(90, 'embed_autourls', '1', 'yes'),
(91, 'embed_size_w', '', 'yes'),
(92, 'embed_size_h', '600', 'yes'),
(93, 'page_for_posts', '0', 'yes'),
(94, 'page_on_front', '0', 'yes'),
(95, 'default_post_format', '0', 'yes'),
(96, 'initial_db_version', '21707', 'yes'),
(97, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:4:{i:1350910196;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1350914868;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1350936562;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(106, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:2:{i:0;O:8:"stdClass":9:{s:8:"response";s:6:"latest";s:8:"download";s:49:"http://fr.wordpress.org/wordpress-3.4.2-fr_FR.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:49:"http://fr.wordpress.org/wordpress-3.4.2-fr_FR.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;}s:7:"current";s:5:"3.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.2";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":9:{s:8:"response";s:6:"latest";s:8:"download";s:40:"http://wordpress.org/wordpress-3.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:40:"http://wordpress.org/wordpress-3.4.2.zip";s:10:"no_content";s:51:"http://wordpress.org/wordpress-3.4.2-no-content.zip";s:11:"new_bundled";s:52:"http://wordpress.org/wordpress-3.4.2-new-bundled.zip";s:7:"partial";b:0;}s:7:"current";s:5:"3.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.2";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1350894176;s:15:"version_checked";s:5:"3.4.2";}', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":3:{s:12:"last_checked";i:1350897499;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:5:"2.5.6";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"3.3.1";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:0:{}}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":3:{s:12:"last_checked";i:1350898476;s:7:"checked";a:3:{s:4:"agea";s:0:"";s:12:"twentyeleven";s:3:"1.4";s:9:"twentyten";s:3:"1.4";}s:8:"response";a:0:{}}', 'yes'),
(111, '_site_transient_timeout_browser_d2e6e1f365d3dc697b1675d5eb83ee63', '1351152567', 'yes'),
(112, '_site_transient_browser_d2e6e1f365d3dc697b1675d5eb83ee63', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"22.0.1229.94";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(113, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:21:"http://127.0.0.1/agea";s:4:"link";s:97:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://127.0.0.1/agea/";s:3:"url";s:130:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://127.0.0.1/agea/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(136, 'can_compress_scripts', '1', 'yes'),
(165, 'theme_mods_twentyeleven', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1350760612;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}}}}', 'yes'),
(166, 'current_theme', '', 'yes'),
(167, 'theme_mods_agea', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:4:"menu";i:3;}}', 'yes'),
(168, 'theme_switched', '', 'yes'),
(193, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(196, 'rewrite_rules', 'a:87:{s:8:"fiche/?$";s:25:"index.php?post_type=fiche";s:38:"fiche/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=fiche&feed=$matches[1]";s:33:"fiche/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=fiche&feed=$matches[1]";s:25:"fiche/page/([0-9]{1,})/?$";s:43:"index.php?post_type=fiche&paged=$matches[1]";s:33:"fiche/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"fiche/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"fiche/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"fiche/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"fiche/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"fiche/([^/]+)/trackback/?$";s:32:"index.php?fiche=$matches[1]&tb=1";s:46:"fiche/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?fiche=$matches[1]&feed=$matches[2]";s:41:"fiche/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?fiche=$matches[1]&feed=$matches[2]";s:34:"fiche/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?fiche=$matches[1]&paged=$matches[2]";s:41:"fiche/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?fiche=$matches[1]&cpage=$matches[2]";s:26:"fiche/([^/]+)(/[0-9]+)?/?$";s:44:"index.php?fiche=$matches[1]&page=$matches[2]";s:22:"fiche/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"fiche/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"fiche/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"fiche/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"fiche/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:29:"comments/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(200, '_site_transient_timeout_wporg_theme_feature_list', '1350865755', 'yes'),
(201, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:5:"Width";a:2:{i:0;s:11:"fixed-width";i:1;s:14:"flexible-width";}s:8:"Features";a:19:{i:0;s:8:"blavatar";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:20:"front-page-post-form";i:11;s:19:"full-width-template";i:12;s:12:"microformats";i:13;s:12:"post-formats";i:14;s:20:"rtl-language-support";i:15;s:11:"sticky-post";i:16;s:13:"theme-options";i:17;s:17:"threaded-comments";i:18;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(216, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1350939484', 'no'),
(217, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: A feed could not be found at http://feeds2.feedburner.com/WordpressFrancophonePlanet. A feed with an invalid mime type may fall victim to this error, or SimplePie was unable to auto-discover it.. Use force_feed() if you are certain this URL is a real feed.</p></div>', 'no'),
(218, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1350939485', 'no'),
(219, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>RSS Error</strong>: A feed could not be found at http://feeds2.feedburner.com/WordpressFrancophonePlanet. A feed with an invalid mime type may fall victim to this error, or SimplePie was unable to auto-discover it.. Use force_feed() if you are certain this URL is a real feed.</p></div>', 'no'),
(220, '_transient_timeout_feed_b51f45d168685434f253d89068745af1', '1350939485', 'no'),
(221, '_transient_feed_b51f45d168685434f253d89068745af1', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:4:"\n  \n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:33:"\n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"link:http://127.0.0.1/agea/ - Google Blog Search";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:85:"http://www.google.com/search?ie=utf-8&q=link:http://127.0.0.1/agea/&tbm=blg&tbs=sbd:1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:79:"Your search - <b>link:http://127.0.0.1/agea/</b> - did not match any documents.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://a9.com/-/spec/opensearch/1.1/";a:3:{s:12:"totalResults";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:10:"startIndex";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:12:"itemsPerPage";a:1:{i:0;a:5:{s:4:"data";s:2:"10";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:12:{s:3:"via";s:10:"1.1 SRV-FF";s:10:"connection";s:5:"close";s:16:"proxy-connection";s:5:"close";s:7:"expires";s:2:"-1";s:4:"date";s:29:"Mon, 22 Oct 2012 08:53:08 GMT";s:12:"content-type";s:28:"text/xml; charset=ISO-8859-1";s:6:"server";s:3:"gws";s:13:"cache-control";s:18:"private, max-age=0";s:10:"set-cookie";a:2:{i:0;s:143:"PREF=ID=8625213ddc54c957:FF=0:TM=1350895988:LM=1350895988:S=bO7b5uBqDfC5E8Bb; expires=Wed, 22-Oct-2014 08:53:08 GMT; path=/; domain=.google.com";i:1;s:212:"NID=65=pQoYAKIWbJkPI8m7hsRhPwn2r5E5YhyONpma1Zr1-hLIgUJLTgMoYSnXE7rQo-VC1ns0J8FQSSO0MF5dOU40GKQbdFWu4vSRelTygqqWWhkHdsRUW509zYzFEEwUJbSG; expires=Tue, 23-Apr-2013 08:53:08 GMT; path=/; domain=.google.com; HttpOnly";}s:3:"p3p";s:122:"CP="This is not a P3P policy! See http://www.google.com/support/accounts/bin/answer.py?hl=en&answer=151657 for more info."";s:16:"x-xss-protection";s:13:"1; mode=block";s:15:"x-frame-options";s:10:"SAMEORIGIN";}s:5:"build";s:14:"20111015034325";}', 'no'),
(222, '_transient_timeout_feed_mod_b51f45d168685434f253d89068745af1', '1350939485', 'no'),
(223, '_transient_feed_mod_b51f45d168685434f253d89068745af1', '1350896285', 'no'),
(224, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1350939485', 'no'),
(225, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p>This dashboard widget queries <a href="http://blogsearch.google.com/">Google Blog Search</a> so that when another blog links to your site it will show up here. It has found no incoming links&hellip; yet. It&#8217;s okay &#8212; there is no rush.</p>\n', 'no'),
(226, '_transient_timeout_feed_a5420c83891a9c88ad2a4f04584a5efc', '1350939486', 'no'),
(227, '_transient_feed_a5420c83891a9c88ad2a4f04584a5efc', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:72:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://wordpress.org/extend/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 22 Oct 2012 08:39:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:15:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"http://wordpress.org/extend/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:41:"2141@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"WordPress SEO by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"http://wordpress.org/extend/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:41:"8321@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using the WordPress SEO plugin by Yoast.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:65:"http://wordpress.org/extend/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"753@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:86:"WordPress SEO plugin to automatically optimize your Wordpress blog for Search Engines.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/extend/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"23862@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:104:"Supercharge your WordPress site with powerful features previously only available to WordPress.com users.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:24:"Michael Adams (mdawaffe)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Google Analytics for WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:77:"http://wordpress.org/extend/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:41:"2316@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:145:"Track your WordPress site easily and with lots of metadata: views per author &#38; category, automatic tracking of outbound clicks and pageviews.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"http://wordpress.org/extend/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"132@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Arne";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"http://wordpress.org/extend/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:39:"15@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"http://wordpress.org/extend/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:41:"2572@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:66:"http://wordpress.org/extend/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"18101@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:6:"gtrans";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"http://wordpress.org/extend/plugins/gtrans/#post-30417";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 22 Sep 2011 11:48:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"30417@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:63:"Make your website available to the world using Google Translate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"kikadev";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"http://wordpress.org/extend/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:41:"1169@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:109:"NextGEN Gallery is a fully integrated image gallery plugin for WordPress with dozens of options and features.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Ultimate TinyMCE";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://wordpress.org/extend/plugins/ultimate-tinymce/#post-32088";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 14 Nov 2011 09:06:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"32088@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:84:"Description: Beef up your visual tinymce editor with a plethora of advanced options.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Josh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://wordpress.org/extend/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"363@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"AddThis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"http://wordpress.org/extend/plugins/addthis/#post-8124";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 17 Dec 2008 16:03:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:41:"8124@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"The AddThis Social Bookmarking Widget allows any visitor to bookmark and share your site easily with over 330 popular services.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"_mjk_";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://wordpress.org/extend/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"29832@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Wordfence Security is a free enterprise class security plugin that includes a firewall, virus scanning, real-time traffic with geolocation and more.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"mmaunder";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:52:"http://wordpress.org/extend/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:3:"via";s:10:"1.1 SRV-FF";s:10:"connection";s:5:"close";s:16:"proxy-connection";s:5:"close";s:4:"date";s:29:"Mon, 22 Oct 2012 08:53:09 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:6:"server";s:5:"nginx";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Thu, 02 Aug 2007 12:45:03 GMT";s:4:"x-nc";s:11:"HIT luv 139";}s:5:"build";s:14:"20111015034325";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(228, '_transient_timeout_feed_mod_a5420c83891a9c88ad2a4f04584a5efc', '1350939486', 'no'),
(229, '_transient_feed_mod_a5420c83891a9c88ad2a4f04584a5efc', '1350896286', 'no'),
(230, '_transient_timeout_feed_57bc725ad6568758915363af670fd8bc', '1350939486', 'no'),
(231, '_transient_feed_57bc725ad6568758915363af670fd8bc', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:72:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress Plugins » View: Newest";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:47:"http://wordpress.org/extend/plugins/browse/new/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress Plugins » View: Newest";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 22 Oct 2012 08:39:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:15:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"WP Analytics Tracking";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"http://wordpress.org/extend/plugins/wp-analytics-tracking/#post-44537";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 18 Oct 2012 13:33:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44537@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:55:"Manage Google Analytics code or any other Tracking code";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Ydalb";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"EELV newsletter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"http://wordpress.org/extend/plugins/eelv-newsletter/#post-44535";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 18 Oct 2012 13:13:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44535@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:116:"Add a registration form on FrontOffice\na newsletter adminer on BackOffice :\n- manage skins\n- address book\n- archives";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Europe Ecologie Les Verts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:23:"QR Code Generator 4 All";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"http://wordpress.org/extend/plugins/qr-code-generator-4-all/#post-44531";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 18 Oct 2012 09:11:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44531@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:117:"Create and embed QR Code images, offer QR generator to your user. Can also render Custom-QR-Codes with included logo.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"internetloesungen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:17:"Easy Social Icons";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:65:"http://wordpress.org/extend/plugins/easy-social-icons/#post-44600";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 19 Oct 2012 12:16:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44600@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:116:"You can upload your own social icon, set your social URL, choose weather you want to display vertical or horizontal.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"cybernetikz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"Mi Nivel Lector";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/extend/plugins/minivel/#post-44618";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 19 Oct 2012 15:36:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44618@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"Permite visualizar el nivel obtenido mediante los trofeos de biblioeteca.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"biblioeteca";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"EMC2 Alert Boxes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://wordpress.org/extend/plugins/emc2-alert-boxes/#post-44676";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 20 Oct 2012 01:00:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44676@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:70:"EMC2 Alert Boxes make a great way to notify your visitors of anything!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Eric McNiece";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"CASH Music";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"http://wordpress.org/extend/plugins/cash-music-platform-connection/#post-44437";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 15 Oct 2012 00:17:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44437@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:78:"Works with the CASH Music platform to allow element inserts via WP short-code.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"cashmusic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"Hail Reports Heatmap";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:81:"http://wordpress.org/extend/plugins/interactive-hail-reports-heat-map/#post-44695";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 21 Oct 2012 02:26:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44695@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"The Hail Reports Heatmap plugin gives web designers, weather enthusiasts, and severe weather related businesses such as roofers and paintless dent rep";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"ihmblh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Duplicate Comment Authors";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:73:"http://wordpress.org/extend/plugins/duplicate-comment-authors/#post-44677";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 20 Oct 2012 01:03:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44677@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Prevents people posting comments using the same name as a registered users display name.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Ben May";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"bbPress Code Snippets";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"http://wordpress.org/extend/plugins/bbpress-code-snippets/#post-44693";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 21 Oct 2012 00:57:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44693@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"Automatically display HTML/PHP code posted in bbPress topics and replies.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Jason";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:8:"Easygram";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"http://wordpress.org/extend/plugins/easygram/#post-44601";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 19 Oct 2012 12:57:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44601@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:52:"Easygram is a free WordPress Instagram Photo plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"obox";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Teacher";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://wordpress.org/extend/plugins/wp-teacher/#post-44555";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 18 Oct 2012 22:57:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44555@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:130:"WP Teacher is a plugin that allows teachers to intergrate course content into thier personal website to ehnhance student learning.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"fredlawl";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Clear RSS Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:66:"http://wordpress.org/extend/plugins/wp-clear-rss-cache/#post-44692";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 20 Oct 2012 23:59:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44692@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"A simple WP action to clear the RSS widget cashe.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"mdjekic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Relative Posts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"http://wordpress.org/extend/plugins/relative-posts/#post-44688";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 20 Oct 2012 16:26:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44688@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:96:"With the Relative Posts plugin widget you can show up on the sidebar a list of related articles.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:20:"Panagiotis Angelidis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Breathable More Tag";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://wordpress.org/extend/plugins/breathable-more-tag/#post-44675";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 20 Oct 2012 00:53:59 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44675@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:96:"Ensure that the &#60;!--more--&#62; tag has space to breathe if the following tag is block-level";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"One Crayon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:48:"http://wordpress.org/extend/plugins/rss/view/new";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:3:"via";s:10:"1.1 SRV-FF";s:10:"connection";s:5:"close";s:16:"proxy-connection";s:5:"close";s:4:"date";s:29:"Mon, 22 Oct 2012 08:53:10 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:6:"server";s:5:"nginx";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Thu, 18 Oct 2012 13:33:48 GMT";s:4:"x-nc";s:11:"HIT luv 139";}s:5:"build";s:14:"20111015034325";}', 'no'),
(232, '_transient_timeout_feed_mod_57bc725ad6568758915363af670fd8bc', '1350939486', 'no'),
(233, '_transient_feed_mod_57bc725ad6568758915363af670fd8bc', '1350896286', 'no'),
(234, '_transient_timeout_plugin_slugs', '1350983901', 'no'),
(235, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:9:"hello.php";}', 'no'),
(236, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1350939486', 'no'),
(237, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '<h4>Most Popular</h4>\n<h5><a href=''http://wordpress.org/extend/plugins/gtrans/''>gtrans</a></h5>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=gtrans&amp;_wpnonce=1ec01ef8ff&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''gtrans''>Install</a>)</span>\n<p>Make your website available to the world using Google Translate</p>\n<h4>Newest Plugins</h4>\n<h5><a href=''http://wordpress.org/extend/plugins/duplicate-comment-authors/''>Duplicate Comment Authors</a></h5>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=duplicate-comment-authors&amp;_wpnonce=a09f4dd819&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Duplicate Comment Authors''>Install</a>)</span>\n<p>Prevents people posting comments using the same name as a registered users display name.</p>\n', 'no'),
(238, 'category_children', 'a:2:{i:4;a:2:{i:0;i:5;i:1;i:6;}i:1;a:2:{i:0;i:7;i:1;i:8;}}', 'yes'),
(239, 'recently_activated', 'a:0:{}', 'yes'),
(240, 'wpcf7', 'a:1:{s:7:"version";s:5:"3.3.1";}', 'yes'),
(241, '_site_transient_timeout_theme_roots', '1350900275', 'yes'),
(242, '_site_transient_theme_roots', 'a:3:{s:4:"agea";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `post_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://127.0.0.1/agea/'),
(11, 2, '_wp_trash_meta_status', 'publish'),
(12, 2, '_wp_trash_meta_time', '1350828391'),
(13, 6, '_edit_last', '1'),
(14, 6, '_edit_lock', '1350829876:1'),
(15, 9, '_edit_last', '1'),
(16, 9, '_edit_lock', '1350829797:1'),
(17, 11, '_edit_last', '1'),
(18, 11, '_edit_lock', '1350829807:1'),
(19, 13, '_edit_last', '1'),
(20, 13, '_edit_lock', '1350829785:1'),
(21, 15, '_edit_last', '1'),
(22, 15, '_edit_lock', '1350829775:1'),
(23, 17, '_menu_item_type', 'post_type'),
(24, 17, '_menu_item_menu_item_parent', '0'),
(25, 17, '_menu_item_object_id', '15'),
(26, 17, '_menu_item_object', 'page'),
(27, 17, '_menu_item_target', ''),
(28, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(29, 17, '_menu_item_xfn', ''),
(30, 17, '_menu_item_url', ''),
(32, 18, '_menu_item_type', 'post_type'),
(33, 18, '_menu_item_menu_item_parent', '0'),
(34, 18, '_menu_item_object_id', '13'),
(35, 18, '_menu_item_object', 'page'),
(36, 18, '_menu_item_target', ''),
(37, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(38, 18, '_menu_item_xfn', ''),
(39, 18, '_menu_item_url', ''),
(41, 19, '_menu_item_type', 'post_type'),
(42, 19, '_menu_item_menu_item_parent', '0'),
(43, 19, '_menu_item_object_id', '11'),
(44, 19, '_menu_item_object', 'page'),
(45, 19, '_menu_item_target', ''),
(46, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 19, '_menu_item_xfn', ''),
(48, 19, '_menu_item_url', ''),
(50, 20, '_menu_item_type', 'post_type'),
(51, 20, '_menu_item_menu_item_parent', '0'),
(52, 20, '_menu_item_object_id', '9'),
(53, 20, '_menu_item_object', 'page'),
(54, 20, '_menu_item_target', ''),
(55, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 20, '_menu_item_xfn', ''),
(57, 20, '_menu_item_url', ''),
(59, 21, '_menu_item_type', 'post_type'),
(60, 21, '_menu_item_menu_item_parent', '0'),
(61, 21, '_menu_item_object_id', '6'),
(62, 21, '_menu_item_object', 'page'),
(63, 21, '_menu_item_target', ''),
(64, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 21, '_menu_item_xfn', ''),
(66, 21, '_menu_item_url', ''),
(68, 1, '_wp_trash_meta_status', 'publish'),
(69, 1, '_wp_trash_meta_time', '1350828890'),
(70, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(71, 29, '_edit_last', '1'),
(72, 29, '_edit_lock', '1350830030:1'),
(73, 32, '_edit_last', '1'),
(74, 32, '_edit_lock', '1350857212:1'),
(75, 34, '_wp_attached_file', '2012/10/photo1.jpg'),
(76, 34, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"225";s:6:"height";s:3:"201";s:14:"hwstring_small";s:23:"height=''96'' width=''107''";s:4:"file";s:18:"2012/10/photo1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:18:"photo1-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(77, 35, '_edit_last', '1'),
(78, 35, '_edit_lock', '1350857690:1'),
(80, 37, '_edit_last', '1'),
(81, 37, '_edit_lock', '1350897268:1'),
(83, 39, '_edit_last', '1'),
(84, 39, '_edit_lock', '1350857741:1'),
(86, 41, '_edit_last', '1'),
(87, 41, '_edit_lock', '1350897252:1'),
(89, 43, '_edit_last', '1'),
(90, 43, '_edit_lock', '1350896657:1'),
(91, 45, '_edit_last', '1'),
(92, 45, '_edit_lock', '1350898362:1'),
(93, 47, '_form', '<p>Votre nom (obligatoire)<br />\n    [text* your-name] </p>\n\n<p>Votre email (obligatoire)<br />\n    [email* your-email] </p>\n\n<p>Sujet<br />\n    [text your-subject] </p>\n\n<p>Votre message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Envoyer"]</p>'),
(94, 47, '_mail', 'a:7:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"[your-name] <[your-email]>";s:4:"body";s:174:"De : [your-name] <[your-email]>\nSujet : [your-subject]\n\nCorps du message :\n[your-message]\n\n--\nCe email a été envoyé via formulaire de contact le Agea http://127.0.0.1/agea";s:9:"recipient";s:18:"wyllen44@gmail.com";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";s:0:"";}'),
(95, 47, '_mail_2', 'a:8:{s:6:"active";s:0:"";s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"[your-name] <[your-email]>";s:4:"body";s:118:"Corps du message :\n[your-message]\n\n--\nCe email a été envoyé via formulaire de contact le Agea http://127.0.0.1/agea";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";s:0:"";}'),
(96, 47, '_messages', 'a:13:{s:12:"mail_sent_ok";s:42:"Votre message a bien été envoyé. Merci.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:76:"Erreur de validation. Veuillez vérifier les champs et soumettre à nouveau.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:61:"Merci de bien vouloir accepter les conditions pour continuer.";s:13:"invalid_email";s:32:"L''adresse email semble invalide.";s:16:"invalid_required";s:38:"Veuillez remplir le champ obligatoire.";s:17:"captcha_not_match";s:28:"Le code entre est incorrect.";s:13:"upload_failed";s:39:"Impossible de télécharger le fichier.";s:24:"upload_file_type_invalid";s:39:"Ce type de fichier n''est pas autorisé.";s:21:"upload_file_too_large";s:31:"Ce fichier est trop volumineux.";s:23:"upload_failed_php_error";s:64:"Impossible de télécharger le fichier. Une erreur est survenue.";s:23:"quiz_answer_not_correct";s:30:"Votre réponse est incorrecte.";}'),
(97, 47, '_additional_settings', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `post_author` bigint(20) unsigned NOT NULL default '0',
  `post_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL default 'publish',
  `comment_status` varchar(20) NOT NULL default 'open',
  `ping_status` varchar(20) NOT NULL default 'open',
  `post_password` varchar(20) NOT NULL default '',
  `post_name` varchar(200) NOT NULL default '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL default '0',
  `guid` varchar(255) NOT NULL default '',
  `menu_order` int(11) NOT NULL default '0',
  `post_type` varchar(20) NOT NULL default 'post',
  `post_mime_type` varchar(100) NOT NULL default '',
  `comment_count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2012-10-18 08:09:13', '2012-10-18 08:09:13', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2012-10-21 15:14:50', '2012-10-21 14:14:50', '', 0, 'http://127.0.0.1/agea/?p=1', 0, 'post', '', 1),
(2, 1, '2012-10-18 08:09:13', '2012-10-18 08:09:13', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page &laquo;&nbsp;À Propos&nbsp;&raquo; qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant&nbsp;:\n\n<blockquote>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça&nbsp;:\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2&nbsp;000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nEtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://127.0.0.1/agea/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'trash', 'open', 'open', '', 'page-d-exemple', '', '', '2012-10-21 15:06:31', '2012-10-21 14:06:31', '', 0, 'http://127.0.0.1/agea/?page_id=2', 0, 'page', '', 0),
(3, 1, '2012-10-18 09:09:28', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-10-18 09:09:28', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/agea/?p=3', 0, 'post', '', 0),
(4, 1, '2012-10-21 15:06:18', '2012-10-21 14:06:18', '', 'Accueil', '', 'publish', 'open', 'open', '', 'accueil', '', '', '2012-10-21 15:14:16', '2012-10-21 14:14:16', '', 0, 'http://127.0.0.1/agea/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2012-10-18 08:09:13', '2012-10-18 08:09:13', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page &laquo;&nbsp;À Propos&nbsp;&raquo; qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant&nbsp;:\n\n<blockquote>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça&nbsp;:\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2&nbsp;000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nEtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://127.0.0.1/agea/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2012-10-18 08:09:13', '2012-10-18 08:09:13', '', 2, 'http://127.0.0.1/agea/?p=5', 0, 'revision', '', 0),
(6, 1, '2012-10-21 15:08:01', '2012-10-21 14:08:01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna', 'Qui sommes-nous ?', '', 'publish', 'open', 'open', '', 'qui-sommes-nous', '', '', '2012-10-21 15:32:09', '2012-10-21 14:32:09', '', 0, 'http://127.0.0.1/agea/?page_id=6', 0, 'page', '', 0),
(7, 1, '2012-10-21 15:07:48', '2012-10-21 14:07:48', '', 'Auto Draft', '', 'inherit', 'open', 'open', '', '6-revision', '', '', '2012-10-21 15:07:48', '2012-10-21 14:07:48', '', 6, 'http://127.0.0.1/agea/?p=7', 0, 'revision', '', 0),
(8, 1, '2012-10-21 15:08:01', '2012-10-21 14:08:01', '', 'Qui sommes-nous ?', '', 'inherit', 'open', 'open', '', '6-revision-2', '', '', '2012-10-21 15:08:01', '2012-10-21 14:08:01', '', 6, 'http://127.0.0.1/agea/?p=8', 0, 'revision', '', 0),
(9, 1, '2012-10-21 15:08:56', '2012-10-21 14:08:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna', 'Nos actions', '', 'publish', 'open', 'open', '', 'nos-actions', '', '', '2012-10-21 15:31:46', '2012-10-21 14:31:46', '', 0, 'http://127.0.0.1/agea/?page_id=9', 0, 'page', '', 0),
(10, 1, '2012-10-21 15:08:48', '2012-10-21 14:08:48', '', 'Auto Draft', '', 'inherit', 'open', 'open', '', '9-revision', '', '', '2012-10-21 15:08:48', '2012-10-21 14:08:48', '', 9, 'http://127.0.0.1/agea/?p=10', 0, 'revision', '', 0),
(11, 1, '2012-10-21 15:09:21', '2012-10-21 14:09:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna', 'Partenariats', '', 'publish', 'open', 'open', '', 'partenariats', '', '', '2012-10-21 15:31:58', '2012-10-21 14:31:58', '', 0, 'http://127.0.0.1/agea/?page_id=11', 0, 'page', '', 0),
(12, 1, '2012-10-21 15:09:19', '2012-10-21 14:09:19', '', 'Partenariats', '', 'inherit', 'open', 'open', '', '11-revision', '', '', '2012-10-21 15:09:19', '2012-10-21 14:09:19', '', 11, 'http://127.0.0.1/agea/?p=12', 0, 'revision', '', 0),
(13, 1, '2012-10-21 15:09:34', '2012-10-21 14:09:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna', 'Adhérer', '', 'publish', 'open', 'open', '', 'adherer', '', '', '2012-10-21 15:31:36', '2012-10-21 14:31:36', '', 0, 'http://127.0.0.1/agea/?page_id=13', 0, 'page', '', 0),
(14, 1, '2012-10-21 15:09:30', '2012-10-21 14:09:30', '', 'Auto Draft', '', 'inherit', 'open', 'open', '', '13-revision', '', '', '2012-10-21 15:09:30', '2012-10-21 14:09:30', '', 13, 'http://127.0.0.1/agea/?p=14', 0, 'revision', '', 0),
(15, 1, '2012-10-21 15:10:03', '2012-10-21 14:10:03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna', 'Espace Orientation Jeune', '', 'publish', 'open', 'open', '', 'espace-orientation-jeune', '', '', '2012-10-21 15:31:26', '2012-10-21 14:31:26', '', 0, 'http://127.0.0.1/agea/?page_id=15', 0, 'page', '', 0),
(16, 1, '2012-10-21 15:09:58', '2012-10-21 14:09:58', '', 'Auto Draft', '', 'inherit', 'open', 'open', '', '15-revision', '', '', '2012-10-21 15:09:58', '2012-10-21 14:09:58', '', 15, 'http://127.0.0.1/agea/?p=16', 0, 'revision', '', 0),
(17, 1, '2012-10-21 15:10:55', '2012-10-21 14:10:55', ' ', '', '', 'publish', 'open', 'open', '', '17', '', '', '2012-10-21 15:14:17', '2012-10-21 14:14:17', '', 0, 'http://127.0.0.1/agea/?p=17', 6, 'nav_menu_item', '', 0),
(18, 1, '2012-10-21 15:10:55', '2012-10-21 14:10:55', ' ', '', '', 'publish', 'open', 'open', '', '18', '', '', '2012-10-21 15:14:17', '2012-10-21 14:14:17', '', 0, 'http://127.0.0.1/agea/?p=18', 5, 'nav_menu_item', '', 0),
(19, 1, '2012-10-21 15:10:55', '2012-10-21 14:10:55', ' ', '', '', 'publish', 'open', 'open', '', '19', '', '', '2012-10-21 15:14:17', '2012-10-21 14:14:17', '', 0, 'http://127.0.0.1/agea/?p=19', 4, 'nav_menu_item', '', 0),
(20, 1, '2012-10-21 15:10:55', '2012-10-21 14:10:55', ' ', '', '', 'publish', 'open', 'open', '', '20', '', '', '2012-10-21 15:14:17', '2012-10-21 14:14:17', '', 0, 'http://127.0.0.1/agea/?p=20', 3, 'nav_menu_item', '', 0),
(21, 1, '2012-10-21 15:10:55', '2012-10-21 14:10:55', ' ', '', '', 'publish', 'open', 'open', '', '21', '', '', '2012-10-21 15:14:17', '2012-10-21 14:14:17', '', 0, 'http://127.0.0.1/agea/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2012-10-21 15:14:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-10-21 15:14:33', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/agea/?post_type=fiche&p=22', 0, 'fiche', '', 0),
(23, 1, '2012-10-18 08:09:13', '2012-10-18 08:09:13', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'open', 'open', '', '1-revision', '', '', '2012-10-18 08:09:13', '2012-10-18 08:09:13', '', 1, 'http://127.0.0.1/agea/?p=23', 0, 'revision', '', 0),
(24, 1, '2012-10-21 15:10:03', '2012-10-21 14:10:03', '', 'Espace Orientation Jeune', '', 'inherit', 'open', 'open', '', '15-revision-2', '', '', '2012-10-21 15:10:03', '2012-10-21 14:10:03', '', 15, 'http://127.0.0.1/agea/15-revision-2/', 0, 'revision', '', 0),
(25, 1, '2012-10-21 15:09:34', '2012-10-21 14:09:34', '', 'Adhérer', '', 'inherit', 'open', 'open', '', '13-revision-2', '', '', '2012-10-21 15:09:34', '2012-10-21 14:09:34', '', 13, 'http://127.0.0.1/agea/13-revision-2/', 0, 'revision', '', 0),
(26, 1, '2012-10-21 15:08:56', '2012-10-21 14:08:56', '', 'Nos actions', '', 'inherit', 'open', 'open', '', '9-revision-2', '', '', '2012-10-21 15:08:56', '2012-10-21 14:08:56', '', 9, 'http://127.0.0.1/agea/9-revision-2/', 0, 'revision', '', 0),
(27, 1, '2012-10-21 15:09:21', '2012-10-21 14:09:21', '', 'Partenariats', '', 'inherit', 'open', 'open', '', '11-revision-2', '', '', '2012-10-21 15:09:21', '2012-10-21 14:09:21', '', 11, 'http://127.0.0.1/agea/11-revision-2/', 0, 'revision', '', 0),
(28, 1, '2012-10-21 15:08:31', '2012-10-21 14:08:31', '', 'Qui sommes-nous ?', '', 'inherit', 'open', 'open', '', '6-revision-3', '', '', '2012-10-21 15:08:31', '2012-10-21 14:08:31', '', 6, 'http://127.0.0.1/agea/6-revision-3/', 0, 'revision', '', 0),
(29, 1, '2012-10-21 15:33:38', '2012-10-21 14:33:38', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.', 'Les agents généraux recrutent', '', 'publish', 'open', 'open', '', 'les-agents-generaux-recrutent', '', '', '2012-10-21 15:33:38', '2012-10-21 14:33:38', '', 0, 'http://127.0.0.1/agea/?page_id=29', 0, 'page', '', 0),
(30, 1, '2012-10-21 15:33:22', '2012-10-21 14:33:22', '', 'Les agents généraux recrutent', '', 'inherit', 'open', 'open', '', '29-revision', '', '', '2012-10-21 15:33:22', '2012-10-21 14:33:22', '', 29, 'http://127.0.0.1/agea/29-revision/', 0, 'revision', '', 0),
(31, 1, '2012-10-21 15:34:40', '2012-10-21 14:34:40', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.', 'Les agents généraux recrutent', '', 'inherit', 'open', 'open', '', '29-autosave', '', '', '2012-10-21 15:34:40', '2012-10-21 14:34:40', '', 29, 'http://127.0.0.1/agea/29-autosave/', 0, 'revision', '', 0),
(32, 1, '2012-10-21 15:52:18', '2012-10-21 14:52:18', '<p style="text-align: left;"><img class=" wp-image-34 alignleft" title="photo1" src="http://127.0.0.1/agea/wp-content/uploads/2012/10/photo1.jpg" alt="" width="180" height="161" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.</p>', 'Lorem ipsum dolor sit amet', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-dolor-sit-amet', '', '', '2012-10-21 23:06:36', '2012-10-21 22:06:36', '', 0, 'http://127.0.0.1/agea/?post_type=news&#038;p=32', 0, 'news', '', 0),
(33, 1, '2012-10-21 23:07:38', '2012-10-21 22:07:38', '<p style="text-align: left;"><img class=" wp-image-34 alignleft" title="photo1" src="http://127.0.0.1/agea/wp-content/uploads/2012/10/photo1.jpg" alt="" width="180" height="161" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.</p>', 'Lorem ipsum dolor sit amet', '', 'inherit', 'open', 'open', '', '32-autosave', '', '', '2012-10-21 23:07:38', '2012-10-21 22:07:38', '', 32, 'http://127.0.0.1/agea/32-autosave/', 0, 'revision', '', 0),
(34, 1, '2012-10-21 15:58:40', '2012-10-21 14:58:40', '', 'photo1', '', 'inherit', 'open', 'open', '', 'photo1', '', '', '2012-10-21 15:58:40', '2012-10-21 14:58:40', '', 32, 'http://127.0.0.1/agea/wp-content/uploads/2012/10/photo1.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2012-10-21 23:16:39', '2012-10-21 22:16:39', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.', 'Lorem ipsum dolor sit ', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit', '', '', '2012-10-21 23:16:40', '2012-10-21 22:16:40', '', 0, 'http://127.0.0.1/agea/?p=35', 0, 'post', '', 0),
(36, 1, '2012-10-21 23:16:04', '2012-10-21 22:16:04', '', 'Lorem ipsum dolor sit amet Actualité Pays de la Loire Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellent [..] Lorem ipsum dolor sit amet Actualité Bretagne Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellent [..] Lorem ipsum dolor sit amet Actualité Bretagne Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellent [..] Lorem ipsum dolor sit amet', '', 'inherit', 'open', 'open', '', '35-revision', '', '', '2012-10-21 23:16:04', '2012-10-21 22:16:04', '', 35, 'http://127.0.0.1/agea/35-revision/', 0, 'revision', '', 0),
(37, 1, '2012-10-21 23:17:07', '2012-10-21 22:17:07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.', 'Test', '', 'publish', 'open', 'open', '', 'test', '', '', '2012-10-21 23:17:07', '2012-10-21 22:17:07', '', 0, 'http://127.0.0.1/agea/?p=37', 0, 'post', '', 0),
(38, 1, '2012-10-21 23:16:58', '2012-10-21 22:16:58', '', 'Test', '', 'inherit', 'open', 'open', '', '37-revision', '', '', '2012-10-21 23:16:58', '2012-10-21 22:16:58', '', 37, 'http://127.0.0.1/agea/37-revision/', 0, 'revision', '', 0),
(39, 1, '2012-10-21 23:17:32', '2012-10-21 22:17:32', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.', 'Test2', '', 'publish', 'open', 'open', '', 'test2', '', '', '2012-10-21 23:17:32', '2012-10-21 22:17:32', '', 0, 'http://127.0.0.1/agea/?p=39', 0, 'post', '', 0),
(40, 1, '2012-10-21 23:17:27', '2012-10-21 22:17:27', '', 'Test2', '', 'inherit', 'open', 'open', '', '39-revision', '', '', '2012-10-21 23:17:27', '2012-10-21 22:17:27', '', 39, 'http://127.0.0.1/agea/39-revision/', 0, 'revision', '', 0),
(41, 1, '2012-10-21 23:17:59', '2012-10-21 22:17:59', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae leo lectus, eu facilisis erat. Ut feugiat imperdiet consectetur. Sed ante ante, commodo eu suscipit et, pulvinar et ante. Pellentesque ac purus odio, vel interdum enim. Quisque lobortis fermentum elit, ac consectetur urna congue sit amet. Pellentesque vehicula commodo adipiscing. dum ipsum orci vel mi.', 'Test3', '', 'publish', 'open', 'open', '', 'test3', '', '', '2012-10-21 23:17:59', '2012-10-21 22:17:59', '', 0, 'http://127.0.0.1/agea/?p=41', 0, 'post', '', 0),
(42, 1, '2012-10-21 23:17:53', '2012-10-21 22:17:53', '', 'Test3', '', 'inherit', 'open', 'open', '', '41-revision', '', '', '2012-10-21 23:17:53', '2012-10-21 22:17:53', '', 41, 'http://127.0.0.1/agea/41-revision/', 0, 'revision', '', 0),
(43, 1, '2012-10-22 10:02:53', '2012-10-22 09:02:53', 'Emné FAKHRY\r\n4, rue de l''Héronnière\r\n44000 Nantes\r\n<strong>Mail</strong> : rg-paysloire@agea.fr\r\n<strong>Portable</strong> : 06 58 69 00 73\r\n<strong>Fax</strong> : 02 40 69 81 14', 'Contact Sidebar', '', 'publish', 'closed', 'closed', '', 'contact-sidebar', '', '', '2012-10-22 10:04:13', '2012-10-22 09:04:13', '', 0, 'http://127.0.0.1/agea/?post_type=contact&#038;p=43', 0, 'contact', '', 0),
(44, 1, '2012-10-22 10:03:55', '2012-10-22 09:03:55', 'Emné FAKHRY\n4, rue de l''Héronnière\n44000 Nantes\n<strong>Mail</strong> : rg-paysloire@agea.fr\n<strong>Portable</strong> : 06 58 69 00 73\n<strong>Fax</strong> : 02 40 69 81 14', 'Contact Sidebar', '', 'inherit', 'open', 'open', '', '43-autosave', '', '', '2012-10-22 10:03:55', '2012-10-22 09:03:55', '', 43, 'http://127.0.0.1/agea/43-autosave/', 0, 'revision', '', 0),
(45, 1, '2012-10-22 10:16:43', '2012-10-22 09:16:43', '[contact-form-7 id="47" title="Contact form 1"]', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2012-10-22 10:19:03', '2012-10-22 09:19:03', '', 0, 'http://127.0.0.1/agea/?page_id=45', 0, 'page', '', 0),
(46, 1, '2012-10-22 10:16:36', '2012-10-22 09:16:36', '', 'Auto Draft', '', 'inherit', 'open', 'open', '', '45-revision', '', '', '2012-10-22 10:16:36', '2012-10-22 09:16:36', '', 45, 'http://127.0.0.1/agea/45-revision/', 0, 'revision', '', 0),
(47, 1, '2012-10-22 10:18:20', '2012-10-22 09:18:20', '<p>Votre nom (obligatoire)<br />\r\n    [text* your-name] </p>\r\n\r\n<p>Votre email (obligatoire)<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Sujet<br />\r\n    [text your-subject] </p>\r\n\r\n<p>Votre message<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit "Envoyer"]</p>\n[your-subject]\n[your-name] <[your-email]>\nDe : [your-name] <[your-email]>\r\nSujet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n--\r\nCe email a été envoyé via formulaire de contact le Agea http://127.0.0.1/agea\nwyllen44@gmail.com\n\n\n\n\n[your-subject]\n[your-name] <[your-email]>\nCorps du message :\r\n[your-message]\r\n\r\n--\r\nCe email a été envoyé via formulaire de contact le Agea http://127.0.0.1/agea\n[your-email]\n\n\n\nVotre message a bien été envoyé. Merci.\nFailed to send your message. Please try later or contact the administrator by another method.\nErreur de validation. Veuillez vérifier les champs et soumettre à nouveau.\nFailed to send your message. Please try later or contact the administrator by another method.\nMerci de bien vouloir accepter les conditions pour continuer.\nL''adresse email semble invalide.\nVeuillez remplir le champ obligatoire.\nLe code entre est incorrect.\nImpossible de télécharger le fichier.\nCe type de fichier n''est pas autorisé.\nCe fichier est trop volumineux.\nImpossible de télécharger le fichier. Une erreur est survenue.\nVotre réponse est incorrecte.', 'Contact form 1', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2012-10-22 10:18:51', '2012-10-22 09:18:51', '', 0, 'http://127.0.0.1/agea/?post_type=wpcf7_contact_form&#038;p=47', 0, 'wpcf7_contact_form', '', 0),
(48, 1, '2012-10-22 10:16:43', '2012-10-22 09:16:43', '', 'Contact', '', 'inherit', 'open', 'open', '', '45-revision-2', '', '', '2012-10-22 10:16:43', '2012-10-22 09:16:43', '', 45, 'http://127.0.0.1/agea/45-revision-2/', 0, 'revision', '', 0),
(49, 1, '2012-10-22 10:20:05', '2012-10-22 09:20:05', '[contact-form-7 id="47" title="Contact form 1"]', 'Contact', '', 'inherit', 'open', 'open', '', '45-autosave', '', '', '2012-10-22 10:20:05', '2012-10-22 09:20:05', '', 45, 'http://127.0.0.1/agea/45-autosave/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `slug` varchar(200) NOT NULL default '',
  `term_group` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Actions', 'actions', 0),
(2, 'Liens', 'liens', 0),
(3, 'Menu', 'menu', 0),
(4, 'Actualités', 'actualites', 0),
(5, 'Actualités Bretagne', 'actualites-bretagne', 0),
(6, 'Actualités Pays de la Loire', 'actualites-pays-de-la-loire', 0),
(7, 'Actions Pays de la Loire', 'actions-pays-de-la-loire', 0),
(8, 'Actions Bretagne', 'actions-bretagne', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL default '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL default '0',
  `term_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(4, 3, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(17, 3, 0),
(18, 3, 0),
(19, 3, 0),
(20, 3, 0),
(21, 3, 0),
(35, 4, 0),
(35, 5, 0),
(37, 4, 0),
(37, 6, 0),
(39, 4, 0),
(39, 6, 0),
(41, 4, 0),
(41, 5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL auto_increment,
  `term_id` bigint(20) unsigned NOT NULL default '0',
  `taxonomy` varchar(32) NOT NULL default '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL default '0',
  `count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', 'Actions d''AGEA', 0, 0),
(2, 2, 'link_category', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'category', '', 0, 4),
(5, 5, 'category', '', 4, 2),
(6, 6, 'category', '', 4, 2),
(7, 7, 'category', '', 1, 0),
(8, 8, 'category', '', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL auto_increment,
  `user_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'aim', ''),
(16, 1, 'yim', ''),
(17, 1, 'jabber', ''),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:9:"add-fiche";i:2;s:12:"add-post_tag";}'),
(20, 1, 'nav_menu_recently_edited', '3'),
(21, 1, 'wp_user-settings', 'wplink=1'),
(22, 1, 'wp_user-settings-time', '1350832672');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `user_login` varchar(60) NOT NULL default '',
  `user_pass` varchar(64) NOT NULL default '',
  `user_nicename` varchar(50) NOT NULL default '',
  `user_email` varchar(100) NOT NULL default '',
  `user_url` varchar(100) NOT NULL default '',
  `user_registered` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL default '',
  `user_status` int(11) NOT NULL default '0',
  `display_name` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BCoFdu5qm3NEkYMZNmxfNjRR8fh/gc.', 'admin', 'wyllen44@gmail.com', '', '2012-10-18 08:09:13', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
