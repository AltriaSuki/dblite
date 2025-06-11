cd ../bin
rm -rf ../data/test_db/test.tbl
echo -e "use test_db;\ncreate table test (id int primary key,name string,score double);" | ./dblite
cd ../test
