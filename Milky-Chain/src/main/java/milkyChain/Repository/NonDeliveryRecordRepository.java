package milkyChain.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import milkyChain.Entity.NonDeliverRecord;

public interface NonDeliveryRecordRepository extends JpaRepository<NonDeliverRecord, Integer>{

}
