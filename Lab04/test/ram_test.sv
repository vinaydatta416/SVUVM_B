/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		: 	ram_test.sv

Description 	: 	Test case for Dual port RAM
  
Author Name		: 	Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/
//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_base_test from uvm_test;
class ram_base_test extends uvm_test;

   // Factory Registration
	

  
    // Declare the ram_env and ram_wr_agent_config handles as ram_envh and m_ram_cfg respectively
  
	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
	extern function new(string name = "ram_base_test" , uvm_component parent);
	extern function void build_phase(uvm_phase phase);
	
 endclass
//-----------------  constructor new method  -------------------//
// Define Constructor new() function


//-----------------  build() phase method  -------------------//
            
function void ram_base_test::build_phase(uvm_phase phase);
	// Create the instance of config_object
    
	// set is_active to UVM_ACTIVE 
   
    // set the config object into UVM config DB  
	
	// create the instance for env

endfunction

//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_random_test from ram_base_test;
class ram_random_test extends ram_base_test;

  
   // Factory Registration


   // Declare the handle for  ram_rand_wr_xtns sequence
 
	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
 	extern function new(string name = "ram_random_test" , uvm_component parent);
	extern function void build_phase(uvm_phase phase);
    extern function void end_of_elaboration_phase(uvm_phase phase);
	extern task run_phase(uvm_phase phase);
endclass

//-----------------  constructor new method  -------------------//

 // Define Constructor new() function



//-----------------  build() phase method  -------------------//
 // In build phase call build phase of ram_base_test           



//-----------------  end_of_elobration() phase method  -------------------//
// print topology             


//-----------------  run() phase method  -------------------//
task ram_random_test::run_phase(uvm_phase phase);
	//raise objection
   
	//create instance for sequence

	//start the sequence on write agent sequencer 
  
	//drop objection
  
endtask   


