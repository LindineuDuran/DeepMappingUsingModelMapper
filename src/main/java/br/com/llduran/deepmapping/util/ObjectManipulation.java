package br.com.llduran.deepmapping.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

import java.util.List;

public class ObjectManipulation
{
	public static String serializa(Object object) throws JsonProcessingException
	{
		ObjectMapper mapper = new ObjectMapper().registerModule(new JavaTimeModule());
		String jsonFinalizado = mapper.writeValueAsString(object);
		return jsonFinalizado;
	}

	public static String serializa(List<? extends Object> objetos) throws JsonProcessingException
	{
		ObjectMapper mapper = new ObjectMapper().registerModule(new JavaTimeModule());
		String jsonFinalizado = mapper.writeValueAsString(objetos);
		return jsonFinalizado;
	}

	public static Object desserializa(String json, Class classe) throws JsonProcessingException
	{
		ObjectMapper mapper = new ObjectMapper().registerModule(new JavaTimeModule());

		Object objeto = mapper.readValue(json, classe);
		return objeto;
	}

	public static List<?> desserializaArray(String json, Class classe)
			throws JsonProcessingException, ClassNotFoundException
	{
		ObjectMapper mapper = new ObjectMapper().registerModule(new JavaTimeModule());
		JavaType type = mapper.getTypeFactory().constructCollectionType(List.class, classe);
		List<?> list = mapper.readValue(json, type);

		return list;
	}
}