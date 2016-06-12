package com.footing.website.common.test;

import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisCluster;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPubSub;
import redis.clients.util.JedisClusterCRC16;

public class RedisClusterTest extends SpringTransactionalContextTests{
	@Autowired
	JedisCluster jc;
	@Test
	public void test(){
		try {
			System.out.println("====================================");
			System.out.println("jedis:"+jc);
			System.out.println(jc.getClusterNodes());
		    jc.set("yubin", "i love you pengling");
			System.out.println(jc.get("yubin"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test 
	public  void cluster(){
		System.out.println("cluster");
		for(int i=0;i<10;i++){
			 
		    String key = "11417"+i;
		    jc.setnx(key, "bar");
		    String value = jc.get(key);
		    System.out.println("key-"+key+" slot-"+JedisClusterCRC16.getSlot(key)+" value-"+value);
	
		    String key2 = "288"+i;
		    jc.setnx(key2, "bar2");
		    String value2 = jc.get(key);
		    System.out.println("key-"+key2+" slot-"+JedisClusterCRC16.getSlot(key2)+" value-"+value2);
		}
	}
	@Test 
	public void app(){
        // get cluster nodes
        System.out.println("------- cluster nodes --------");
        Map<String, JedisPool> nodes = jc.getClusterNodes();
        Iterator<Map.Entry<String, JedisPool>> iterNodes = nodes.entrySet().iterator();
        while (iterNodes.hasNext()) {
            Map.Entry<String, JedisPool> entry = iterNodes.next();
            Jedis jedis = entry.getValue().getResource();
          
            System.out.println(entry.getKey() + "\n" + jedis.info()+"\n"+jedis.clientList());
        }
        System.out.println("------- cluster nodes --------");
        System.out.println("------- pub/sub --------");
        // 这里随机取了两个分别用于 publish 和 subscribe 的 jedis 连接
        // Redis 不支持在同一个连接上既作为 publisher 又作为 subscriber
        final JedisPool jedisPool = nodes.entrySet().iterator().next().getValue();
        // 使用一个独立的线程来 publish
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(10);
        newFixedThreadPool.submit(new Runnable() {
            @Override
            public void run() {
                try {
                    Thread.sleep(2000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    return ;
                }
                jedisPool.getResource().publish("channel-test", "hello, redis cluster!");
            }
        });
       // subscribe - 此处会一直阻塞来接收 publish 消息
        jedisPool.getResource().subscribe(new JedisPubSub() {
            @Override
            public void onMessage(String channel, String message) {
                System.out.println("onMessage - " + channel + ":" + message);
            }
            @Override
            public void onPMessage(String pattern, String channel, String message) {
                System.out.println("onPMessage - " + pattern + "|" + channel + ":" + message);
            }
            @Override
            public void onSubscribe(String channel, int subscribedChannels) {
                System.out.println("onSubscribe - " + channel + ":" + subscribedChannels);
            }
            @Override
            public void onUnsubscribe(String channel, int subscribedChannels) {
                System.out.println("onUnsubscribe - " + channel + ":" + subscribedChannels);
            }
            @Override
            public void onPUnsubscribe(String pattern, int subscribedChannels) {
                System.out.println("onPUnsubscribe - " + pattern + ":" + subscribedChannels);
            }
            @Override
            public void onPSubscribe(String pattern, int subscribedChannels) {
                System.out.println("onPSubscribe - " + pattern + ":" + subscribedChannels);
            }
        }, "channel-test");
	}

}
