package milkyChain.Dao;

import java.util.List;

import javax.swing.plaf.basic.BasicGraphicsUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import milkyChain.Entity.CustomerInfoTable;
import milkyChain.Repository.CustomerInfoTableRepository;


@Service
public class CustomerInfoTableDAO {
	
	@Autowired
	private CustomerInfoTableRepository customerRepo;
	
	public boolean addCustomerInTable(CustomerInfoTable customer)
	{
		boolean value= false;
		customerRepo.save(customer);
		value=true;
		return value;
	}
	public CustomerInfoTable getCustomer(int customerId)
	{
		CustomerInfoTable customer= customerRepo.findById(customerId).get();
		
		return customer;
	}
	public boolean updateCustomerInfo(CustomerInfoTable customer)
	{
		CustomerInfoTable cust= customerRepo.findById(customer.getCustomerId()).get();
		if(cust !=null)
		{
			cust.setCustomerFname(customer.getCustomerFname());
			cust.setCustomerLname(customer.getCustomerLname());
			cust.setCustomerAddress(customer.getCustomerAddress());
			cust.setCustomerMobileNo(customer.getCustomerMobileNo());
			cust.setCustomerEmail(customer.getCustomerEmail());
			cust.setCustomerUsername(customer.getCustomerUsername());
			cust.setCustomerPassword(customer.getCustomerPassword());
			cust.setCustomerPincode(customer.getCustomerPincode());
			cust.setCustomerArea(customer.getCustomerArea());
			customerRepo.save(cust);
			return true;
			
		}
		else
			return false;
	}
	public boolean deleteCustomerInfo(int customerId)
	{
		
		boolean value=false;
	
	if(customerRepo.findById(customerId).isPresent())
	{
		customerRepo.deleteById(customerId);
		value=true;
		return value;
		
	}
	else
		return false;
	
	}
	
	public boolean updateAddress(int customerId,String customerAddress)
	{
		boolean value=false;
		CustomerInfoTable customer= customerRepo.findById(customerId).get();
		if(customer != null)
		{
			customer.setCustomerAddress(customerAddress);
			customerRepo.save(customer);
			value=true;
			return value;
		}
		else
		{
			return value;
		}
	}
	public boolean updatePassword(int customerId,String password)
	{
		boolean value=false;
		CustomerInfoTable customer= customerRepo.findById(customerId).get();
		if(customer != null)
		{
			customer.setCustomerPassword(password);
			customerRepo.save(customer);
			value=true;
			return value;
		}
		else
		{
			return value;
		}
	}
	public boolean updateMobileNo(int customerId,String mobileNo)
	{
		boolean value=false;
		CustomerInfoTable customer= customerRepo.findById(customerId).get();
		if(customer != null)
		{
			customer.setCustomerMobileNo(mobileNo);
			customerRepo.save(customer);
			value=true;
			return value;
		}
		else
		{
			return value;
		}
	}
	
	public List<CustomerInfoTable> listOfCustomerInArea(int pincode)
	{
		return customerRepo.findByCustomerPincode(pincode);
	}

    public List<CustomerInfoTable> listOfCustomers()
    {
    	List<CustomerInfoTable> customers= customerRepo.findAll();
    	if(!customers.isEmpty())
    	{
    		return customers;
    	}
    	else
    		return customers;
    }
    
    public CustomerInfoTable customerLoginInfoValidation(String userName,String password)
    {
    	return customerRepo.findByCustomerUsernameAndCustomerPassword(userName, password);
    	
    	
    }

}
