<?php
/**
 * Simple Plugin plugin for Craft CMS 3.x
 *
 * this damn plugin
 *
 * @link      https://rama.my.id
 * @copyright Copyright (c) 2020 Rama
 */

namespace rama\simpleplugin\twigextensions;

use rama\simpleplugin\SimplePlugin;

use Craft;

use Twig\Extension\AbstractExtension;
use Twig\TwigFilter;
use Twig\TwigFunction;

/**
 * Twig can be extended in many ways; you can add extra tags, filters, tests, operators,
 * global variables, and functions. You can even extend the parser itself with
 * node visitors.
 *
 * http://twig.sensiolabs.org/doc/advanced.html
 *
 * @author    Rama
 * @package   SimplePlugin
 * @since     1.0.0
 */
class SimplePluginTwigExtension extends AbstractExtension
{
    // Public Methods
    // =========================================================================

    /**
     * Returns the name of the extension.
     *
     * @return string The extension name
     */
    public function getName()
    {
        return 'SimplePlugin';
    }

    /**
     * Returns an array of Twig filters, used in Twig templates via:
     *
     *      {{ 'something' | someFilter }}
     *
     * @return array
     */
    public function getFilters()
    {
        return [
            new TwigFilter('someFilter', [$this, 'someInternalFunction']),
            new TwigFilter('dateFilter', [$this, 'dateFilter']),
        ];
    }

    /**
     * Returns an array of Twig functions, used in Twig templates via:
     *
     *      {% set this = someFunction('something') %}
     *
    * @return array
     */
    public function getFunctions()
    {
        return [
            new TwigFunction('someFunction', [$this, 'someInternalFunction']),
        ];
    }

    /**
     * Our function called via Twig; it can do anything you want
     *
     * @param null $text
     *
     * @return string
     */
    public function someInternalFunction($text = null)
    {
        $result = $text . " in the way";

        return $result;
    }

    public function dateFilter($date) {
        $array = explode('-', $date);
        $array[1] = date("F", mktime(0, 0, 0, $array[1], 10));
        $result = $array[2].' '.$array[1].' '.$array[0];
        return $result;
    }
}
