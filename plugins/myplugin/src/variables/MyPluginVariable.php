<?php
/**
 * My Plugin plugin for Craft CMS 3.x
 *
 * rama plugin
 *
 * @link      http://rama.com
 * @copyright Copyright (c) 2020 rama
 */

namespace rama\myplugin\variables;

use rama\myplugin\MyPlugin;

use Craft;

/**
 * My Plugin Variable
 *
 * Craft allows plugins to provide their own template variables, accessible from
 * the {{ craft }} global variable (e.g. {{ craft.myPlugin }}).
 *
 * https://craftcms.com/docs/plugins/variables
 *
 * @author    rama
 * @package   MyPlugin
 * @since     1.0.0
 */
class MyPluginVariable
{
    // Public Methods
    // =========================================================================

    /**
     * Whatever you want to output to a Twig template can go into a Variable method.
     * You can have as many variable functions as you want.  From any Twig template,
     * call it like this:
     *
     *     {{ craft.myPlugin.exampleVariable }}
     *
     * Or, if your variable requires parameters from Twig:
     *
     *     {{ craft.myPlugin.exampleVariable(twigValue) }}
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
}
