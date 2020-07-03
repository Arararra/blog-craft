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
    public function exampleService()
    {
        $result = 'something';
        return $result;
    }
}
