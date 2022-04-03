package milkyChain.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import milkyChain.Dao.ProductDAO;
import milkyChain.Dao.SupplierInfoTableDao;
import milkyChain.Entity.MilkProductionTable;
import milkyChain.Entity.SupplierInfoTable;



@Service
public class AdminServicesImplementation implements AdminServices {
	@Autowired
	private ProductDAO productDao;
	@Autowired
	private SupplierInfoTableDao supplierDao;
	
	@Override
	public boolean addNewProduct(MilkProductionTable product) {
		// TODO Auto-generated method stub
		
		return productDao.addProductInfo(product);
	}

	@Override
	public boolean changeMilkRate(int productId,int price) {
		// TODO Auto-generated method stub
		return productDao.updateMilkRateInfo(productId, price);
		
	}

	@Override
	public boolean addSupplier(SupplierInfoTable supplier) {
		
		return supplierDao.insertSupplierInfo(supplier);
	}

	@Override
	public boolean removeSupplier(int supplierId) {
		// TODO Auto-generated method stub
		return supplierDao.deleteSupplierInfo(supplierId);
	}

	
	@Override
	public List<SupplierInfoTable> showAllSupplier() {
		// TODO Auto-generated method stub
		return supplierDao.showAllSuppliers();
	}

	@Override
	public SupplierInfoTable getSupplierInfo(int supplierId) {
		// TODO Auto-generated method stub
		return supplierDao.getSupplierById(supplierId);
	}

	@Override
	public boolean updateSupplier(SupplierInfoTable supplier) {
		// TODO Auto-generated method stub
		return supplierDao.updateSupplierInfo(supplier);
	}

	

	
	
	
	
	
	
	
	
}
