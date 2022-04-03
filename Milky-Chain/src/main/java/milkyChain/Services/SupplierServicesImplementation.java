package milkyChain.Services;


import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import milkyChain.Dao.BillDAO;
import milkyChain.Dao.ComplaintDao;
import milkyChain.Dao.CustomerInfoTableDAO;
import milkyChain.Dao.OrderDao;
import milkyChain.Dao.ProductDAO;
import milkyChain.Dao.SubscriptionDAO;
import milkyChain.Dao.SupplierInfoTableDao;
import milkyChain.Entity.ComplaintCommentTable;
import milkyChain.Entity.ComplaintTable;
import milkyChain.Entity.CustomerBillTable;
import milkyChain.Entity.CustomerInfoTable;
import milkyChain.Entity.MilkProductionTable;
import milkyChain.Entity.NonDeliverRecord;
import milkyChain.Entity.OrderTable;
import milkyChain.Entity.SubscriptionTable;
import milkyChain.Entity.SupplierInfoTable;

@Service
public class SupplierServicesImplementation implements SupplierServices {
	
	@Autowired
	private CustomerInfoTableDAO customerDao;
	
	@Autowired
	private OrderDao orderDao;
	
	@Autowired
	private ComplaintDao complaintDao;
	
	@Autowired
	private SubscriptionDAO subscriptionDao;
	
	@Autowired
	private BillDAO billDao;
	@Autowired
	private SupplierInfoTableDao supplierDao;
	
	@Autowired
	private ProductDAO productDao;
	
	@Override
	public boolean addCustomer(CustomerInfoTable customer) {
		// TODO Auto-generated method stub
		
		return customerDao.addCustomerInTable(customer);
	}
	
	@Override
	public boolean removeCustomer(int customerId) {
		// TODO Auto-generated method stub
		return customerDao.deleteCustomerInfo(customerId);
	}
	
	@Override
	public boolean addSubscription(int customerId,int productId, int supplierId ,Date startDate,Date endDate,int milkQuantity) {
		CustomerInfoTable customer= customerDao.getCustomer(customerId);
		SupplierInfoTable supplier= supplierDao.getSupplierById(supplierId);
	     MilkProductionTable product=productDao.getSupplierById(productId);
	     String status="Active";
	     SubscriptionTable subscription=new SubscriptionTable(customer,product,supplier,startDate,endDate,status,milkQuantity);
	     
		return subscriptionDao.addSubscriber(subscription);
	}
	

	@Override
	public boolean terminateSubscription(int subscriptionId) {
		String status="Terminated";
	return subscriptionDao.terminateSubscriptionInfo(subscriptionId, status);
		
	}

	@Override
	public List<SubscriptionTable> showAllCustomers(int supplierId) {
		// TODO Auto-generated method stub
		String status="active";
		return subscriptionDao.allSubscribedCustomers(supplierId,status);
	}
	
	@Override
	public List<CustomerInfoTable> showAllCustomersInArea(int supplierPincode)
	{
		return customerDao.listOfCustomerInArea(supplierPincode);
	}
	
	@Override
	public boolean updateCustomerAddress(int customerId, String newAddress) {
		// TODO Auto-generated method stub
		return customerDao.updateAddress(customerId, newAddress);
	}
	@Override
	public boolean updateCustomerPassword(int customerId, String newPassword) {
		// TODO Auto-generated method stub
		return customerDao.updatePassword(customerId, newPassword);
	}
	
	@Override
	public boolean updateCustomerMobileNo(int customerId, String newMobileNo) {
		// TODO Auto-generated method stub
		return customerDao.updateMobileNo(customerId, newMobileNo);
	}
	
	@Override
	public boolean insertNonDeliveryDate(int subscriptionId) {
		SubscriptionTable subscription=subscriptionDao.returnCustomer(subscriptionId);
	       Date nonDeliveryDate=new Date();
	       String status="Not Delivered";
	       NonDeliverRecord nonDeliver=new NonDeliverRecord(subscription,nonDeliveryDate,status);
	       
		return orderDao.addNonDeliverDate(nonDeliver);
	}
	
	@Override
	public List<OrderTable> showAllOrders(int supplierId) {

		return orderDao.viewAllOrders(supplierId);
	}
	
	@Override
	public boolean acceptOrder(int orderId) {
	
		String status="Order placed";
		return orderDao.changeOrderStatus(orderId, status);
	}
	
	@Override
	public boolean rejectOrder(int orderId) {
		String status="Order Rejected";
		return orderDao.changeOrderStatus(orderId, status);
	}
	
	@Override
	public boolean deliverOrder(int orderId) {
		Date date=new Date();
		String status="Delivered";
		return orderDao.changeOrderStatusToDeliver(orderId, date, status);
	}
	
	@Override
	public List<ComplaintTable> listOfComplaints() {
	       String status="pending";
	
		return complaintDao.listOfPendingComplaints(status);
	}
	
	@Override
	public boolean addCommentForComplaint(int complaintId,String comment) {
		// TODO Auto-generated method stub
		ComplaintTable complaint=complaintDao.getComplaint(complaintId);
		Date date=new Date();
		ComplaintCommentTable commentInfo=new ComplaintCommentTable(complaint,comment,date);
		
	boolean value= complaintDao.addCommentInfoForComplaint(commentInfo);
	 String status="Resolved";
	complaintDao.changeComplaintStatus(complaintId, status);
	return value;
	}
	
	
	
	@Override
	public boolean generateBill(int customerId) {
		 int totalOrderDays=0; 
		 int totalOrderQuantity=0;
		 int totalOrderCost=0;
		 String monthName="";
		 CustomerInfoTable customer;
	     int month =0;
	     String orderStatus="Delivered";
		//subscription active state
		String status="active";
		
	  SubscriptionTable subscription=subscriptionDao.returnCustomerInfo(customerId, status);
	  
	 Date billGenerationDate=new Date();
	
	CustomerBillTable newBill;
	String statusFinal="pending";
	 if(subscription !=null)
	{
		
		customer=subscription.getCustomerInfoTable();
		System.out.println(customer.getCustomerFname());
		MilkProductionTable product=subscription.getMilkProductionTable();
		System.out.println(product.getProductName());
		
		long diff = subscription.getSubscriptionEndDate().getTime() - subscription.getSubscriptionStartDate().getTime();
       
        int diffDays = (int) (diff / (24 * 60 * 60 * 1000));
        System.out.println(diffDays);
        
   
        
        
		int subscriptionDays=diffDays+1;
		System.out.println(subscriptionDays);
		int subscriptionQuantity=subscription.getMilkQuantityLtr();
		System.out.println(subscriptionQuantity);
		 int price=product.getPricePerLiter();
	   int supplierId=subscription.getSupplierInfoTable().getSupplierId();
	   System.out.println(supplierId);
		List<OrderTable> order=orderDao.findByCustomerIdInfo(customerId);
		
		for (OrderTable orderTable : order) {
			System.out.println(orderTable.getCustomerInfoTable().getCustomerFname());
		}
		
		Date date=subscription.getSubscriptionStartDate();
		System.out.println(date);
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
	    month = cal.get(Calendar.MONTH);
	 
		
		
		System.out.println(month);
			monthName=currentMonthName(month);
			System.out.println(monthName);
			Date date1=subscription.getSubscriptionStartDate();
		int totalCost=0;
		if(!order.isEmpty())
		{
	    totalOrderDays=orderDao.returnCountOfOrders(customerId, date1,orderStatus);
	    System.out.println(totalOrderDays);
		 totalOrderQuantity=orderDao.getTotalOrderQunatity(customerId,date,orderStatus);
		 System.out.println(totalOrderQuantity);
		totalOrderCost=orderDao.getTotalOrderPrice(customerId,date,orderStatus);
		System.out.println(totalOrderCost);
		int totalQuantity=(subscriptionQuantity*subscriptionDays)+totalOrderQuantity;
		System.out.println();
		System.out.println(totalQuantity);
		int totalDays=totalOrderDays+subscriptionDays;
	  
		System.out.println(totalQuantity);
		totalCost=(subscriptionQuantity*subscriptionDays * price)+totalOrderCost;
		System.out.println(totalQuantity);
	
	 newBill=new CustomerBillTable(customer,billGenerationDate,monthName,totalDays,totalQuantity,totalCost,statusFinal);
	 System.out.println(totalQuantity);
		return billDao.generateBill(newBill);
		}
		else
		{
			
			int totalSubscriptionQuantity=subscriptionQuantity*subscriptionDays;
			totalCost=totalSubscriptionQuantity*price;
			newBill=new CustomerBillTable(customer,billGenerationDate,monthName,subscriptionDays,totalSubscriptionQuantity,totalCost,statusFinal);
			return billDao.generateBill(newBill);
		}
	}
	 else
	{
		 Calendar cal1 = Calendar.getInstance();
		 cal1.set(Calendar.DAY_OF_MONTH, 1);
		
		 //first day of month
		  Date firstMonthDate=cal1.getTime();
		 
		  //Get  day of month
		  month = cal1.get(Calendar.MONTH);
			monthName=currentMonthName(month);
		
			//to get CustomerInfo
		  customer=customerDao.getCustomer(customerId);
		 
		List<OrderTable> orders=orderDao.getDeliveredOrderList(customerId, firstMonthDate, orderStatus);
		
		if(! orders.isEmpty())
		{
		  //total orderCount
		   totalOrderDays=orderDao.returnCountOfOrders(customerId, firstMonthDate,orderStatus);
		   
		   //total OrderQuantity
		      totalOrderQuantity=orderDao.getTotalOrderQunatity(customerId,firstMonthDate,orderStatus);
		   
		      //total cost
	          totalOrderCost=orderDao.getTotalOrderPrice(customerId,firstMonthDate,orderStatus);	
	          newBill=new CustomerBillTable(customer,billGenerationDate,monthName,totalOrderDays,totalOrderQuantity,totalOrderCost,status);
		
	      	return billDao.generateBill(newBill);
		}
		else
		{
			return false;
		}
	}
	
	}
	
	
	public String currentMonthName(int month)
	{
		String monthName="";
		if(month==0)
		{
			 monthName="january";
			 return monthName;
		}
		else if(month==1)
		{
			monthName="february";
			return monthName;
		}
		else if(month==2)
		{
			monthName="March";
			return monthName;
		}
		else if(month==3)
		{
			monthName="April";
			return monthName;
		}
		else if(month==4)
		{
		monthName="May";
		return monthName;
		}
		else if(month==5)
		{
			monthName="June";
			
			return monthName;
		}
		else if(month==6)
		{
			monthName="July";
			return monthName;
		}
		else if(month==7)
		{
		monthName="August";
		return monthName;
		}
		else if(month==8)
		{
			monthName="September";
			return monthName;
		}
		else if(month==9)
		{
			 monthName="October";
			 return monthName;
		}
		else if(month==10)
		{
			monthName="November";
			return monthName;
		}
		else if(month==11)
		{
			monthName="December";
			return monthName;
		}
		else
			return null;
	}

	@Override
	public CustomerInfoTable getCustomerInfoById(int customerId) {
		
		return customerDao.getCustomer(customerId);
	}

	@Override
	public boolean updateCustomer(CustomerInfoTable customer) {
		// TODO Auto-generated method stub
		return customerDao.updateCustomerInfo(customer);
	}

	
}
