<?php

// This is a very minimal settings.php file.

////////////////////////////////////////////////////////////////////////////////
// Database
$databases['default']['default'] = array(
  'driver' => 'pgsql',
  'database' => 'drupal7',
  'username' => 'ebo',
  'password' => 'vifphc0XabHNsj5736',
  'host' => 'ebo.cuxpzjgfemal.eu-west-3.rds.amazonaws.com',
  'prefix' => ''
);

////////////////////////////////////////////////////////////////////////////////
// Memcache configuration
//$conf['cache_backends'][] = 'sites/all/modules/contrib/memcache/memcache.inc';
//$conf['lock_inc'] = 'sites/all/modules/contrib/memcache/memcache-lock.inc';
//$conf['memcache_stampede_protection'] = TRUE;
//$conf['cache_default_class'] = 'MemCacheDrupal';
//
//// The 'cache_form' bin must be assigned no non-volatile storage.
//$conf['cache_class_cache_form'] = 'DrupalDatabaseCache';
//
//// Don't bootstrap the database when serving pages from the cache.
//$conf['page_cache_without_database'] = TRUE;
//$conf['page_cache_invoke_hooks'] = FALSE;
//$conf['memcache_servers'] = array('ip:port' => 'default');

////////////////////////////////////////////////////////////////////////////////
// s3fs module
//$conf['s3fs_bucket'] = 'ebo-drupal';
//$conf['s3fs_region'] = 'eu-west-3';
