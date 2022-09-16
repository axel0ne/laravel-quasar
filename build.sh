cd quasarapp
quasar build
npm install
cd ..
cp -r ./web/. ./public
composer install
npm install
php artisan migrate
php artisan cache:clear
php artisan config:cache
php artisan event:cache
php artisan route:cache
php artisan view:cache