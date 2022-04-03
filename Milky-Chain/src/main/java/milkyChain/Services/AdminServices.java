package milkyChain.Services;

import java.util.List;

import milkyChain.Entity.MilkProductionTable;
import milkyChain.Entity.SupplierInfoTable;



public interface AdminServices {
	
	//add new Product
	boolean addNewProduct(MilkProductionTable product);
	
	//change MilkRate
	boolean changeMilkRate(int productId,int price);
	
	//insert Supplier
	boolean addSupplier(SupplierInfoTable supplier);
	
	//update values
	boolean updateSupplier(SupplierInfoTable supplier);
	
	//delete supplierRecord
	boolean removeSupplier(int supplierId);
	
	//List of supplier
	List<SupplierInfoTable> showAllSupplier();
	
	//get supplier
	public SupplierInfoTable getSupplierInfo(int supplierId);

}
