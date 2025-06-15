cd ../bin
echo -e "use test_db;\ndelete test where name = "user_999";" | ./dblite > ../test/delete.txt
file="../data/test_db/test.tbl"
if grep -q "user_999 " "$file";then
    echo "delete test failed"
else
    echo "delete test passed"
fi
cd ../test