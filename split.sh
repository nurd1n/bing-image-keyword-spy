if [ $(echo keyword1 | wc -w) -gt "5" ]; then
  echo keyword1 >> result/keyword-6-and-more.txt
 else
  clear
fi
if [ $(echo keyword1 | wc -w) -gt "4" ]; then
  echo keyword1 >> result/keyword-5-and-more.txt
 else
  clear
fi
if [ $(echo keyword1 | wc -w) -gt "3" ]; then
  echo keyword1 >> result/keyword-4-and-more.txt
 else
  clear
fi
if [ $(echo keyword1 | wc -w) -gt "2" ]; then
  echo keyword1 >> result/keyword-3-and-more.txt
 else
  echo keyword1 >> result/keyword-1-to-2.txt
fi
