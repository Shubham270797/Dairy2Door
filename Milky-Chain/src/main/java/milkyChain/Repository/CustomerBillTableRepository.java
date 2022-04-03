package milkyChain.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import milkyChain.Entity.CustomerBillTable;


public interface CustomerBillTableRepository extends JpaRepository<CustomerBillTable, Integer>{

	
	
	@Query(value="select * from customer_bill_table where customer_id= :customerId",nativeQuery = true)
	public List<CustomerBillTable> findByCustomerInfoTable(@Param("customerId")int customerId);
}
