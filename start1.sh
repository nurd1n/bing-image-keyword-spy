IFS=';'
while read f1; do
    echo "echo \"sed -e 's|keyword1|\$(echo $f1 | sed 's| |+|g')|g' build.sh > build2.sh\"" | bash - | bash -
    echo "chmod 755 build2.sh" | bash -
    echo "./build2.sh" | bash -
    echo "rm -f build2.sh" | bash -
done < keyword.txt
