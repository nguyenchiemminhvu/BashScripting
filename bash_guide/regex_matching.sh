#!/bin/bash

grep -E "#!/bin/bash" *.sh

grep -E "temp\.txt" *.sh

grep -E "\w{1}[a-zA-Z0-9]*@\w+\.\w+" <<EOF
This is a demonstration of regular expression in Bash
This line contains an email: nguyenchiemminhvu@gmail.com
this line contains a phone number in the format (+84) xxx-xxx-xxxx: (+84) 090-012-0123
This line contains an IP address v4 in the format xxx.xxx.xxx.xxx: 192.168.1.19
EOF

grep -E "\(\+[0-9]{2,3}\) [0-9]{3}-[0-9]{3}-[0-9]{4}" <<EOF
This is a demonstration of regular expression in Bash
This line contains an email: nguyenchiemminhvu@gmail.com
this line contains a phone number in the format (+84) xxx-xxx-xxxx: (+84) 090-012-0123
This line contains an IP address v4 in the format xxx.xxx.xxx.xxx: 192.168.1.19
EOF

grep -E "((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9][0-9]|[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9][0-9]|[0-9])" <<EOF
This is a demonstration of regular expression in Bash
This line contains an email: nguyenchiemminhvu@gmail.com
this line contains a phone number in the format (+84) xxx-xxx-xxxx: (+84) 090-012-0123
This line contains an IP address v4 in the format xxx.xxx.xxx.xxx: 192.168.1.19
EOF