package milkyChain.Controller;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import milkyChain.Entity.ComplaintTable;
import milkyChain.Entity.CustomerInfoTable;
import milkyChain.Entity.OrderTable;
import milkyChain.Entity.SubscriptionTable;
import milkyChain.Entity.SupplierInfoTable;
import milkyChain.Services.SupplierServicesImplementation;




@Controller
public class SupplierController {

	@Autowired
	private SupplierServicesImplementation supplierImpl;
	
	@PostMapping("/SupplierViews/addCustomer")
    public	String addCustomerInfo(@ModelAttribute("customer") CustomerInfoTable customer,HttpSession session,ModelMap model)
	{boolean value=false;
	System.out.println("add customer");
		if(customer.getCustomerId()==null)
		{
			 value = supplierImpl.addCustomer(customer);
		}
		else
		{
			  value = supplierImpl.updateCustomer(customer);
		}
	
       
        if(value) { 
       	 model.put("success","Operation Done Successfully!!!");
       	 return "redirect:/supplierServices.jsp"; 
       	 } 
        else {
				 model.put("error", "Selected Operation is failed!!!"); 
				 return "redirect:/supplierServices.jsp"; 
				 }
	
	
	}

	//pending
	@PostMapping("/SupplierViews/removeCustomer")
    public String removeCustomer(@RequestParam String customerId,HttpSession session,ModelMap model)
	{
		int id=Integer.parseInt(customerId);
		System.out.println("deleteSupplier");
		boolean value= supplierImpl.removeCustomer(id);
		 if(value)
			{
			 String message="Operation Done Successfully!!!";
				model.put("message", message);
				return "redirect:/supplierServices.jsp";
			}
			else
			{
				model.put("error", "Selected Operation is failed!!!");
			    return "redirect:/supplierServices.jsp";
			}
		
		
	}
	
	//pending
	@PostMapping("/SupplierViews/addSubscription")
	public String addSubscriptionInfo(@RequestParam String customerId,@RequestParam String productId,@RequestParam String supplierId,@RequestParam Date startDate,@RequestParam Date endDate,@RequestParam String milkQuantity,HttpSession session,ModelMap model) throws ParseException 
	{
		
		
		int customId=Integer.parseInt(customerId);
		int prodId=Integer.parseInt(productId);
		int suppId=Integer.parseInt(supplierId);
			
		int quantity=Integer.parseInt(milkQuantity);
		
	   boolean value=supplierImpl.addSubscription(customId, prodId, suppId, startDate,endDate, quantity)	;
	   if(value)
		{
			String message="Operation Done Successfully!!!";
			model.put("message", message);
			return "redirect:/supplierServices";
		}
		else
		{
			model.put("error", "Selected Operation is failed!!!");
		    return "redirect:/supplierServices";
		}
	}
	
	
	//done
	@PostMapping("/SupplierViews/allSubscriber")
	 public ModelAndView showAllCustomers(@RequestParam String supplierId,HttpSession session)
		{
		     int id=Integer.parseInt(supplierId);
		System.out.println("all subscriber");
		ModelAndView modelView=new ModelAndView();
		List<SubscriptionTable> subscriberList=supplierImpl.showAllCustomers(id);
		
		System.out.println("hii");
		modelView.addObject("subscribers",subscriberList);
		modelView.setViewName("/SupplierViews/viewSupplier");
		return modelView;
	
		}
	
	//done
	@PostMapping("/SupplierViews/endSubscription")
	public String terminateSubscriptionStatusInfo(@RequestParam String subscriptionId,HttpSession session,ModelMap model)
	{
		int id=Integer.parseInt(subscriptionId);
		boolean value= supplierImpl.terminateSubscription(id);
		
		if(value)
		{
			String message="Operation Done Successfully!!!";
			model.put("message", message);
			return "redirect:/supplierServices";
		}
		else
		{
			model.put("error", "Selected Operation is failed!!!");
		    return "redirect:/supplierServices";
		}
	
	}
		
	
	//done
	@PostMapping("/SupplierViews/nonDeliveryRecord")
    public String insertNonDeliveryDate(@RequestParam String subscriptionId,HttpSession session,ModelMap model)
	{
		int id=Integer.parseInt(subscriptionId);
		boolean value= supplierImpl.insertNonDeliveryDate(id);
		if(value)
		{
			String message="Operation Done Successfully!!!";
			model.put("message", message);
			return "redirect:/supplierServices";
		}
		else
		{
			model.put("error", "Selected Operation is failed!!!");
		    return "redirect:/supplierServices";
		}
		
	}
	
	//done
	@PostMapping("/SupplierViews/showAllOrders")
   public  ModelAndView showAllOrders(@RequestParam String supplierId,HttpSession session )
	{
		 int id=Integer.parseInt(supplierId);
			ModelAndView modelView=new ModelAndView();
		 List<OrderTable> orderList= supplierImpl.showAllOrders(id);
			
			System.out.println("hii");
			modelView.addObject("orders",orderList);
			modelView.setViewName("/SupplierViews/showOrders");
			return modelView;
	}
	
	//done
	@GetMapping("/SupplierViews/acceptOrders")
   public String acceptOrder(@RequestParam String orderId,HttpSession session,ModelMap model)
	{int id=Integer.parseInt(orderId);
   boolean value= supplierImpl.acceptOrder(id);
	if(value)
	{
	 String message="Operation Done Successfully!!!";
		model.put("message", message);
		return "redirect:/adminServices.jsp";
	}
	else
	{
		model.put("error", "Selected Operation is failed!!!");
	    return "redirect:/adminServices.jsp";
	}
	}
	
	//done
	@GetMapping("/SupplierViews/rejectOrders")
   public String rejectOrder(@RequestParam String orderId,HttpSession session,ModelMap model)
	{
		int id=Integer.parseInt(orderId);
		 boolean value= supplierImpl.rejectOrder(id);
		if(value)
		{
		 String message="Operation Done Successfully!!!";
			model.put("message", message);
			return "redirect:/adminServices.jsp";
		}
		else
		{
			model.put("error", "Selected Operation is failed!!!");
		    return "redirect:/adminServices.jsp";
		}
	}
	//done
	@GetMapping("/SupplierViews/deliveredOrders")
   public String deliverOrder(@RequestParam String orderId,HttpSession session,ModelMap model)
	{
		int id=Integer.parseInt(orderId);
		boolean value= supplierImpl.deliverOrder(id);
		if(value)
		{
		 String message="Operation Done Successfully!!!";
			model.put("message", message);
			return "redirect:/adminServices.jsp";
		}
		else
		{
			model.put("error", "Selected Operation is failed!!!");
		    return "redirect:/adminServices.jsp";
		}
	}
	//done
	@GetMapping("/SupplierViews/showComplaints")
   public ModelAndView listOfComplaints(HttpSession session)
	{
		System.out.println("in viewProducts");
		ModelAndView modelView=new ModelAndView();
		List<ComplaintTable>complaintList=supplierImpl.listOfComplaints();
		System.out.println("hii");
		modelView.addObject("complaints", complaintList);
		modelView.setViewName("/AdminViews/viewComplaint");
		return modelView;
		
	}
	//done
	@PostMapping("/SupplierViews/addComment")
   public String addCommentForComplaint(@RequestParam String complaintId,@RequestParam String comment,ModelMap model)
	{
		int id=Integer.parseInt(complaintId);
		boolean value= supplierImpl.addCommentForComplaint(id,comment);

		 if(value)
			{
			 String message="Operation Done Successfully!!!";
				model.put("message", message);
				return "redirect:/adminServices.jsp";
			}
			else
			{
				model.put("error", "Selected Operation is failed!!!");
			    return "redirect:/adminServices.jsp";
			}
	}
	
	//done
	@PostMapping("/SupplierViews/generateBill")
    public String generateBill(@RequestParam String customerId,HttpSession session,ModelMap model)
	{
		System.out.println("bill");
		int id=Integer.parseInt(customerId);
		boolean value= supplierImpl.generateBill(id);
		if(value)
		{
			String message="Operation Done Successfully!!!";
			model.put("message", message);
			return "redirect:/supplierServices.jsp";
		}
		else
		{
			model.put("error", "Selected Operation is failed!!!");
		    return "redirect:/supplierServices.jsp";
		}	
	}
	
	//done
	@PostMapping("/SupplierViews/customerInArea")
   public ModelAndView showListOfCustomers(@RequestParam String supplierPincode,HttpSession session)
   {
		System.out.println("in customer area");
		int pincode=Integer.parseInt(supplierPincode);
		System.out.println(pincode);
		System.out.println("in vcustomers");
		ModelAndView modelView=new ModelAndView();
		List<CustomerInfoTable>customerList= supplierImpl.showAllCustomersInArea(pincode);
		modelView.addObject("customers", customerList);
		modelView.setViewName("/SupplierViews/viewCustomer");
		return modelView;
   }
	
	@GetMapping("/SupplierViews/customer")
	   public ModelAndView getCustomerById(@RequestParam String customerId,HttpSession session)
	   {
			int id=Integer.parseInt(customerId);
			System.out.println("in vcustomers");
			ModelAndView modelView=new ModelAndView();
			CustomerInfoTable customerinfo= supplierImpl.getCustomerInfoById(id);
			modelView.addObject("customers", customerinfo);
			modelView.setViewName("/supplierView/updateCustomer");
			return modelView;
	   }
		
	
	
}
