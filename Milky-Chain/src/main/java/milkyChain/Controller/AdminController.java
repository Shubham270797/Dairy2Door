package milkyChain.Controller;

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

import milkyChain.Entity.MilkProductionTable;
import milkyChain.Entity.SupplierInfoTable;
import milkyChain.Services.AdminServicesImplementation;

@Controller
public class AdminController {
	
	@Autowired
	AdminServicesImplementation adminImpl;
	
	//insert
	@PostMapping("/AdminViews/addProductInDb")
	public String addProductIntoTable(@ModelAttribute("product") MilkProductionTable product,ModelMap model,HttpSession session)
	{
	
		System.out.println("add product");
         boolean value = adminImpl.addNewProduct(product);
         if(value) { 
        	 model.put("success","Operation Done Successfully!!!");
        	 return "redirect:/adminServices.jsp"; 
        	 } 
         else {
				 model.put("error", "Selected Operation is failed!!!"); 
				 return "redirect:/adminServices.jsp"; 
				 }
	
	}
	
	//update
	@PostMapping("/AdminViews/addSupplierInDb")
	   public String addSupplierInfo(@ModelAttribute("supplier") SupplierInfoTable supplier,ModelMap model,HttpSession session)
	   {boolean value=false;
			System.out.println("add supplier");
			if(supplier.getSupplierId()==null)
			{
				 value = adminImpl.addSupplier(supplier);
			}
			else
			{
				  value = adminImpl.updateSupplier(supplier);
			}
		
		   
		    if(value)
			{
				model.put("success", "Operation Done Successfully!!!");
				return "redirect:/adminServices.jsp";
			}
			else
			{
				model.put("error", "Selected Operation is failed!!!");
			    return "redirect:/adminServices.jsp";
			}
	   }
		
		//supplier list
		@GetMapping("/AdminViews/viewSupplierList")
		public ModelAndView getAllSuppliers(HttpSession session)
		{
			System.out.println("in viewProducts");
			ModelAndView modelView=new ModelAndView();
			List<SupplierInfoTable>supplierInfo=adminImpl.showAllSupplier();
			System.out.println("hii");
			modelView.addObject("supplierList", supplierInfo);
			modelView.setViewName("/AdminViews/viewSupplier");
			return modelView;
		}
		
		//remove supplier
		@GetMapping("/AdminViews/deleteSupplierFromDb")
		public String removeSupplierInfo(@RequestParam String supplierId,ModelMap model,HttpSession session)
		{
			int id=Integer.parseInt(supplierId);
			System.out.println("deleteSupplier");
			boolean value= adminImpl.removeSupplier(id);
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
		
		//get supplier by id
		@GetMapping("/AdminViews/updateSupplierInDb")
		public ModelAndView getAllSuppliers(@RequestParam String supplierId ,HttpSession session)
		{
			
			int id=Integer.parseInt(supplierId);
			System.out.println("in viewProducts");
			ModelAndView modelView=new ModelAndView();
			SupplierInfoTable supplier=adminImpl.getSupplierInfo(id);
			modelView.addObject("supplier", supplier);
			modelView.setViewName("/AdminViews/updateSupplier");
			return modelView;
		}
		@PostMapping("/AdminViews/changeRateOfProduct")
		public String changeMilkRateinfo(@RequestParam int productId,@RequestParam int newRate,HttpSession session,ModelMap model)
		{
			boolean value=adminImpl.changeMilkRate(productId, newRate);
			
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
}
