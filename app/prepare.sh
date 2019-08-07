rm -rf htdocs
cp -r /Applications/XAMPP/htdocs/linkandtrain/htdocs htdocs
rm -rf htdocs/md/vendor/moodle
rm -f htdocs/md/config.php
rm -rf htdocs/deploy/configs
rm -rf htdocs/deploy/nginx-conf
rm -rf htdocs/wp
rm -f htdocs/.gitignore

# Create tests/api.suite.yml by ENV vars for Kube
cat htdocs/md/tests/api.suite.yml.template | sed \
  -e 's/%DB_URL%/mysql:host=%DB_HOST%;dbname=%DB_NAME%/' >htdocs/md/tests/api.suite.yml

# Point tests output to moodle data
mv htdocs/md/codeception.yml htdocs/md/codeception.yml.orig
cat htdocs/md/codeception.yml.orig | sed -e 's/output:.*$/output: \/vol\/mddata\/tests_output/' >htdocs/md/codeception.yml
