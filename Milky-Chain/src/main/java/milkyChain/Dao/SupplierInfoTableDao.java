package milkyChain.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import milkyChain.Entity.SupplierInfoTable;
import milkyChain.Repository.SupplierInfoTableRepository;


@Service
public class SupplierInfoTableDao {

	@Autowired
	SupplierInfoTableRepository supplierRepo;
	
	public SupplierInfoTable getSupplierById(int supplierId)
	{
		SupplierInfoTable supplier= supplierRepo.findById(supplierId).get();
		return supplier;
		
	}
	
	public boolean insertSupplierInfo(SupplierInfoTable supplier)
	{
		boolean value=false;
		if(supplier !=null)
		{
			supplierRepo.save(supplier);
			value=true;
			return value;
		}
		else
			return value;
	}
	
	public boolean deleteSupplierInfo(int supplierId)
	{boolean value=false;
	
	if(supplierRepo.findById(supplierId).isPresent())
	{
		supplierRepo.deleteById(supplierId);
		value=true;
		return value;
		
	}
	else
		return false;
	
	}
	public List<SupplierInfoTable> showAllSuppliers()
	{
		List<SupplierInfoTable> suppliers=supplierRepo.findAll();
		for (SupplierInfoTable supplierInfoTable : suppliers) {
			System.out.println(supplierInfoTable.getSupplierFname());
		}
		return suppliers;
	    
	}
	
	
	public boolean updatePassword(int supplierId,String password)
	{
		boolean value=false;
		SupplierInfoTable supplier= supplierRepo.findById(supplierId).get();
		if(supplier != null)
		{
			supplier.setSupplierPassword(password);;
			supplierRepo.save(supplier);
			value=true;
			return value;
		}
		else
		{
			return value;
		}
	}
	public boolean updateMobileNo(int supplierId,String mobileNo)
	{
		boolean value=false;
		SupplierInfoTable supplier= supplierRepo.findById(supplierId).get();
		if(supplier != null)
		{
			supplier.setSupplierMobileNo(mobileNo);
			supplierRepo.save(supplier);
			value=true;
			return value;
		}
		else
		{
			return value;
		}
	}
	
	public List<SupplierInfoTable> getSupplierByPincode(int pincode)
	{
		return supplierRepo.findBySupplerWorkAreaPincode(pincode);
	}
	
	public SupplierInfoTable checkSupplierLoginInfo(String userName,String password)
	{
		return supplierRepo.findBySupplierUsernameAndSupplierPassword(userName, password);
	}
	
	public boolean updateSupplierInfo(SupplierInfoTable supplier) {
		// TODO Auto-generated method stub
    SupplierInfoTable update= supplierRepo.findById(supplier.getSupplierId()).get();
    if(update !=null)
    {
		update.setSupplierWorkArea(supplier.getSupplierWorkArea());
		update.setSupplerWorkAreaPincode(supplier.getSupplerWorkAreaPincode());
		update.setSupplierAddress(supplier.getSupplierAddress());
		update.setSupplierFname(supplier.getSupplierFname());
		update.setSupplierLname(supplier.getSupplierLname());
		update.setSupplierEmail(supplier.getSupplierEmail());
		update.setSupplierMobileNo(supplier.getSupplierMobileNo());
		update.setSupplierUsername(supplier.getSupplierUsername());
		update.setSupplierPassword(supplier.getSupplierPassword());
		
		supplierRepo.save(update);
		return true;
    }else
    {
    	return false;
    }
		
	}

}
