<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clefs secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur 
 * {@link http://codex.wordpress.org/Editing_wp-config.php Modifier
 * wp-config.php} (en anglais). C'est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d'installation. Vous n'avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'agea');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', '');

/** Adresse de l'hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8');

/** Type de collation de la base de données. 
  * N'y touchez que si vous savez ce que vous faites. 
  */
define('DB_COLLATE', '');

/**#@+
 * Clefs uniques d'authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant 
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n'importe quel moment, afin d'invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '+?{B$P&e8D3s;Q]HI=:<2?`i%aY0GyKSH&_BdY&0$|yu4X7_Uc-`*k5AOqh%+?Q~');
define('SECURE_AUTH_KEY',  'QNeuvU{/{x3~35_ABS{]#2Lliy9ePD%D(q)<6#!,I;N.z9D0XS(=tUIq/ xh-KKF');
define('LOGGED_IN_KEY',    '0CeY0/}!YG:*!qv-#4z:l@[_iKf,Py:uq|dpbzD:gNM}4uWx%%;8WPb& `F$je2S');
define('NONCE_KEY',        'ml{5!:<~#h3|wcKB]5XITT[Sg]qsqu$KY /NMJ-JP?t;[[<L!o5$#`18^M<a|=< ');
define('AUTH_SALT',        'x+u&_BBsXHAvw?JdePW%~g)dHW3E!O@k&.*K?Q,lcZwB`W&KcYa^DZH9:;7YFMw1');
define('SECURE_AUTH_SALT', '-m1a3IXF]C+~GCz)>Na2d+ `Rxe%GXj+toSXbm!Vg|d0 <@(JR81r&pvKjsy>ZU(');
define('LOGGED_IN_SALT',   '=Pb<sUMQ2yC|YnqI9dS0PgY6)BG(pW0nGR@veLa#UYsQL!iQI5>`C/Kcipe-~0q+');
define('NONCE_SALT',       'mk]w:M2~lton5*[]IT$KtP}?I&mya:p^E#gec2|qf#d|n7gN|3_&wJ-tu:6j<HRB');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique. 
 * N'utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés!
 */
$table_prefix  = 'wp_';

/**
 * Langue de localisation de WordPress, par défaut en Anglais.
 *
 * Modifiez cette valeur pour localiser WordPress. Un fichier MO correspondant
 * au langage choisi doit être installé dans le dossier wp-content/languages.
 * Par exemple, pour mettre en place une traduction française, mettez le fichier
 * fr_FR.mo dans wp-content/languages, et réglez l'option ci-dessous à "fr_FR".
 */
define('WPLANG', 'fr_FR');

/** 
 * Pour les développeurs : le mode deboguage de WordPress.
 * 
 * En passant la valeur suivante à "true", vous activez l'affichage des
 * notifications d'erreurs pendant votre essais.
 * Il est fortemment recommandé que les développeurs d'extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de 
 * développement.
 */ 
define('WP_DEBUG', false); 

/* C'est tout, ne touchez pas à ce qui suit ! Bon blogging ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');