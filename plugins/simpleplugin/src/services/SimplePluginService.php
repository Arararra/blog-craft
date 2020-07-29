<?php
/**
  * Simple Plugin plugin for Craft CMS 3.x
  *
  * this damn plugin
  *
  * @link      https://rama.my.id
  * @copyright Copyright (c) 2020 Rama
  */

namespace rama\simpleplugin\services;

use rama\simpleplugin\SimplePlugin;

use Craft;
use craft\base\Component;

/**
 * SimplePluginService Service
 *
 * All of your plugin’s business logic should go in services, including saving data,
 * retrieving data, etc. They provide APIs that your controllers, template variables,
 * and other plugins can interact with.
 *
 * https://craftcms.com/docs/plugins/services
 *
 * @author    Rama
 * @package   SimplePlugin
 * @since     1.0.0
 */
class SimplePluginService extends Component
{
  // Public Methods
  // =========================================================================

  /**
    * This function can literally be anything you want, and you can have as many service
    * functions as you want
    *
    * From any other plugin file, call it like this:
    *
    *     SimplePlugin::$plugin->simplePluginService->exampleService()
    *
    * @return mixed
    */
  public function exampleService() {
    $result = 'something';
    return $result;
  }

  public function getCustomers() {
    $array = [
      [
        'name' => 'rama',
        'email' => 'rama@gmail.com',
        'totalPurchase' => 11,
        'birthday' => '2002-10-09',
      ],
      [
        'name' => 'fakhri',
        'email' => 'fakhri@gmail.com',
        'totalPurchase' => 9,
        'birthday' => '2000-04-25',
      ],
      [
        'name' => 'renaldy',
        'email' => 'renaldy@gmail.com',
        'totalPurchase' => 15,
        'birthday' => '2003-05-10',
      ],
    ];
    return $array;
  }

  public function arsearch($hay, $needs) {
    foreach($needs as $val) {
      if (strpos($hay, trim($val)) !== false) { return true; }
    }
  }

  public function searchArea() {
    $dataArray = [
      [
        'name' => 'rama',
        'email' => 'rama@gmail.com',
        'totalPurchase' => 11,
        'birthday' => '2002-10-09',
      ],
      [
        'name' => 'fakhri',
        'email' => 'fakhri@gmail.com',
        'totalPurchase' => 9,
        'birthday' => '2000-04-25',
      ],
      [
        'name' => 'fakhri2',
        'email' => 'fakhri2@gmail.com',
        'totalPurchase' => 9,
        'birthday' => '2000-04-25',
      ],
      [
        'name' => 'renaldy',
        'email' => 'renaldy@gmail.com',
        'totalPurchase' => 15,
        'birthday' => '2003-05-10',
      ],
    ];
    $finalArray = [];
    $formSearch = Craft::$app->request->getBodyParam('search');
    $getCsv = Craft::$app->request->getBodyParam('csvSearch');
    if (isset($getCsv)) {
      $getCsv = 'assets/files/'.$getCsv;
      $csvFile = fopen($getCsv, "r");
      while (!feof($csvFile)){ $csvData[] = fgetcsv($csvFile); }
      fclose($csvFile);
    } else {
      $csvData = [];
    }
    foreach ($csvData as $key => $value) {
      if ($key+1 == count($csvData)) { break; }
      $csvSearch[] = $value[0];
    }


    if ($formSearch != '') {
      $search = explode("\n", $formSearch);
      foreach ($dataArray as $key => $value) {
        if ($this->arsearch($value['name'], $search) OR $this->arsearch($value['email'], $search)) {
          $finalArray[] = $value;
        }
      }
    } elseif ($csvData != []) {
      $search = $csvSearch;
      foreach ($dataArray as $key => $value) {
        if ($this->arsearch($value['name'], $search) OR $this->arsearch($value['email'], $search)) {
          $finalArray[] = $value;
        }
      }
    } else {
      $finalArray = $dataArray;
    }

    return $finalArray;
  }
}
