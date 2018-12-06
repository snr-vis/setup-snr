public_data: download_public_data

.PHONY: download_public_data
.PHONY: download_public_data_small
.PHONY: clean

download_public_data:
	curl https://edmond.mpdl.mpg.de/imeji/file/fa/a8/f2/1f-05c2-4f3a-a892-00b7b90fd676/0/original/90f34b9084b111eaf43fce49784066aa.gz?filename=public_data.tar.gz -o public_data.tar.gz
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
