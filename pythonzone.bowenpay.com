upstream pythonzone_bowenpay_backend {
    server 127.0.0.1:8888;
}

server {
    listen   80;
	server_name py.bowenpay.com;

    location ^~ /.git {
        deny all;
    }

	location / {
        proxy_pass http://pythonzone_bowenpay_backend;
        proxy_set_header Host $http_host;
	}
}

