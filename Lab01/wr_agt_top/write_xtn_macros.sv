/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:   write_xtn_macros.sv

Description		:	Write transaction class for Dual port RAM
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/

//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


// Extend write_xtn from uvm_sequence_item
class write_xtn extends uvm_sequence_item;



	//------------------------------------------
	// DATA MEMBERS (Outputs non rand, inputs rand)
	//------------------------------------------

	// Add the rand fields - data (`RAM_WIDTH-1:0), address(`ADDR_SIZE – 1:0),declared in tb_defs.sv
	// write (type bit) 

	
  
	// Add the rand control knobs declared in tb_defs.sv

    // xtn_type (enumerated type addr_t)  -  for controlling the type of transaction 
	// xtn_delay (integer type) - for inserting delay between transactions
	
	

  
	// Factory registration and use macros for all the fields

	

	//------------------------------------------
	// CONSTRAINTS
	//------------------------------------------
	 
	// Add the following constraints :
	// Data between 20 through 90
	// Address between 0 through 200
	// Distribute weights for xtn_type : BAD_XTN=2 and GOOD_XTN=30

	
	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods like constructor,post_randomize
	extern function new(string name = "write_xtn");
	extern function void post_randomize();
endclass:write_xtn

//-----------------  constructor new method  -------------------//
//Add code for new()


	  
// In post_andomize method assign address to 6000 if xtn_type is BAD_XTN

 
