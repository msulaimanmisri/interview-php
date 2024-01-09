<?php
declare(strict_types=1);

/**
* Main Class
*/
class User {
  protected string $username;
}


/**
* Trait Class
*/
trait Calculator {
  protected function calculateTheLoan(mixed $value) : mixed {
    return $value;
  } 
}


/**
* Abstract Class
*/
abstract class Payment {
  abstract public function makePayment(mixed $value);
  abstract public function setPayment(mixed $value);
}


/**
* Sub-classes : Admin
* implementing inheritance
*/
class Admin extends User {
  public function __construct(
    protected string $adminName
  ) {}

  /**
  * Getting admin Name
  * @return string
  */
  public function getName() : string {
    return $this->adminName;
  }

  /**
  * Admin can set a principal amount
  * @return float
  */
  public function setPrincipleAmount(float $value) : float {
    return $value;
  }

  /**
  * Admin can set a principal amount
  * @return float
  */
  public function setInterestRate(float $value) : float {
    return $value;
  }

  /**
  * Admin can set a duration time when creating the loan
  * @return int
  */
  public function setDurationLoanTime(int $value) : int {
    return $value;
  }
  

  /**
  * Admin can create a Loan for the Customer
  * @return mixed
  */
  public function createLoan(
    string $adminName, 
    string $customerUsername, 
    float $principleAmount, 
    int $interestRate, 
    int $durationLoanTime) : mixed {

    return "You have successfully created a loan for $customerUsername, with the principle amount of
    $principleAmount and for the interest rate is $interestRate. The duration is : $durationLoanTime";
    
  }
}


/**
* Sub-classes : Customer
* @return inheritance
*/
class Customer extends User {


  use Calculator;

  public float $totalLoan;
  
  public function __construct(
    public string $username
  ) {}


  /**
  * get the customer username
  */
  public function getCustomerName() : string {
    return $this->username;
  }


  /**
  * User can make payment for their loans
  */
  public function makeLoanPayment(int $value) : int {
    return $value;
  }

  /**
  * User can fetch their loan
  */
  public function getTotalLoan(mixed $value) : mixed {
    return $value;
  }
  

}


/**
* For Debugging
*/
function format($value) {
  echo "<pre>";
  echo $value;
  echo "</pre>";
}

function dd($value) {
  echo var_dump($value);
}


/**
* Admin
*/
$admin = new Admin('Sulaiman');
$adminName = $admin->getName();
$principleAmount = $admin->setPrincipleAmount(10_000);
$interestRateAmount = $admin->setInterestRate(4);
$loanDuration = $admin->setDurationLoanTime(36);


/**
* Customer
*/
$customer = new Customer('Yuki Suko');
$customerName = $customer->getCustomerName();
$payment = $customer->makeLoanPayment(3_000);
$totalLoan = $customer->getTotalLoan(number_format($principleAmount - $payment));



format($totalLoan);




