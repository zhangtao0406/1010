package com.zy.demo.redis;

import org.springframework.stereotype.Component;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Component
public class JedisClientPool implements JedisClient{
    @Resource
    private JedisPool jedisPool;
    public JedisPool getJedisPool() {
        return jedisPool;
    }

    public void setJedisPool(JedisPool jedisPool) {
        this.jedisPool = jedisPool;
    }

    //首页最新需求
    @Override
    public List<String> lrange(String key, Integer startIndex, Integer endIndex) {
        Jedis jedis = jedisPool.getResource();
        List<String> lrange = jedis.lrange(key, startIndex, endIndex);
        jedis.close();
        return lrange;
    }
    @Override
    public Long rpush(String key, String value) {
        Jedis jedis = jedisPool.getResource();
        Long result = jedis.rpush(key, value);
        jedis.close();
        return result;
    }

    @Override
    public Long lpush(String key, String value) {
        Jedis jedis = jedisPool.getResource();
        Long lesult = jedis.lpush(key, value);
        jedis.close();
        return lesult;
    }


    //String 的添加方法
    @Override
    public String set(String key, String value) {
        Jedis jedis = jedisPool.getResource();
        String result = jedis.set(key, value);
        jedis.close();
        return result;
    }


    //String 的获取方法
    @Override
    public String get(String key) {
        Jedis jedis = jedisPool.getResource();
        String result = jedis.get(key);
        jedis.close();
        return result;
    }

    @Override
    public Map<String,String> hgetall(String key) {
        Jedis jedis = jedisPool.getResource();
        Map<String,String> result = jedis.hgetAll(key);
        jedis.close();
        return result;
    }

    @Override
    public Boolean exists(String key) {
        Jedis jedis = jedisPool.getResource();
        Boolean result = jedis.exists(key);
        jedis.close();
        return result;
    }

    @Override
    public Long expire(String key, int seconds) {
        Jedis jedis = jedisPool.getResource();
        Long result = jedis.expire(key, seconds);
        jedis.close();
        return result;
    }

    @Override
    public Long ttl(String key) {
        Jedis jedis = jedisPool.getResource();
        Long result = jedis.ttl(key);
        jedis.close();
        return result;
    }

    @Override
    public Long incr(String key) {
        Jedis jedis = jedisPool.getResource();
        Long result = jedis.incr(key);
        jedis.close();
        return result;
    }

    @Override
    public Long hset(String key, String field, String value) {
        Jedis jedis = jedisPool.getResource();
        Long result = jedis.hset(key, field, value);
        jedis.close();
        return result;
    }

    @Override
    public String hget(String key, String field) {
        Jedis jedis = jedisPool.getResource();
        String result = jedis.hget(key, field);
        jedis.close();
        return result;
    }

    @Override
    public Long hdel(String key, String... field) {
        Jedis jedis = jedisPool.getResource();
        Long result = jedis.hdel(key, field);
        jedis.close();
        return result;
    }

    @Override
    public Long lrem(String key, int id, String value) {
        Jedis jedis = jedisPool.getResource();
        Long result = jedis.lrem(key, id, value);
        jedis.close();
        return result;
    }

    @Override
    public Long llen(String key) {
        Jedis jedis = jedisPool.getResource();
        Long result = jedis.llen(key);
        jedis.close();
        return result;
    }

    @Override
    public String rpop(String key) {
        Jedis jedis = jedisPool.getResource();
        String result = jedis.rpop(key);
        jedis.close();
        return result;
    }

    @Override
    public Boolean hexists(String key, String filed) {
        Jedis jedis = jedisPool.getResource();
        Boolean result = jedis.hexists(key,filed);
        jedis.close();
        return result;
    }

    @Override
    public Double zincrby(String pageview, Integer num, String valueOf) {
        Jedis jedis = jedisPool.getResource();
        Double result = jedis.zincrby(pageview,num,valueOf);
        jedis.close();
        return result;
    }

    @Override
    public Double zscore(String pageview, String id) {
        Jedis jedis = jedisPool.getResource();
        Double result = jedis.zscore(pageview, id);
        jedis.close();
        return result;
    }

    @Override
    public String set(String key, String value, String nxxx, String expx, long time) {
        Jedis jedis = jedisPool.getResource();
        String set = jedis.set(key, value, nxxx, expx, time);
        jedis.close();
        return set;
    }


    @Override
    public Long zadd(String key, double score, String member) {
        Jedis jedis = jedisPool.getResource();
        Long zadd = jedis.zadd(key, score, member);
        jedis.close();
        return zadd;
    }

    @Override
    public Set<String> zrange(String key, long start, long end) {
        Jedis jedis = jedisPool.getResource();
        Set<String> zrange = jedis.zrange(key, start, end);
        jedis.close();
        return zrange;
    }

    @Override
    public Set<String> zrevrange(String key, long start, long end) {
        Jedis jedis = jedisPool.getResource();
        Set<String> zrange = jedis.zrevrange(key, start, end);
        jedis.close();
        return zrange;
    }
}
