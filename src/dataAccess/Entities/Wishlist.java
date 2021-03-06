package dataAccess.Entities;

import model.roles.MUser;

// Generated 20/05/2014 01:17:10 AM by Hibernate Tools 4.0.0

/**
 * Wishlist generated by hbm2java
 */
public class Wishlist implements java.io.Serializable {

	private WishlistId id;
	private Product product;
	private User user;
	private String quantity;

	public Wishlist(){
		
	}
	
	public Wishlist(Product product, MUser user, String quantity) {
		WishlistId id=new WishlistId(user.getId(), user.isType(), product.getIdProduct());
		User entitieU=new User(user.getId(), user.isType(), user.getUserName(), user.getPassWord(), user.getName(), user.getLastName(), user.getEmail(), user.getBirthDate());
		
		this.id = id;
		this.product = product;
		this.user = entitieU;
		this.quantity = quantity;
	}

	public WishlistId getId() {
		return this.id;
	}

	public void setId(WishlistId id) {
		this.id = id;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getQuantity() {
		return this.quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

}
