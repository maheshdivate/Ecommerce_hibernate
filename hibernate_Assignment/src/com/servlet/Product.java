package com.servlet;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity

@Table
public class Product {
	@Id
	int ProductId;
	String Name;
	int Price;
	int Quantity;
	float Discount;
	
	public Product()
	{
		
	}
	
	public Product(int productId, String name, int price, int quantity, float discount) {
		super();
		ProductId = productId;
		Name = name;
		Price = price;
		Quantity = quantity;
		Discount = discount;
	}
	
	
	@Override
	public String toString() {
		return "Product [ProductId=" + ProductId + ", Name=" + Name + ", Price=" + Price + ", Quantity=" + Quantity
				+ ", Discount=" + Discount + "]";
	}


	public int getProductId() {
		return ProductId;
	}
	public void setProductId(int productId) {
		ProductId = productId;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	public float getDiscount() {
		return Discount;
	}
	public void setDiscount(float discount) {
		Discount = discount;
	}

	
	

}
