# Run chmod +x deploy.sh in terminal to allow execute access
php artisan optimize:clear
php artisan cache:clear
php artisan config:clear
php artisan view:clear
php artisan route:clear
composer install --optimize-autoloader
composer dumpautoload
cd public
rm -R storage
ln -s ../storage/app/public storage
cd ..
