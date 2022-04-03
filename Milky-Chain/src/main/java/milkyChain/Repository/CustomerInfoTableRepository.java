package milkyChain.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import milkyChain.Entity.CustomerInfoTable;


public interface CustomerInfoTableRepository extends JpaRepository<CustomerInfoTable, Integer> {

	
	  @Query(value="select * from customer_info_table where customer_pincode= :customerPincode ",nativeQuery = true)
	    public List<CustomerInfoTable> findByCustomerPincode(@Param("customerPincode")int customerPincode);
	
	    @Query(value="select * from customer_info_table where customer_username = :userName and customer_password = :password",nativeQuery = true)
	    public CustomerInfoTable findByCustomerUsernameAndCustomerPassword(@Param("userName") String userName,@Param("password") String password);
	
}
