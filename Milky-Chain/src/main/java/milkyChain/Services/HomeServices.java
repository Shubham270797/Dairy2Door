package milkyChain.Services;

import java.util.List;

import milkyChain.Entity.CustomerInfoTable;
import milkyChain.Entity.MilkProductionTable;
import milkyChain.Entity.SupplierInfoTable;

public interface HomeServices {

	
	//view all Products
	List<MilkProductionTable> getAllProductList();
	
	//List of suppliers
	List<SupplierInfoTable> getAllSupplierList();
	
	//validate customer input
	CustomerInfoTable customerLoginInfoValidation(String userName,String password);
	
	//validate supplier Login info
	SupplierInfoTable supplierLoginInfoValidation(String userName,String password);
	
	
	//find supplier in area by pincode 
	List<SupplierInfoTable> findSupplierInArea(int pincode);
	
	
}
