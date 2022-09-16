cd quasarapp
quasar build
cd ..
php artisan migrate
php artisan cache:clear
php artisan config:cache
php artisan event:cache
php artisan route:cache
php artisan view:cache