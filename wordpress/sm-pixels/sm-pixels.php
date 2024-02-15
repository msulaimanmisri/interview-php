<?php

/**
 * Plugin Name: SM Pixels
 * Plugin URI:  https://github.com/msulaimanmisri/interview-php
 * Description: This plugin will store a pixels for Marketing team without loading unused code like other plugins
 * Version:     1.0
 * Author:      Muhamad Sulaiman
 * Author URI:  https://sulaimanmisri.com
 * License:     GPL-2.0+
 * License URI: http://www.gnu.org/licenses/gpl-2.0.txt
 * Text Domain: sm-pixels
 * Domain Path: /languages
 */

if (!defined('WPINC')) {
    die;
}

/**
 * Load the Classes
 */
require 'Controller/BackEnd/RegisterFacebookPixelController.php';
