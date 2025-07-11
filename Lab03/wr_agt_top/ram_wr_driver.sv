/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:   ram_wr_driver.sv

Description		:	Write Deriver class for Dual Port RAM
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/

//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


// Extend ram_wr_driver from uvm_driver

class ram_wr_driver extends uvm_driver;

   // Factory Registration
   	

	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Add all the UVM phases:
	extern function new(string name = "ram_wr_driver",uvm_component parent);
	extern function void build_phase(uvm_phase phase);
	extern function void connect_phase(uvm_phase phase);
	extern function void end_of_elaboration_phase(uvm_phase phase);
	extern function void start_of_simulation_phase(uvm_phase phase);
	extern task run_phase(uvm_phase phase);
	extern function void extract_phase(uvm_phase phase);
	extern function void check_phase(uvm_phase phase);
	extern function void report_phase(uvm_phase phase);

endclass


//-----------------  constructor new method  -------------------//
//Add code for new()


// Add body for all UVM phases
// NOTE : Call super.*_phase() in every phase method ,* indicates build,connect,etc  
// Hint : `uvm_info(“RAM_DRIVER”,”This is Build Phase ”, UVM_LOW)   

//-----------------  Add UVM build() phase   -------------------//
     


//-----------------  Add UVM connect() phase   -------------------//
     


//-----------------  Add UVM end_of_elaboration() phase   -------------------//
     


//-----------------  Add UVM start_of_simulation() phase   -------------------//
 


//-----------------  Add UVM run() phase   -------------------//
// Raise and drop objections  
// With in raising and dropping the objections add delay of 10 in the run phase before printing



//-----------------  Add UVM extract() phase   -------------------//




   
//-----------------  Add UVM check() phase   -------------------//




//-----------------  Add UVM report() phase   -------------------//



  
   


