#! /bin/sh

git pull

go build -o imall

echo "stop imall ..."
ID=`ps -ef | grep "imall" | grep -v "$0" | grep -v "grep" | awk '{print $2}'`
for id in $ID
do
kill -9 $id
echo "killed $id"
done
echo "---------------"
echo "start imall ..."
./imall  >  imall.file  2>&1  &