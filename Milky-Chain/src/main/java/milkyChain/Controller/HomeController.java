package milkyChain.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import milkyChain.Entity.CustomerInfoTable;
import milkyChain.Entity.MilkProductionTable;
import milkyChain.Entity.SupplierInfoTable;
import milkyChain.Services.HomeServicesImplementation;

@Controller
public class HomeController {
	
	@Autowired
	HomeServicesImplementation homeImpl;
	
	@GetMapping("/")
	public String redirectToIndexPage()
	{
		System.out.println("hii");
		
		return "/index";
	}
	
	@GetMapping("/viewProduct")
	public ModelAndView getAllProduct() {
		System.out.println("in viewProducts");
		ModelAndView modelView=new ModelAndView();
		List<MilkProductionTable> productList=homeImpl.getAllProductList();
		modelView.addObject("products", productList);
		modelView.setViewName("ourProducts");
		return modelView;
	}
	
	
	  @GetMapping("/viewSuppliers")
	  public ModelAndView getAllSuppliers() {
	  System.out.println("in viewProducts"); ModelAndView modelView=new
	  ModelAndView();
	  List<SupplierInfoTable>supplierlist=homeImpl.getAllSupplierList();
	  modelView.addObject("suppliers", supplierlist);
	  modelView.setViewName("ourSupplier"); return modelView;
	  }
	
	
	@GetMapping("/supplierInArea")
	public ModelAndView findSuppliersInArea(@RequestParam String pincode)
	{
		System.out.println("in supplierArea");
		int pincodeArea=Integer.parseInt(pincode);
		System.out.println("in supplier in area");
		ModelAndView modelView=new ModelAndView();
		List<SupplierInfoTable>supplierlist=homeImpl.findSupplierInArea(pincodeArea);
		modelView.addObject("suppliers", supplierlist);
		modelView.setViewName("ourSupplier");
		return modelView;
	}
	
	//admin login
	@PostMapping("/adminLogin")
	public String adminLoginValidation(@RequestParam("userName") String userName,@RequestParam("password") String password,HttpSession session,ModelMap modelMap)
	{
		
		System.out.println(userName);
		if(userName.equalsIgnoreCase("shubham") && password.equalsIgnoreCase("admin@123")) {
			session.setAttribute("username", userName);
			return "adminServices";
		} else {
			
			if(!userName.equalsIgnoreCase("admin"))
			{
			modelMap.put("error", "Invalid Username");
			return "adminLogin";
			}
			else if(!password.equalsIgnoreCase("admin@123"))
			{
				modelMap.put("error", "Invalid Password");
				return "adminLogin";
			}
			else
			{
				modelMap.put("error", "Invalid Account");
				return "adminLogin";
			}
				
		}
		
	}
	
	@PostMapping("/customerLogin")
	public String customerLoginValidation(@RequestParam("userName") String userName,@RequestParam("password") String password,HttpSession session,ModelMap modelMap)
	{
		System.out.println("customerLogin");
		CustomerInfoTable customer=homeImpl.customerLoginInfoValidation(userName, password);
		if(customer !=null)
		{
			session.setAttribute("userName", customer.getCustomerFname());
		    return "customerServices";	
		}
		else
		{
			modelMap.put("error","Invalid Login Credential");
			return "customerLogin";
		}

	}
	
	@PostMapping("/supplierLogin")
	public String supplierLoginValidation(@RequestParam("userName") String userName,@RequestParam("password") String password,HttpSession session,ModelMap modelMap)
	{
		System.out.println("supplierLogin");
        SupplierInfoTable supplier=homeImpl.supplierLoginInfoValidation(userName, password);
		if(supplier !=null)
		{
			session.setAttribute("userName", supplier.getSupplierFname());
		    return "supplierServices";	
		}
		else
		{
			modelMap.put("error","Invalid Login Credential");
			return "supplierLogin";
		}

	}
	
	
	
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		System.out.println("logout");
		session.removeAttribute("username");
		return "index";
	}
	
	@GetMapping("/homeLogout")
	public String returnToHome(HttpSession session) {
		System.out.println("logout");
		session.removeAttribute("username");
		return "index";
	}


}
