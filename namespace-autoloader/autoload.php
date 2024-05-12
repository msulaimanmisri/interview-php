<?php 
declare(strict_types= 1);

// Load all the 
spl_autoload_register(function ($className) : void {
    $className = str_replace("\\", "/", $className);
    require_once __DIR__ . '/App/' . $className . '.php';
});
