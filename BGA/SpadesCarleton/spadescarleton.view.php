<?php
/**
 *------
 * BGA framework: Gregory Isabelli & Emmanuel Colin & BoardGameArena
 * SpadesCarleton implementation : © <Your name here> <Your email address here>
 *
 * This code has been produced on the BGA studio platform for use on http://boardgamearena.com.
 * See http://en.boardgamearena.com/#!doc/Studio for more information.
 * -----
 *
 * spadescarleton.view.php
 *
 * This is your "view" file.
 *
 * The method "build_page" below is called each time the game interface is displayed to a player, ie:
 * _ when the game starts
 * _ when a player refreshes the game page (F5)
 *
 * "build_page" method allows you to dynamically modify the HTML generated for the game interface. In
 * particular, you can set here the values of variables elements defined in spadescarleton_spadescarleton.tpl (elements
 * like {MY_VARIABLE_ELEMENT}), and insert HTML block elements (also defined in your HTML template file)
 *
 * Note: if the HTML of your game interface is always the same, you don't have to place anything here.
 *
 */

require_once( APP_BASE_PATH."view/common/game.view.php" );

/**
 * @property SpadesCarleton $game
 */
class view_spadescarleton_spadescarleton extends game_view
{
    /**
     * Returns the game name. Do not modify.
     */
    protected function getGameName()
    {
        // Used for translations and stuff. Please do not modify.
        return "spadescarleton";
    }

    /**
     * Main view function.
     */
  	public function build_page($viewArgs)
  	{
        //
  	}
}
