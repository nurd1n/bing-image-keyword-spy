IFS=';'
while read f1; do
    echo "cat title.py | sed -e 's|bingurl|$f1|g' -e 's|bingurl|\&|g' | python - | tr A-Z a-z >> deletekeywordbing.txt" | bash -
done < deleteurl.txt
