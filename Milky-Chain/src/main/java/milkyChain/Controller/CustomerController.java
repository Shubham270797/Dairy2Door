package milkyChain.Controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import milkyChain.Dao.CustomerInfoTableDAO;
import milkyChain.Dao.ProductDAO;
import milkyChain.Dao.SupplierInfoTableDao;
import milkyChain.Entity.ComplaintTable;
import milkyChain.Entity.CustomerBillTable;
import milkyChain.Entity.CustomerInfoTable;
import milkyChain.Entity.MilkProductionTable;
import milkyChain.Entity.OrderTable;
import milkyChain.Entity.SupplierInfoTable;
import milkyChain.Services.CustomerServicesImplementation;




@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerServicesImplementation customerService;
	
	@Autowired
	CustomerInfoTableDAO customerDao;
	@Autowired
	SupplierInfoTableDao supplierDao;
	@Autowired
	 ProductDAO productDao;
	
	
	//error occurring
		@PostMapping("/addCustomer")
		public String addCustomerInfo(@ModelAttribute("customer") CustomerInfoTable customer,ModelMap model)
		{
			System.out.println("add customer");
			
			boolean value=customerService.addCustomer(customer);
			if(value)
			{
				model.put("success", "Operation Done Successfully!!!");
				return "redirect:/customerLogin";
			}
			else
			{
				model.put("error", "Selected Operation is failed!!!");
			    return "redirect:/customerLogin";
			}
		}
		
		
		//succesfully
		@PostMapping("/addOrder")
		public boolean addOrderInf(@RequestParam int customerId,@RequestParam int productId,@RequestParam int supplierId,@RequestParam int orderQuantity)
		{
			//customer
		
		    CustomerInfoTable customerInfoTable=customerDao.getCustomer(customerId);
		 
		    //supplier
		    
		    SupplierInfoTable supplier=supplierDao.getSupplierById(supplierId);
		    
		    //product
		  
		   MilkProductionTable product=productDao.getSupplierById(productId);
		   
		   //date
		   Date orderDate=new Date();
		   //deliverydate
		   Date deliveryDate=new Date();
		   //order status
		   String status="pending";
		   //cost
		   int cost=(orderQuantity*product.getPricePerLiter());
		   
		   OrderTable order=new OrderTable(customerInfoTable,product,supplier,orderDate,orderQuantity,deliveryDate,status, cost);
		  
			boolean value= customerService.addOrder(order);
			
			   return value;
		}
		
		//Successfully done
		@PostMapping("/viewOrder")
		public List<OrderTable> findOrderById(@RequestParam int customerId)
		{
			return customerService.findOrders(customerId);
		}
		
		//Successfully done
		@PostMapping("/viewBill")
		public List<CustomerBillTable> findBillByCustomerId(@RequestParam int customerId)
		{
			return customerService.findBill(customerId);
		}
		
		//not tested yet
		@PostMapping("/payBill")
		public boolean payBill(@RequestParam int customerBillId)
		{
			String status="paid";
			return customerService.payBill(customerBillId, status);
			
		}
		

		//Successfully done
		@PostMapping("/addComplaint")
		public boolean addComplaint(@RequestParam int customerId,@RequestParam String complaintInfo )
		{
			boolean value=false;
			//Customer
			CustomerInfoTable customer=customerDao.getCustomer(customerId);
			
			//Date
			Date complaintDate=new Date();
			//status
			String status="pending";
			
			ComplaintTable complaint=new ComplaintTable(customer,complaintInfo,complaintDate,status);
			
			
			
			value=customerService.giveComplaint(complaint);
				return value;
		
		}
		//Successfully done
		@PostMapping("/complaintStatus")
		public List<ComplaintTable> complaintStatus(@RequestParam int customerId)
		{
			return customerService.viewComplaintStatusInfo(customerId);
		}
		
	  
	
	
	
	
	
	
}
