expect << EOF
  set timeout 60
  spawn hdfs namenode -bootstrapStandby
  expect "(Y or N)" {send "n\r";exp_continue}
EOF