#!/bin/bash
if [ "$1" = "data" ];then
    redis-cli flushall
    for i in {1..10}; 
    do 
        redis-cli zadd zset-test $i "item$i"
    done
fi
redis-cli zrangebyscore zset-test 4 6


