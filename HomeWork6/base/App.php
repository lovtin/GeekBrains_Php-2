<?php
namespace app\base;
include "../traits/TSingleton.php";

use app\controllers\Controller;
use app\services\Db;
use app\services\Request;
use app\traits\TSingleton;

class ComponentNotFoundException extends \Exception
{
}

class App
{
    use TSingleton;

    public $config;

    public $components;

    public static function call()
    {
        return static::getInstance();
    }

    public function run()
    {
        $this->config = include "../config/main.php";
        $this->autoloadRegister();
        $this->components = new Storage();
        $this->mainController->runAction();
    }

    private function autoloadRegister()
    {
        include "../services/Autoloader.php";
        // Composer
        include "../vendor/autoload.php";
        spl_autoload_register([new \app\services\Autoloader(), 'loadClass']);
    }

    

}