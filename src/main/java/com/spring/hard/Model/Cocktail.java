package com.spring.hard.Model;

import java.util.List;

public class Cocktail {

	private final long id;
	private final String name;
	private final List<Ingredient> IngredientList;
	
	public Cocktail(long id, String name, List<Ingredient> ingredientList) {
		super();
		this.id = id;
		this.name = name;
		IngredientList = ingredientList;
	}
	
	public long getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public List<Ingredient> getIngredientList() {
		return IngredientList;
	}	
}
