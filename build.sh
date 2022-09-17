FILE=.env
if [ ! -f "$FILE" ]; then
  echo 'App is not installed'
else
  cd quasarapp
  npm install
  quasar build
  cd ..
  composer install
  npm install
  cp -r ./web/. ./public
  php artisan migrate
  bash cache.sh
fi