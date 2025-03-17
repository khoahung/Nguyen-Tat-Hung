#!/bin/bash
ids=$(jq -r '.order_id' transaction-log.txt | paste -sd "," -) && curl -G "https://example.com/api/" --data-urlencode "order_id=$ids" -o ./output.txt

