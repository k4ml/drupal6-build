#!/bin/sh

drush dl --drupal-project-rename=www drupal
cp www/sites/default/default.settings.php www/sites/default/settings.php
mkdir www/sites/all/modules
mkdir www/sites/all/themes

drush dl admin_menu && mv admin_menu www/sites/all/modules
drush dl devel && mv devel www/sites/all/modules

git clone git@github.com:k4ml/devserver.git server
git clone git@github.com:k4ml/drupal-qb.git www/sites/all/modules/qb
