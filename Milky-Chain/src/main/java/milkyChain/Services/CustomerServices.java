package milkyChain.Services;

import java.util.List;

import milkyChain.Entity.ComplaintTable;
import milkyChain.Entity.CustomerBillTable;
import milkyChain.Entity.CustomerInfoTable;
import milkyChain.Entity.OrderTable;

public interface CustomerServices {
    //new Registration
	boolean addCustomer(CustomerInfoTable customer);
	//Place order
	boolean addOrder(OrderTable orderInfo);
	//view Orders
	List<OrderTable> findOrders(int customerId);
	//View Bills
	List<CustomerBillTable> findBill(int customerId);
	//pay Bill
	boolean payBill(int billId,String status);
	//give complaint
	boolean giveComplaint(ComplaintTable complaint);
	//view complaint
	List<ComplaintTable> viewComplaintStatusInfo(int customerId);
	
	
}
