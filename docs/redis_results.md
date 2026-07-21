# Redis Results

## Cache results

```text
SET catalog:product_count 5 EX 300
GET catalog:product_count
TTL catalog:product_count
```

Observed output:

```text
5
300
```

## TTL behavior observations
The value is stored with an expiration of 300 seconds (5 minutes). The TTL command confirms that the key is active and will expire automatically unless it is refreshed or rewritten.

## Leaderboard output

```text
ZADD products:price 29.99 "Wireless Mouse" 89.5 "USB-C Hub" 129.99 "Mechanical Keyboard" 45.0 "Ceramic Vase" 14.99 "Notebook Set"
ZREVRANGE products:price 0 -1 WITHSCORES
```

Ranking returned:

```text
Mechanical Keyboard 129.99
USB-C Hub 89.5
Ceramic Vase 45.0
Wireless Mouse 29.99
Notebook Set 14.99
```

## Pub/Sub message output
A subscriber receives the published inventory update message in real time, showing that Redis pub/sub supports live notifications to all active subscribers.
