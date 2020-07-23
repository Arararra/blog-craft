<?php
/**
 * Simple Plugin plugin for Craft CMS 3.x
 *
 * this damn plugin
 *
 * @link      https://rama.my.id
 * @copyright Copyright (c) 2020 Rama
 */

namespace rama\simpleplugin\variables;

use rama\simpleplugin\SimplePlugin;

use Craft;

/**
 * Simple Plugin Variable
 *
 * Craft allows plugins to provide their own template variables, accessible from
 * the {{ craft }} global variable (e.g. {{ craft.simplePlugin }}).
 *
 * https://craftcms.com/docs/plugins/variables
 *
 * @author    Rama
 * @package   SimplePlugin
 * @since     1.0.0
 */
class SimplePluginVariable
{
    // Public Methods
    // =========================================================================

    /**
     * Whatever you want to output to a Twig template can go into a Variable method.
     * You can have as many variable functions as you want.  From any Twig template,
     * call it like this:
     *
     *     {{ craft.simplePlugin.exampleVariable }}
     *
     * Or, if your variable requires parameters from Twig:
     *
     *     {{ craft.simplePlugin.exampleVariable(twigValue) }}
     *
     * @param null $optional
     * @return string
     */
    public function exampleVariable($optional = null)
    {
        $result = "And away we go to the Twig template...";
        if ($optional) {
            $result = "I'm feeling optional today...";
        }
        return $result;
    }

    public function getCustomers() {
        return SimplePLugin::$plugin->simplePluginService->getCustomers();
    }
    public function searchArea() {
        return SimplePLugin::$plugin->simplePluginService->searchArea();
    }
}
