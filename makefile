public_data: download_public_data

.PHONY: download_public_data
.PHONY: download_public_data_small
.PHONY: clean

download_public_data:
	curl https://owncloud.sf.mpg.de/index.php/s/mcFYfHN2UMfbjcJ/download -o public_data.tar.gz
	tar -xzf public_data.tar.gz
	mv quickngs sonar/data/
	rm public_data.tar.gz

download_public_data_small:
	curl https://owncloud.sf.mpg.de/index.php/s/163vR1FKJEHqm8B/download -o public_data.tar.gz
	tar -xzf public_data.tar.gz
	mv quickngs sonar/data/
	rm public_data.tar.gz

clean:
	rm -r sonar/data/quickngs
