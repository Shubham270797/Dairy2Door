package milkyChain.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import milkyChain.Entity.SubscriptionTable;

public interface SubscriptionTableRepository extends JpaRepository<SubscriptionTable, Integer>{

	@Query(value="Select * from subscription_table where supplier_id= :supplierId and subscription_status= :subscriptionStatus",nativeQuery = true)
	List<SubscriptionTable> findBySupplierInfoTable(@Param("supplierId") int supplierId,@Param("subscriptionStatus") String subscriptionStatus);
	
	@Query(value="select * from subscription_table where customer_id= :customerId and subscription_status= :subscriptionStatus",nativeQuery = true)
	SubscriptionTable findByCustomerInfoTable(@Param("customerId") int customerId,@Param("subscriptionStatus") String subscriptionStatus);
	
}
