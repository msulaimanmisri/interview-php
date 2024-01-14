<?php
declare(strict_types=1);

/**
* Task : Create a Simple Vehicle Inventory System
*
* Explaination : You're managing a vehicle inventory system. Start by creating a general category for vehicles, like "Vehicle".
* This can include common details like the brand and model
*
* Now, let's say you have a specific category for cars. Create a subclass called "Car" that specializes the general "Vehicle" class. 
* In the constructor for the "Car" class, include details specific to cars, such as the fuel type and the number of doors.
* Make sure to use the common details from the parent class, like brand and model, by calling the parent's constructor.
*
* Extra marks if you can return it in json
*
* If you are done complete the coding, you need to explain what've you done to our Engineers and why you code like that.
*/


// Parent Class
class Vehicle {

  public function __construct (
    protected string $brand,
    protected string $model
  ) {}
  
}


// Child Class

class Car extends Vehicle {

  public function __construct(
    protected string $brand,
    protected string $model,
    protected string $fuelType,
    protected int $doors
  ) {
    parent::__construct($brand, $model);
  }

  /**
  * Get Brand Name
  * @return string
  */
  public function getBrandName() : string {
    return ucwords($this->brand);
  }

  /**
  * Get Model Name
  * @return string
  */
  public function getModelName() : string {
    return $this->model;
  }

  /**
  * Get FuelType Name
  * @return string
  */
  public function getFuelType() : string {
    return $this->fuelType;
  }

  /**
  * Get how many Doors available
  * @return int
  */
  public function getAvailableDoors() : int {
    return $this->doors;
  }
  
}

// For Debugging
function pre($value) {
  echo "<pre>";
  echo $value;
  echo "</pre>"; 
}

function dd($value) {
  echo var_dump($value);
}

function returnAsJson($data) {
  $json = json_encode($data, JSON_PRETTY_PRINT);
  return $json;
}


// Object
$peroduaBezza = new Car('perodua', 'bezza', 'ron97', 4);

pre("This car brand is : " . $peroduaBezza->getBrandName());
pre("This car model is : " . $peroduaBezza->getModelName());
pre("This car use : " . $peroduaBezza->getFuelType() . " type of fuel");
pre("This car has : " . $peroduaBezza->getAvailableDoors() . " doors");


// json
$peroduaBezzaCollectionData = [
  'brand' => $peroduaBezza->getBrandName(),
  'model' => $peroduaBezza->getModelName(),
  'fuel_type' => $peroduaBezza->getFuelType(),
  'doors' => $peroduaBezza->getAvailableDoors()
];

echo returnAsJson($peroduaBezzaCollectionData);
