while true; do
  tgl=`date +%T`
  str=`quicksilverd status --node $QUICKSILVER_RPC 2>&1 | jq .SyncInfo.catching_up`
  echo HASIL : $str "-" $tgl

  if [[ $str = "false" ]]; then
    break
  fi
  sleep .5
done
echo DONE BOSKU : $str "-" $tgl
