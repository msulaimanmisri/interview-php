<?php
declare(strict_types= 1);

namespace App;

class SecondClass {
  
    public function __construct(
        public int $salary,
        public string $accountBankNumber
    ) {}
  
}
