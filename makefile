public_data: download_public_data

download_public_data:
	curl https://owncloud.sf.mpg.de/index.php/s/mcFYfHN2UMfbjcJ/download -o public_data.tar.gz
	tar -xzf public_data.tar.gz
	rm -r sonar/data/quickngs
	mv quickngs sonar/data/
	rm public_data.tar.gz
