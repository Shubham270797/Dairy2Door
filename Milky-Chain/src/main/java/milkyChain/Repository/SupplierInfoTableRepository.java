package milkyChain.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import milkyChain.Entity.SupplierInfoTable;

public interface SupplierInfoTableRepository extends JpaRepository<SupplierInfoTable, Integer>{

	@Query(value="select * from supplier_info_table where suppler_work_area_pincode= :pincode",nativeQuery = true)
	List<SupplierInfoTable> findBySupplerWorkAreaPincode(@Param("pincode") int pincode);
	
	@Query(value="select * from supplier_info_table where supplier_username = :userName and supplier_password = :password",nativeQuery = true)
    public SupplierInfoTable findBySupplierUsernameAndSupplierPassword(@Param("userName") String userName,@Param("password") String password);
}
