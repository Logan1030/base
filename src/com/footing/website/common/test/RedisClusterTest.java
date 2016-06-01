package com.footing.website.common.test;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import redis.clients.jedis.JedisCluster;
import redis.clients.util.JedisClusterCRC16;

public class RedisClusterTest extends SpringTransactionalContextTests{
	@Autowired
	JedisCluster jc;
	@Test
	public void test(){
		try {
			System.out.println("====================================");
			System.out.println("jedis:"+jc);
			System.out.println(jc.set("yubin", "i love you pengling"));
			 
			System.out.println(jc.get("yubin"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public  void cluster(){
	    String key = "1417";
	    jc.setnx(key, "bar");
	    String value = jc.get(key);
	    System.out.println("key-"+key+" slot-"+JedisClusterCRC16.getSlot(key)+" value-"+value);

	    String key2 = "288";
	    jc.setnx(key2, "bar2");
	    String value2 = jc.get(key);
	    System.out.println("key-"+key2+" slot-"+JedisClusterCRC16.getSlot(key2)+" value-"+value2);
	}

}
