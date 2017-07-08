package com.gotr.kill.utils;

import com.dyuproject.protostuff.LinkedBuffer;
import com.dyuproject.protostuff.ProtostuffIOUtil;
import com.dyuproject.protostuff.runtime.RuntimeSchema;

public class SerializableHelper<T> {
	private RuntimeSchema<T> schema;
	
	public SerializableHelper(Class<T> typeClass){
		schema= RuntimeSchema.createFrom(typeClass);
	}

	public byte[] serialize(T t) {
		byte[] bytes = ProtostuffIOUtil.toByteArray(t, schema,
				LinkedBuffer.allocate(LinkedBuffer.DEFAULT_BUFFER_SIZE));//缓存
		return bytes;
	}

	public T deserialize(byte[] bytes) {
		T t = schema.newMessage();
		ProtostuffIOUtil.mergeFrom(bytes, t, schema);
		return t;
	}
}
