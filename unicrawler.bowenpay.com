upstream unicrawler_bowenpay_backend {
    server 127.0.0.1:8889;
}

server {
    listen   80;
    server_name unicrawler.bowenpay.com;

    location ^~ /.git {
        deny all;
    }

	location / {
        proxy_pass http://unicrawler_bowenpay_backend;
        proxy_set_header Host $http_host;
	}
}

