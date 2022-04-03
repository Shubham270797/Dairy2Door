package milkyChain.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import milkyChain.Dao.BillDAO;
import milkyChain.Dao.ComplaintDao;
import milkyChain.Dao.CustomerInfoTableDAO;
import milkyChain.Dao.OrderDao;
import milkyChain.Dao.SupplierInfoTableDao;
import milkyChain.Entity.ComplaintTable;
import milkyChain.Entity.CustomerBillTable;
import milkyChain.Entity.CustomerInfoTable;
import milkyChain.Entity.OrderTable;


@Service
public class CustomerServicesImplementation implements CustomerServices {
	@Autowired
	private OrderDao orderDao;
	@Autowired
	private CustomerInfoTableDAO customerDao;
	@Autowired
	private ComplaintDao complaintDao;
	@Autowired
	private BillDAO billDao;
	
	
	@Override
	public boolean addCustomer(CustomerInfoTable customer) {
		// TODO Auto-generated method stub
		boolean value=customerDao.addCustomerInTable(customer);

		if(value)
		{
			return true;
		}
		return false;
	}
//remaining
	@Override
	public boolean addOrder(OrderTable orderInfo) {
		boolean value=orderDao.addOrderInfo(orderInfo);
		if(value)
		{
			return true;
		}
		else 
			return false;
	}

	
	@Override
	public List<OrderTable> findOrders(int customerId) {
		List<OrderTable> orders=orderDao.findByCustomerIdInfo(customerId);
		return orders;
	}

	@Override
	public List<CustomerBillTable> findBill(int customerId) {
		// TODO Auto-generated method stub
		
		return billDao.findBillById(customerId);
	}
	@Override
	public boolean payBill(int billId,String status) {
		// TODO Auto-generated method stub
		return billDao.payBillStatus(billId, status);
	}
	
	
	@Override
	public boolean giveComplaint(ComplaintTable complaint) {
		// TODO Auto-generated method stub
		boolean value=false;
		value=complaintDao.addComplaintInfo(complaint);
		if(value)
		  return value;
		else
			return value;
	}
	
	@Override
	public List<ComplaintTable> viewComplaintStatusInfo(int customerId) {
		// TODO Auto-generated method stub
		
		return complaintDao.viewComplaintStatus(customerId);
	}
	

}
