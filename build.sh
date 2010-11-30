#!/bin/sh

git clone git@github.com:k4ml/devserver.git
drush dl --drupal-project-rename=www drupal
cp www/sites/default/default.settings.php www/sites/default/settings.php
drush dl admin_menu
drush dl devel
