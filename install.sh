FILE=.env
if [ ! -f "$FILE" ]; then
  cp .env.example .env

  cd quasarapp
  npm install
  cd ..
  composer install
  npm install

  cd quasarapp
  quasar build
  cd ..
  cp -r ./web/. ./public

  php artisan key:generate
  bash cache.sh
else
  echo 'App will be installed'
fi