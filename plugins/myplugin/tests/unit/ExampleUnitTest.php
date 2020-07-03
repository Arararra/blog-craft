<?php
/**
 * My Plugin plugin for Craft CMS 3.x
 *
 * rama plugin
 *
 * @link      http://rama.com
 * @copyright Copyright (c) 2020 rama
 */

namespace rama\myplugintests\unit;

use Codeception\Test\Unit;
use UnitTester;
use Craft;
use rama\myplugin\MyPlugin;

/**
 * ExampleUnitTest
 *
 *
 * @author    rama
 * @package   MyPlugin
 * @since     1.0.0
 */
class ExampleUnitTest extends Unit
{
    // Properties
    // =========================================================================

    /**
     * @var UnitTester
     */
    protected $tester;

    // Public methods
    // =========================================================================

    // Tests
    // =========================================================================

    /**
     *
     */
    public function testPluginInstance()
    {
        $this->assertInstanceOf(
            MyPlugin::class,
            MyPlugin::$plugin
        );
    }

    /**
     *
     */
    public function testCraftEdition()
    {
        Craft::$app->setEdition(Craft::Pro);

        $this->assertSame(
            Craft::Pro,
            Craft::$app->getEdition()
        );
    }
}
