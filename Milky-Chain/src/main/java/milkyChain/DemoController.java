package milkyChain;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import milkyChain.Entity.MilkProductionTable;
import milkyChain.Entity.SupplierInfoTable;
import milkyChain.Services.AdminServicesImplementation;




@Controller
@RequestMapping("/admin")
public class DemoController {

	@Autowired
	private AdminServicesImplementation adminService;
	
	/*
	 * //successfully Done
	 * 
	 * @PostMapping("/addProductInTable") public String
	 * addProductIntoTable(@ModelAttribute("product") MilkProductionTable
	 * product,ModelMap model) {
	 * 
	 * System.out.println("add product"); boolean value =
	 * adminService.addNewProduct(product); if(value) {
	 * model.put("success","Operation Done Successfully!!!"); return
	 * "redirect:/adminServices"; } else { model.put("error",
	 * "Selected Operation is failed!!!"); return "redirect:/adminServices"; }
	 * 
	 * }
	 */
		//successfully Done
		@PostMapping("/changeRateOfProduct")
		public boolean changeMilkRateinfo(@RequestParam int productId,@RequestParam int newRate)
		{
			return adminService.changeMilkRate(productId, newRate);
		}
		//successfully Done
		@PostMapping("/addSupplierInDb")
	   public String addSupplierInfo(@ModelAttribute("supplier") SupplierInfoTable supplier,ModelMap model)
	   {
			System.out.println("add supplier");
		    boolean value = adminService.addSupplier(supplier);
		    if(value)
			{
				model.put("success", "Operation Done Successfully!!!");
				return "redirect:/adminServices";
			}
			else
			{
				model.put("error", "Selected Operation is failed!!!");
			    return "redirect:/adminServices";
			}
	   }
		
		
		@GetMapping("/viewSupplierList")
		public ModelAndView getAllSuppliers()
		{
			System.out.println("in viewProducts");
			ModelAndView modelView=new ModelAndView();
			List<SupplierInfoTable>supplierInfo=adminService.showAllSupplier();
			System.out.println("hii");
			modelView.addObject("supplierList", supplierInfo);
			modelView.setViewName("AdminViews/viewSupplier");
			return modelView;
		}
		
		//successfully Done
		@GetMapping("/deleteSupplierFromDb")
		public String removeSupplierInfo(@RequestParam int supplierId,ModelMap model)
		{
			System.out.println("deleteSupplier");
			boolean value= adminService.removeSupplier(supplierId);
			 if(value)
				{
					model.put("success", "Operation Done Successfully!!!");
					return "redirect:/adminServices";
				}
				else
				{
					model.put("error", "Selected Operation is failed!!!");
				    return "redirect:/adminServices";
				}
		}
		
		@GetMapping("/updateSupplierInDb")
		public ModelAndView getAllSuppliers(@RequestParam int supplierId )
		{
			System.out.println("in viewProducts");
			ModelAndView modelView=new ModelAndView();
			SupplierInfoTable supplier=adminService.getSupplierInfo(supplierId);
			modelView.addObject("supplier", supplier);
			modelView.setViewName("AdminViews/updateSupplier");
			return modelView;
		}
	
		/*
		 * @PostMapping("/AdminViews/addProduct") public String
		 * addSupplierInfo(@ModelAttribute("product") MilkProductionTable
		 * product,ModelMap model) { System.out.println("add product"); boolean value =
		 * adminService.addNewProduct(product); if(value) { model.put("success",
		 * "Operation Done Successfully!!!"); return "redirect:/adminServices"; } else {
		 * model.put("error", "Selected Operation is failed!!!"); return
		 * "redirect:/adminServices"; } }
		 */
}
