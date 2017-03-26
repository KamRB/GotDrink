/**
 * 
 */
package com.spring.hard.Model;

/**
 * @author kamlesh
 *
 */
public class Ingredient {

	private final long id;
	private final String name;
	
	public Ingredient(long id, String name)
	{
		this.id = id;
		this.name = name;
	}

	public long getId() {
		return id;
	}

	public String getName() {
		return name;
	}
}
