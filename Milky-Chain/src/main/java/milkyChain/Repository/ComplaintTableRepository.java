package milkyChain.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import milkyChain.Entity.ComplaintTable;


@Repository
public interface ComplaintTableRepository extends JpaRepository<ComplaintTable, Integer> {

	
	
	
	  @Query(value="select * from complaint_table  where customer_id= :customerId",nativeQuery = true)
		public List<ComplaintTable> findByCustomerInfoTable(@Param("customerId")int customerId);
	  @Query(value="select * from complaint_table  where complaint_status= :status",nativeQuery = true)
	  public List<ComplaintTable> findByComplaintStatus(@Param("status")String status);
}
