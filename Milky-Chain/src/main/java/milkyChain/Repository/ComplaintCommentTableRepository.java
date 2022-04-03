package milkyChain.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import milkyChain.Entity.ComplaintCommentTable;

@Repository
public interface ComplaintCommentTableRepository extends JpaRepository<ComplaintCommentTable, Integer>{

}
