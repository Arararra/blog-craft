<?php
/**
 * My Plugin plugin for Craft CMS 3.x
 *
 * rama plugin
 *
 * @link      http://rama.com
 * @copyright Copyright (c) 2020 rama
 */

namespace rama\myplugin\services;

use rama\myplugin\MyPlugin;

use Craft;
use craft\base\Component;

/**
 * MyPluginService Service
 *
 * All of your plugin’s business logic should go in services, including saving data,
 * retrieving data, etc. They provide APIs that your controllers, template variables,
 * and other plugins can interact with.
 *
 * https://craftcms.com/docs/plugins/services
 *
 * @author    rama
 * @package   MyPlugin
 * @since     1.0.0
 */
class MyPluginService extends Component
{
    // Public Methods
    // =========================================================================

    /**
     * This function can literally be anything you want, and you can have as many service
     * functions as you want
     *
     * From any other plugin file, call it like this:
     *
     *     MyPlugin::$plugin->myPluginService->exampleService()
     *
     * @return mixed
     */
    public function exampleService()
    {
        $result = 'something';

        return $result;
    }
}
