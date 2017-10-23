<?php
/**
 * @file
 * Enables modules and site configuration for a standard site installation.
 */

// Add any custom code here like hook implementations.
function drupal8_blog_install_tasks(&$install_state) {
  $tasks = array();
  $tasks['drupal8_blog_default_users'] = array();
  return $tasks;
}

/**
 *  Function for creating default users.
 */
function drupal8_blog_default_users() {
  $user = \Drupal\user\Entity\User::create();
  $user->setPassword('blogger');
  $user->enforceIsNew();
  $user->setEmail('blogger@gmail.com');
  $user->setUsername('blogger');
  $user->addRole('blogger');
  $user->set("status",1);
  $res = $user->save();
}
// dvm($res);
