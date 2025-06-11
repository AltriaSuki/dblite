cd ../bin
command=$(cat ../test/insert.in)
echo -e "$command" | ./dblite > ../test/insert_value.txt
file="../data/test_db/test.tbl"
if grep -q "2 Tom 89.3" "$file" && \
   grep -q "3 Jack 98.3" "$file" && \
   grep -q "1 Alice 90.5" "$file"; then
   echo "insert into test passed"
else
   echo "insert into test failed"
fi
cd ../test