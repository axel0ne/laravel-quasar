cd quasarapp
npm install
quasar build
cd ..
composer install
npm install
cp -r ./web/. ./public
php artisan migrate
bash cache.sh