<?php
/**
 * @file
 * Primary pre/preprocess functions and alterations.
 */

/**
 * Implements hook_js_alter().
 *
 * @param $javascript: An array of all JavaScript being presented on the page
 * Fixing an error where the panopoly widget loads before the rest of the scripts.
 */


function bookshare_js_alter(&$javascript){

  // I guess go through each one and find the panopoly-widgets
  foreach ($javascript as $path => $attributes) {
    if ( strpos($path, 'panopoly-widgets.js') ){
      // drop the script to the lowest
      $javascript[$path]['weight'] = 100;
    }
    // $javascript[$path]['scope'] = 'footer';
  }

}


/**
 * Implements hook_page_alter().
 *
 */
function bookshare_page_alter(&$page) {
  _bookshare_add_js_settings();
  _bookshare_load_footer_menu_tree($page);
}



/**
 * Helper function to add Settings to the Drupal JS object
 */
function _bookshare_add_js_settings(){
  $settings = array(
    'bookshare' => array(
      'themepath' => drupal_get_path('theme', 'bookshare'),
      'a11ytoolbar' => theme_get_setting('a11ytoolbar' )
    ),
  );

  drupal_add_js( $settings, 'setting');
}

/**
 * Loads the footer menu to render in the footer.
 * @param  array $vars page variables
 * @return array       [description]
 */
function _bookshare_load_footer_menu_tree(&$page){
  $tree = menu_tree('menu-footer-menu');

  $page['footer']['footer_menu'] = $tree;
}



function bookshare_preprocess_menu_link(array $variables) {
  $vars['element']['#attributes']['role'] = 'presentation';
}
