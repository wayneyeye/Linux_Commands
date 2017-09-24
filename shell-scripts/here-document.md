cat << EOF
a
b
c
d
e
EOF

foo="some text"
echo $foo
cat << EOF
$foo
"$foo"
'$foo'
EOF
