IFS=';'
while read f1; do
    echo "cat title.py | sed -e 's|bingurl|$f1|g' -e 's|bingurl|\&|g' | python - >> deletekeywordbing.txt" | bash -
done < deleteurl.txt
