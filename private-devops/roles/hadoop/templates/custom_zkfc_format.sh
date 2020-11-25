expect << EOF
  set timeout 60
  spawn hdfs zkfc -formatZK
  expect "(Y or N)" {send "n\r";exp_continue}
EOF