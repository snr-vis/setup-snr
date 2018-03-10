public_data: download_public_data

download_public_data:
	curl https://owncloud.sf.mpg.de/index.php/s/mcFYfHN2UMfbjcJ/download -o public_data.tar.gz
	tar -xzf public_data.tar.gz
	rm -r data/quickngs
	mv public_data data/quickngs
