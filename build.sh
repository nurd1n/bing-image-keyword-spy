wget  -qO- --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" "http://www.bing.com/images/search?q=keyword1" | grep -o '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//' -e 's/["'"'"']$//' | grep 'thid=OIP' | sed -e 's/amp;//g' | awk '$0="http://www.bing.com"$0' >> deleteurl.txt
cat Result/keywordbing.txt > deletekeywordbing.txt
./start2.sh
cat deletekeywordbing.txt | sort | uniq > Result/keywordbing.txt
rm -f delete*
