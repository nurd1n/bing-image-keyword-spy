cd /
mkdir -p /home/keyword/result
cd /home/keyword
touch /home/keyword/keyword.txt
wget https://github.com/nurd1n/bing-image-keyword-spy/raw/secret/build.sh --no-check-certificate --directory-prefix=/home/keyword
wget https://github.com/nurd1n/bing-image-keyword-spy/raw/secret/start1.sh --no-check-certificate --directory-prefix=/home/keyword
wget https://github.com/nurd1n/bing-image-keyword-spy/raw/secret/start2.sh --no-check-certificate --directory-prefix=/home/keyword
wget https://github.com/nurd1n/bing-image-keyword-spy/raw/secret/start3.sh --no-check-certificate --directory-prefix=/home/keyword
wget https://github.com/nurd1n/bing-image-keyword-spy/raw/secret/split.sh --no-check-certificate --directory-prefix=/home/keyword
wget https://github.com/nurd1n/bing-image-keyword-spy/raw/secret/title.py --no-check-certificate --directory-prefix=/home/keyword
chmod 755 *.sh
