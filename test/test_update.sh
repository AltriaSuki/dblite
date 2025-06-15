cd ../bin
echo -e "use test_db;\nupdate test set score = 88.4 where name = "user_1";" | ./dblite > ../test/update.txt
file="../data/test_db/test.tbl"
if grep -q "user_1 88.4" "$file"; then
    echo "update test passed"
else 
    echo "update test failed"
fi
cd ../test