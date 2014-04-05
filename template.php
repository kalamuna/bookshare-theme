<?php
/**
 * @file
 * Primary pre/preprocess functions and alterations.
 */

/**
 * Implements hook_js_alter().
 *
 * @param $javascript: An array of all JavaScript being presented on the pag
 * Fixing an error where the panopoly widget loads before the rest of the scripts.
 */


function bookshare_js_alter(&$javascript){

  // I guess go through each one and find the panopoly-widgets
  foreach ($javascript as $path => $attributes) {
    if ( strpos($path, 'panopoly-widgets.js') ){
      // drop the script to the lowest
      $javascript[$path]['weight'] = 100;
    }
    $javascript[$path]['scope'] = 'footer';
  }

}
