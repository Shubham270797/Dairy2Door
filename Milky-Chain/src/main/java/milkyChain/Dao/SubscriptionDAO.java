package milkyChain.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import milkyChain.Repository.SubscriptionTableRepository;
import milkyChain.Entity.SubscriptionTable;


@Service
public class SubscriptionDAO {
	
	@Autowired
	private SubscriptionTableRepository subscriptionRepo;
	
	
	public SubscriptionTable returnCustomer(int subscriptionId)
	{
		return subscriptionRepo.findById(subscriptionId).get();
	}
	
	
	public SubscriptionTable returnCustomerInfo(int customerId,String subscriptionStatus)
	{
		return subscriptionRepo.findByCustomerInfoTable(customerId,subscriptionStatus);
	}
	
	
  public List<SubscriptionTable> allSubscribedCustomers(int supplierId,String subscriptionStatus)
  {
	  return subscriptionRepo.findBySupplierInfoTable(supplierId, subscriptionStatus);
  }
  
  public boolean addSubscriber(SubscriptionTable newSubscriber)
  {
	  boolean result=false;
	  if(newSubscriber !=null)
	  {
		  subscriptionRepo.save(newSubscriber);
		  result=true;
		  return result;
	  }
	  else
		  return result;
  }
  
  public boolean terminateSubscriptionInfo(int subscriptionId,String status)
  {
	  boolean result=false;
	   SubscriptionTable subscription= subscriptionRepo.findById(subscriptionId).get();
	   if(subscription!=null)
	   {
		   subscription.setSubscriptionStatus(status);
		   subscriptionRepo.save(subscription);
		   result=true;
		   return result;
	   }
	   else
	   {
		   return result;
	   }
  }
  
}
