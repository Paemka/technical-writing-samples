#!/bin/sh
mkdir -p /var/log/orders
i=0
while true; do
  i=$((i + 1))
  level="info"
  msg="order processed"
  if [ $((i % 10)) -eq 0 ]; then
    level="error"
    msg="payment declined"
  fi
  echo "{\"level\":\"$level\",\"msg\":\"$msg\",\"order_id\":$i}" >> /var/log/orders/orders.log
  sleep 1
done
