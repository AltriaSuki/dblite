cd ../bin
echo -e "use test_db;\nselect * from test;\nselect name from test where id > 1;" | ./dblite > ../test/select_from.txt
file="../test/select_from.txt"
if grep -q "2 Tom 89.3" "$file" && \
   grep -q "3 Jack 98.3" "$file" && \
   grep -q "1 Alice 90.5" "$file" && \
   grep -q "name" "$file" && \
   grep -q "Tom" "$file" && \
   grep -q "Jack" "$file"; then
   echo "select test passed"
else 
   echo "select test failed"
fi
cd ../test