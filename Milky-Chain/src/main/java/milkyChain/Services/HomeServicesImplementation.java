package milkyChain.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import milkyChain.Dao.CustomerInfoTableDAO;
import milkyChain.Dao.ProductDAO;
import milkyChain.Dao.SupplierInfoTableDao;
import milkyChain.Entity.CustomerInfoTable;
import milkyChain.Entity.MilkProductionTable;
import milkyChain.Entity.SupplierInfoTable;


@Service
public class HomeServicesImplementation implements HomeServices {

	@Autowired
	ProductDAO productDao;

	@Autowired
	SupplierInfoTableDao supplierDao;
	
	@Autowired
	CustomerInfoTableDAO customerDao;
	
	@Override
	public List<MilkProductionTable> getAllProductList() {
		
		return productDao.getAllProducts();
	}

	@Override
	public List<SupplierInfoTable> getAllSupplierList() {
		// TODO Auto-generated method stub
		
		return supplierDao.showAllSuppliers();
	}

	@Override
	public List<SupplierInfoTable> findSupplierInArea(int pincode) {
		
		return supplierDao.getSupplierByPincode(pincode);
	}

	@Override
	public CustomerInfoTable customerLoginInfoValidation(String userName, String password) {
		// TODO Auto-generated method stub
		return customerDao.customerLoginInfoValidation(userName, password);
	}

	@Override
	public SupplierInfoTable supplierLoginInfoValidation(String userName, String password) {
		// TODO Auto-generated method stub
		return supplierDao.checkSupplierLoginInfo(userName, password);
	}
	
	
	
	
}
