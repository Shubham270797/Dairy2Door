package milkyChain.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import milkyChain.Entity.MilkProductionTable;
import milkyChain.Repository.MilkProductionTableRepository;


@Service
public class ProductDAO {
	
	@Autowired
	private MilkProductionTableRepository productRepo;
	
	public MilkProductionTable getSupplierById(int productId)
	{
		MilkProductionTable product= productRepo.findById(productId).get();
		return product;
		
	}

	public boolean addProductInfo(MilkProductionTable product)
	{   boolean value=false;
	    if(product !=null)
	    {
		    productRepo.save(product);
	        value=true;
	        return value;
	     }
	    else
	        return value;
	}
	
	public boolean updateMilkRateInfo(int productId,int price)
	{
		MilkProductionTable product= productRepo.findById(productId).get();
		
		if(product !=null)
		{
			product.setPricePerLiter(price);
			productRepo.save(product);
			return true;
		}
		return false;
	}
	public List<MilkProductionTable> getAllProducts()
	{
		List<MilkProductionTable>products=productRepo.findAll();
		return products;
	}

}
