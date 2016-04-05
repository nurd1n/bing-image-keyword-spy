IFS=';'
while read f1; do
    echo "sed -e 's|keyword1|$f1|g' split.sh > split2.sh" | bash -
    echo "chmod 755 split2.sh" | bash -
    echo "./split2.sh" | bash -
    echo "rm -f split2.sh" | bash -
done < result/keywordbing.txt
