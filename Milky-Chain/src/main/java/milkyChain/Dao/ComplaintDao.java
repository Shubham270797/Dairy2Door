package milkyChain.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import milkyChain.Entity.ComplaintCommentTable;
import milkyChain.Entity.ComplaintTable;
import milkyChain.Repository.ComplaintCommentTableRepository;
import milkyChain.Repository.ComplaintTableRepository;


@Service
public class ComplaintDao {

	@Autowired
	private ComplaintCommentTableRepository commentRepo;
	
	@Autowired
	private ComplaintTableRepository complaintRepo;
	
	
	public boolean addComplaintInfo(ComplaintTable complaint)
	{
		boolean value=false;
		
		complaintRepo.save(complaint);
		
		value=true;
		
	    return value;
	}
	
	public List<ComplaintTable> viewComplaintStatus(int customerId)
	{
		List<ComplaintTable> complaintList= complaintRepo.findByCustomerInfoTable(customerId);
		return complaintList;
	}
	
	public ComplaintTable getComplaint(int complaintId)
	{
		return complaintRepo.findById(complaintId).get();
	}

	
	 public List<ComplaintTable> listOfPendingComplaints(String status) {
	  
		return complaintRepo.findByComplaintStatus(status);
		 
	  }
	 
	public boolean addCommentInfoForComplaint(ComplaintCommentTable comment)
	{
		boolean value=false;
		commentRepo.save(comment);
            value=true;
		
	    return value;
		
	}
	
	public void changeComplaintStatus(int complaintId,String status)
	{
	ComplaintTable complaint=complaintRepo.findById(complaintId).get();
	
		complaint.setComplaintStatus(status);
		complaintRepo.save(complaint);
	
	}
}
