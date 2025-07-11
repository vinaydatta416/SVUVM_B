/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:   ram_wr_seqs.sv

Description 	:	Write sequence class for Dual Port RAM TB
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

 
// Extend ram_wbase_seq from uvm_sequence parameterized by write_xtn 
class ram_wbase_seq extends uvm_sequence #(write_xtn);  
	
  // Factory registration using `uvm_object_utils

	`uvm_object_utils(ram_wbase_seq)  
	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
    extern function new(string name ="ram_wbase_seq");
	
endclass

//-----------------  constructor new method  -------------------//
function ram_wbase_seq::new(string name ="ram_wbase_seq");
	super.new(name);
endfunction

//------------------------------------------------------------------------------
//
// SEQUENCE: Random Write Transactions - Use with write_rand_xtn  
//
//------------------------------------------------------------------------------


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


//Extend ram_rand_wr_xtns from ram_wbase_seq;
class ram_rand_wr_xtns extends ram_wbase_seq;

  	// Factory registration using `uvm_object_utils
	`uvm_object_utils(ram_rand_wr_xtns)

	//------------------------------------------
	// METHODS
	//------------------------------i------------

	// Standard UVM Methods:
    extern function new(string name ="ram_rand_wr_xtns");
    extern task body();
	
endclass
//-----------------  constructor new method  -------------------//
function ram_rand_wr_xtns::new(string name = "ram_rand_wr_xtns");
	super.new(name);
endfunction

	  
//-----------------  task body method  -------------------//
	//Generate 10 transactions of type write_xtn 
	//create req instance
	//start_item(req)
	//assert for randomization
	//finish_item(req)


//------------------------------------------------------------------------------
//
// SEQUENCE: Ram Single address Write Transactions   
//
//------------------------------------------------------------------------------


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


// Extend ram_single_addr_wr_xtns from ram_wbase_seq;
class ram_single_addr_wr_xtns extends ram_wbase_seq;

  	
	// Factory registration using `uvm_object_utils
	

	//------------------------------------------
	// METHODS
	//------------------------------i------------

	// Standard UVM Methods:
        extern function new(string name ="ram_single_addr_wr_xtns");
        extern task body();
		
	endclass
//-----------------  constructor new method  -------------------//


	  
//-----------------  task body method  -------------------//
	// Generate 10 sequence items with address always equal to 55
	// Hint use create req, start item, assert for randomization with inline
	// constraint (with) finish item inside repeat's begin end block 
		



//------------------------------------------------------------------------------
//
// SEQUENCE: Ram ten Write Transactions  
//
//------------------------------------------------------------------------------


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


// Extend ram_ten_wr_xtns from ram_wbase_seq;
class ram_ten_wr_xtns extends ram_wbase_seq;

  	
	// Factory registration using `uvm_object_utils
  

	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
    extern function new(string name ="ram_ten_wr_xtns");
    extern task body();
endclass
//-----------------  constructor new method  -------------------//


	  
//-----------------  task body method  -------------------//
	// Write the random data on memory address locations consecutively from 0 to 9
	// Hint use create req, start item, assert for randomization with in line
	//  constraint (with) finish item inside for loop begin end block    
	



//------------------------------------------------------------------------------
//
// SEQUENCE: Ram odd Write Transactions  
//
//------------------------------------------------------------------------------


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


// Extend ram_odd_wr_xtns from ram_wbase_seq;
class ram_odd_wr_xtns extends ram_wbase_seq;

  	
	// Factory registration using `uvm_object_utils


	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
    extern function new(string name ="ram_odd_wr_xtns");
    extern task body();
endclass
//-----------------  constructor new method  -------------------//
function ram_odd_wr_xtns::new(string name = "ram_odd_wr_xtns");
	super.new(name);
endfunction

	  
//-----------------  task body method  -------------------//
	// write the 10 random data in odd memory address locations 
	// Hint use create req, start item, assert for randomization with in line
	// constraint  (with) finish item inside repeat's begin end block    




//------------------------------------------------------------------------------
//
// SEQUENCE: Ram even Write Transactions  
//
//------------------------------------------------------------------------------


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


// Extend ram_even_wr_xtns from ram_wbase_seq;
class ram_even_wr_xtns extends ram_wbase_seq;

  	
	// Factory registration using `uvm_object_utils
 

	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
    extern function new(string name ="ram_even_wr_xtns");
    extern task body();
endclass
//-----------------  constructor new method  -------------------//


	  
//-----------------  task body method  -------------------//
	// write the 10 random data in even memory address locations 
	// Hint use create req, start item, assert for randomization with in line
	// constraint (with) finish item inside repeat's begin end block    




