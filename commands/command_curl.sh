#!/bin/bash

curl http://example.com > temp.txt && cat temp.txt && rm temp.txt

curl http://example.com -o index.html && cat index.html && rm index.html

curl -O http://example.com/file.zip && rm file.zip

curl -X POST -d "name=ncmv" http://example.com

curl -X POST -H "Content-Type: application/json" -d '{"name":"John","age":30}' http://example.com

curl -I http://example.com

curl -u username:password http://example.com

curl ftp://test.rebex.net/readme.txt --user demo:password

curl -T temp ftp://test.rebex.net/ --user demo:password

curl -u demo:passowrd sftp://test.rebex.net