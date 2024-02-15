<?php

class RegisterFacebookPixelController
{
    /**
     * Initialize the class
     */
    public static function init()
    {
        add_action('init', [__CLASS__, 'registerFacebookPixelPostType']);
    }

    /**
     * Register Facebook Pixel Page
     */
    public static function registerFacebookPixelPage()
    {
        add_options_page('FB Pixel', 'FB Pixel', 'manage_options', 'fb-pixel-page', [__CLASS__, 'registerFacebookPixelPage']);
    }

    /**
     * Facebook Pixel Settings
     */
    public static function facebookPixelSetting()
    {
        echo '<div class="wrap">';
        echo '<h1>FB Pixel Settings</h1>';
        echo '</div>';
    }

}

RegisterFacebookPixelController::init();
