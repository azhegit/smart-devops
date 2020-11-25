expect << EOF
  set timeout 60
  spawn hadoop namenode -format
  expect "(Y or N)" {send "n\r";exp_continue}
EOF