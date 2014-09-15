Build all of the containers

`
docker build -t mystic/baseimage .

cd docker/fpm
docker build -t mystic/fpm .

cd docker/web
docker build -t mystic/web .
`

Run fpm:

`docker run -d --name fpm -p 9000:9000 -v {{ LOCAL DIR }}:/var/www:rw mystic/fpm`

Then run nginx

`docker run -d --name=web -p 80:80 -v {{ LOCAL DIR }}:/var/www:rw --link fpm:fpm mystic/web`
