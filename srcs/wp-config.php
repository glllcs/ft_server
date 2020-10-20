<?php
/**
 * As configurações básicas do WordPress
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'db_user42' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'user42' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', 'user42' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'WShij@8GvL-iKV+Poj1*(Z[}8vLO/|<-[l m{:rlEG{xMRw 4)8-qx}zc2U#|4R5');
define('SECURE_AUTH_KEY',  'P:U|h2c:-@!a~;?mAx*<$v7` sdhsNkd([3`LURO#L^]?:?)!7_,^?$PeG`xoDxF');
define('LOGGED_IN_KEY',    '=-x8-e8c]>YlTWUPX}/*go&+o|<O/f)>Ncy9!v]f_Dw3!#d_g{&brN.BEMW:!^+:');
define('NONCE_KEY',        'hOYh NVD-2WI9tB-/j*YnE|ceQ0+]Zk{2+A9NQDw_cfQ-0[@Kqs*<?akm|GW*;y+');
define('AUTH_SALT',        'Gzw|+&1|2oaE;1ix:aaA6#kSQv5rBB4n7oqHXYK507>*n,*aLOSC[Ux~o6;8}q3u');
define('SECURE_AUTH_SALT', 'l^0]5+tqznBMJFU$2GEQ vXV8aB_Qe+N-VYe|RI55PTyVrH0`t;45+nEI|n32$Ef');
define('LOGGED_IN_SALT',   'H:bVA;bBw-q)6;)t71b-GnDsOqdz-Uh,A$Y`-[6<~NE%nb.;Q.f34f=bUVQ|L+kC');
define('NONCE_SALT',       'l}{.q?oy_i9*XLj*ftz>TZit}}{&z8!yBHt9TfPdM*Bi7oc[heWFW&^*{<iB75{@');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';
