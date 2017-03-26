package com.spring.hard.manager;

import java.util.List;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Query;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;


public class DataManager {

	private final String DRINKLIST_KEY = "drinkList";
	private final String COCKTAIL = "cocktail";
	
	public void loadData()
	{	  
	    for (int i = 1; i<10; i++)
	    {
	    	persistData(getCocktailEntity(i, "cocktail"+i));
	    }
	}
	
	public JsonArray getData()
	{
		Query query = new Query(COCKTAIL, getDrinkListKey());
		List<Entity> drinkList = getDataStoreService().prepare(query).asList(FetchOptions.Builder.withLimit(10));
		return javaToJson(drinkList);
	}
	
	//Java to Json
	private JsonArray javaToJson(List<Entity> drinkList)
	{
		// create an array called datasets
		JsonArray jsonDrinkList = new JsonArray();
		
		for (Entity e: drinkList)
		{
			// create a dataset
			JsonObject drink = new JsonObject();

			drink.addProperty("id", e.getProperty("id").toString());
			drink.addProperty("name", e.getProperty("name").toString());		
			jsonDrinkList.add(drink);
		}
		 // print your generated json
		 System.out.println("DrinkList: " + jsonDrinkList.toString());
		 
		 return jsonDrinkList;
	}
	
	private void JsonToJava()
	{

		// Converts JSON string into a List of Product object
//		 Type type = new TypeToken<List<Product>>(){}.getType();
//		 List<Product> prodList = gson.fromJson(jsonCartList, type);

		 // print your List<Product>
		// System.out.println("prodList: " + prodList);
	}
	
	private boolean persistData(Entity e)
	{
		boolean result = false;
		try
		{
			getDataStoreService().put(e);
			result = true;
		}
		catch(Exception exception)
		{
			System.out.println(exception.toString());
		}
		
		return result;
	}
	
	private Entity getCocktailEntity(int cocktailID, String cocktailName)
	{
		Entity cocktailEntity = new Entity(COCKTAIL, getDrinkListKey());
		cocktailEntity.setProperty("id", cocktailID);
		cocktailEntity.setProperty("name", cocktailName);
		
		return cocktailEntity;
	}
	
	private DatastoreService getDataStoreService()
	{
		return DatastoreServiceFactory.getDatastoreService();
	}
	
	private Key getDrinkListKey()
	{
	    return KeyFactory.createKey(DRINKLIST_KEY, DRINKLIST_KEY);
	}


}
