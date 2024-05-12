<?php
declare(strict_types= 1);

namespace App;

class FirstClass {
    
    public function __construct(
        public string $name,
        public string $email,
    ) {}
    
}
