wget  -qO- --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" "http://www.bing.com/images/search?q=keyword1" | grep -o '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//' -e 's/["'"'"']$//' | grep 'thid=OIP' | sed -e 's/amp;//g' | awk '$0="http://www.bing.com"$0' >> deleteurl.txt
wget  -qO- --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" "http://www.bing.com/images/search?q=keyword1&qft=+filterui%3aimagesize-wallpaper+filterui:photo-photo" | grep -o '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//' -e 's/["'"'"']$//' | grep 'thid=OIP' | sed -e 's/amp;//g' | awk '$0="http://www.bing.com"$0' >> deleteurl.txt
wget  -qO- --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" "http://www.bing.com/images/search?q=keyword1&qft=+filterui%3aimagesize-large+filterui:photo-photo" | grep -o '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//' -e 's/["'"'"']$//' | grep 'thid=OIP' | sed -e 's/amp;//g' | awk '$0="http://www.bing.com"$0' >> deleteurl.txt
wget  -qO- --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" "http://www.bing.com/images/search?q=keyword1&qft=+filterui%3aimagesize-medium+filterui:photo-photo" | grep -o '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//' -e 's/["'"'"']$//' | grep 'thid=OIP' | sed -e 's/amp;//g' | awk '$0="http://www.bing.com"$0' >> deleteurl.txt
cat result/keywordbing.txt > deletekeywordbing.txt
cat result/keyword-how.txt > deletekeyword-how.txt
./start2.sh
cat deletekeywordbing.txt | sort | uniq >> deletekeyword-how.txt
cat deletekeywordbing.txt | sort | uniq | sed -e '/How /d' -e '/how /d' -e '/HOW/ d' -e '/can you /d' -e '/what /d' -e '/where /d' -e '/www /d' -e '/www./d' -e '/youtube/d' -e '/youtube /d' -e '/YouTube /d' -e '/adult/d' -e '/sex/d' -e '/ gay /d' -e '/.com /d' | sed -e 's/\"//g' -e 's/\&/and/g' -e 's/-/ /g' | tr -d '\047' > result/keywordbing.txt
cat deletekeyword-how.txt | sort | uniq | grep 'How \|how \|HOW' > result/keyword-how.txt
rm -f delete*
