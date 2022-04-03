package milkyChain.Dao;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import milkyChain.Entity.NonDeliverRecord;
import milkyChain.Entity.OrderTable;
import milkyChain.Repository.NonDeliveryRecordRepository;
import milkyChain.Repository.OrderTableRepository;

@Service
public class OrderDao {
	
	@Autowired
	private OrderTableRepository orderRepo;
	
	@Autowired
	private NonDeliveryRecordRepository nonDeliveryRepo;
	
	
	
     public boolean addOrderInfo(OrderTable orderInfo)
     { boolean value= false;
    	orderRepo.save(orderInfo);
    	value=true;
    	 return value;
     }
     public List<OrderTable> findByCustomerIdInfo(int customerId)
     {
    	 
            List<OrderTable> orderInfo=orderRepo.findByCustomerInfoTable(customerId);
    	 return orderInfo;
     }
    
     public boolean addNonDeliverDate(NonDeliverRecord undeliverRecord)
     {
    	 boolean value=false;
    	 if(undeliverRecord !=null)
    	 {
    		 nonDeliveryRepo.save(undeliverRecord);
    		 value=true;
    		 return value;
    	 }
    	 else
    		 return value;
     }
     
     public List<OrderTable> viewAllOrders(int supplierId)
     {
    	return orderRepo.findBySupplierId(supplierId);
     }
     
     public boolean changeOrderStatus(int orderId,String status)
     {
    	 boolean value=false;
    	 OrderTable order=orderRepo.findById(orderId).get();
    	 if(order != null && order.getOrderStatus().equalsIgnoreCase("pending"))
    	 {
    		 order.setOrderStatus(status);
    		 orderRepo.save(order);
    		 value=true;
    		 return value;
    	 }
    	 else
    		 return value;
     }
     public boolean changeOrderStatusToDeliver(int orderId,Date date,String status)
     {
    	 
    	 boolean value=false;
    	 OrderTable order=orderRepo.findById(orderId).get();
    	 if(order != null && order.getOrderStatus().equalsIgnoreCase("Order placed"))
    	 {
    		 order.setOrderDeliveryDate(date);
    		 order.setOrderStatus(status);
    		 orderRepo.save(order);
    		 value=true;
    		 return value;
    		 
    	 }
    	 else
    		 return value;
     }
     public int returnCountOfOrders(int customerId,Date date,String status)
     {
    	 return orderRepo.findByCustomerInfoTableAndOrderDate(customerId, date,status);
     }
     public int getTotalOrderPrice(int customerId,Date date,String status)
     {
    	return orderRepo.findByCustomerInfoTableAndOrderDateEquals(customerId, date,status);
    	 
     }
     
     public int getTotalOrderQunatity(int customerId,Date date,String status)
     {
    	 return orderRepo.findByCustomerInfoTableAndOrderDateIs(customerId, date,status);
     }
     
     public List<OrderTable> getDeliveredOrderList(int customerId,Date date,String status)
     {
    	 return orderRepo.findByCustomerInfoTableAndOrderDateAndOrderStatus(customerId, date, status);
     }
		
}
