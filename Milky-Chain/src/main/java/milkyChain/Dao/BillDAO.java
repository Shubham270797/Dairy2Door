package milkyChain.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import milkyChain.Entity.CustomerBillTable;
import milkyChain.Repository.CustomerBillTableRepository;


@Service
public class BillDAO {

	@Autowired
	private CustomerBillTableRepository billRepo;
	
	public List<CustomerBillTable> findBillById(int customerId) {
		// TODO Auto-generated method stub
		
		return billRepo.findByCustomerInfoTable(customerId);
	}
	
	public boolean payBillStatus(int customerBillId,String status)
	{
		boolean value=false;
		CustomerBillTable bill=  billRepo.findById(customerBillId).get();
		if(bill !=null)
		{
			bill.setCustomerBillStatus(status);
			value=true;
			return value;
		}
		else
		{
			return value;
		}
		
	}
	
	public boolean generateBill(CustomerBillTable bill)
	{
		boolean value=false;
		if(bill !=null)
		{System.out.println("in bill dao");
			billRepo.save(bill);
			value=true;
			return value;
		}
		else
			return value;
	}
	

	
	
}
