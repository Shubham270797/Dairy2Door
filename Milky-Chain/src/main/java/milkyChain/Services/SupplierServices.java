package milkyChain.Services;

import java.util.Date;
import java.util.List;


import milkyChain.Entity.ComplaintTable;
import milkyChain.Entity.CustomerInfoTable;
import milkyChain.Entity.OrderTable;
import milkyChain.Entity.SubscriptionTable;
 

public interface SupplierServices {
	
	
	   //insert customer
		boolean addCustomer(CustomerInfoTable customer);
		
		//delete supplierRecord
		boolean removeCustomer(int customerrId);
		
		//add subscription
		boolean addSubscription(int customerId,int productId, int supplierId ,Date startDate,Date endDate,int milkQuantity);
		//terminate subscription
		boolean terminateSubscription(int subscriptionId);
		//List of all subscribed customers
		List<SubscriptionTable> showAllCustomers(int supplierId);
		
		CustomerInfoTable getCustomerInfoById(int customerId);
		
		boolean updateCustomer(CustomerInfoTable customer);
		
		//List Of customer In Area
		List<CustomerInfoTable> showAllCustomersInArea(int customerPincode);
		
		//change Address
		boolean updateCustomerAddress(int customerId,String newAddress);
		
		//change Password
		boolean updateCustomerPassword(int customerId,String newPassword);
		
		//change MobileNo
		boolean updateCustomerMobileNo(int customerId,String newMobileNo);
		
		//add nondeliveryDate
		boolean insertNonDeliveryDate(int subscriptionId);
		
		//List of pending orders
		List<OrderTable> showAllOrders(int supplierId );
		
		//accept Order
		boolean acceptOrder(int orderId);
		
		//reject Order
		boolean rejectOrder(int orderId);
		
		//deliver order status
		boolean deliverOrder(int orderId);
		
		//see complaints
		List<ComplaintTable> listOfComplaints();
		
		//Comment Complaint
		boolean addCommentForComplaint(int complaintId,String comment);
		
		//Generate Bill
		boolean generateBill(int customer);
		
		

}
