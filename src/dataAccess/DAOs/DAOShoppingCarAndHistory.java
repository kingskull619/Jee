package dataAccess.DAOs;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import model.roles.MUser;
import dataAccess.Entities.Product;
import dataAccess.Entities.Shoppingcarhistory;
import dataAccess.Entities.ShoppingcarhistoryId;

public class DAOShoppingCarAndHistory extends DAO{

	public Shoppingcarhistory getRegistryById(int idCart, MUser user, Product product){
		ShoppingcarhistoryId id=new ShoppingcarhistoryId(user.getId(), user.isType(), product.getIdProduct(), idCart);
		
		Session s=getSession();
		Shoppingcarhistory result=(Shoppingcarhistory) s.get(Shoppingcarhistory.class, id);
		commitTransaction(s);
		return result;
	}
	
	public List<Shoppingcarhistory> getAllShoppingCarHistory(){
		return getAll(Shoppingcarhistory.class);
	}
	
	public void createRegistry(Shoppingcarhistory registry){
		create(registry);
	}
	
	public void updateRegistry(Shoppingcarhistory registry){
		update(registry);
	}
	
	public void deleteRegistry(Shoppingcarhistory registry){
		MUser user=(new DAOUsuarios()).getUserById(registry.getId().getUserIdUser(), registry.getId().isUserType());
		Product product=(new DAOProducts()).getProduct(registry.getId().getProductIdProduct());
		Shoppingcarhistory deleted=getRegistryById(registry.getId().getIdcart(),user, product);
		delete(deleted);
	}
	
	public List<Shoppingcarhistory> getShoppingCar(MUser user){
		
		List<Shoppingcarhistory> all=getAllShoppingCarHistory();
		List<Shoppingcarhistory> result=new ArrayList();
		
		for(int i=0; i<all.size(); i++){
			int userId=all.get(i).getUser().getId().getIdUser();
			
			if(userId==user.getId() && !(all.get(i).isIsBuyed()) ){
				result.add(all.get(i));
			}
		}
		
		return result;
	}
	
	public List<Shoppingcarhistory> getHistory(MUser user){
		List<Shoppingcarhistory> all=getAllShoppingCarHistory();
		List<Shoppingcarhistory> result=new ArrayList();
		
		for(int i=0; i<all.size(); i++){
			int userId=all.get(i).getUser().getId().getIdUser();
			
			if(userId==user.getId() && (all.get(i).isIsBuyed()) ){
				result.add(all.get(i));
			}
		}
		
		return result;
	}
	
	public List<Shoppingcarhistory> getAllShoppingCar(){
		List<Shoppingcarhistory> all=getAllShoppingCarHistory();
		List<Shoppingcarhistory> result=new ArrayList();
		
		for(int i=0; i<all.size(); i++){
			if(!all.get(i).isIsBuyed()){
				result.add(all.get(i));
			}
		}
		
		return result;
	}
	
	public List<Shoppingcarhistory> getAllHistorys(){
		List<Shoppingcarhistory> all=getAllShoppingCarHistory();
		List<Shoppingcarhistory> result=new ArrayList();
		
		for(int i=0; i<all.size(); i++){
			if( all.get(i).isIsBuyed() ){
				result.add(all.get(i));
			}
		}
		
		return result;
	}
	
}
