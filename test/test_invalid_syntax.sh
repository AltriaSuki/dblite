cd ../bin

echo -e "use test_db;\nls\n" | ./dblite &> ../test/invalid_syntax.txt
if grep -q "Error: " ../test/invalid_syntax.txt; then
    echo "invalid syntax test passed"
else
    echo "invalid syntax test failed"
fi
cd ../test