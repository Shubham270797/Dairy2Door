package milkyChain.Repository;


import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import milkyChain.Entity.OrderTable;

public interface OrderTableRepository extends JpaRepository<OrderTable, Integer>{
    @Query(value="select * from order_table  where customer_id= :customerId",nativeQuery = true)
	public List<OrderTable> findByCustomerInfoTable(@Param("customerId")int customerId);
    
    @Query(value="select * from order_table where  order_status= :status",nativeQuery = true)
  	public List<OrderTable> findByOrderStatus(@Param("status")String status);
    
    @Query(value="select * from order_table where supplier_id= :supplierId",nativeQuery = true)
    public List<OrderTable> findBySupplierId(@Param("supplierId")int supplierId);
    
    
    @Query(value="select count(*) from order_table where customer_id= :customerId and order_date >= :date and order_status= :status ",nativeQuery = true)
    public int findByCustomerInfoTableAndOrderDate(@Param("customerId") int customerId,@Param("date") Date date,@Param("status")String status);
   
    @Query(value="select sum(order_quantity) from order_table where customer_id= :customerId and order_date >= :date and order_status= :status ",nativeQuery = true)
    public int findByCustomerInfoTableAndOrderDateIs(@Param("customerId") int customerId,@Param("date") Date date,@Param("status")String status);
    
    @Query(value="select sum(total_order_cost) from order_table where customer_id= :customerId and order_date >= :date and order_status= :status ",nativeQuery = true)
    public int findByCustomerInfoTableAndOrderDateEquals(@Param("customerId") int customerId,@Param("date") Date date,@Param("status")String status);
    
    @Query(value="select * from order_table where customer_id= :customerId and order_date >= :date and order_status= :status ",nativeQuery = true)
    public List<OrderTable> findByCustomerInfoTableAndOrderDateAndOrderStatus(@Param("customerId") int customerId,@Param("date") Date date,@Param("status")String status);
    
    
    
    
    
}
