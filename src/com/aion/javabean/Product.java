package com.aion.javabean;

public class Product {
	public static final String TABLE_NAME = "product";
	public static final String NAME = "name";
	public static final String MANUFACTURER = "manufacturer";
	public static final String DESCRIPTION = "description";
	public static final String PRICE = "price";
	public static final String FILENAME = "filename";
	public static final String FILE_LOCATION = "file_location";
	public static final String IDPRODUCTS="idproduct";
	
	private String filename;
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	private String imageUrl;
	
	private String file_location;
	public String getFile_location() {
		return file_location;
	}
	public void setFile_location(String file_location) {
		this.file_location = file_location;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getIdproducts() {
		return idproducts;
	}
	public void setIdproducts(int idproducts) {
		this.idproducts = idproducts;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	private String name;
	private String manufacturer;
	private String description;
	private int idproducts;
	private float price;
	
}
