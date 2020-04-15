package com.zy.demo.redis;


import java.util.List;
import java.util.Map;
import java.util.Set;

public interface JedisClient {


        //String
        String set(String key, String value);
        String get(String key);
        Map<String,String> hgetall(String key);

        Boolean exists(String key);
        Long expire(String key, int seconds);
        Long ttl(String key);
        Long incr(String key);
        Long hset(String key, String field, String value);
        String hget(String key, String field);
        Long hdel(String key, String... field);
        Long lrem(String key, int count, String value);
        Long llen(String key);
        String rpop(String key);
        Boolean hexists(String key, String filed);
        //首页最新需求
        List<String> lrange(String key, Integer startIndex, Integer endIndex);
        Long rpush(String key, String value);
        Long lpush(String key, String value);



        Double zincrby(String pageview, Integer num, String valueOf);

        Double zscore(String pageview, String valueOf);

        String set(String key, String value, String nxxx, String expx, long time);

        //zSet排行榜 存
        Long zadd(final String key, final double score, final String member);
        //zser排行榜 取
        Set<String> zrange(final String key, final long start, final long end);

        Set<String> zrevrange(final String key, final long start, final long end);
}
