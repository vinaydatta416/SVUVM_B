/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:   ram_wr_driver.sv

Description 	:	Write Driver class for Dual port RAM TB
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/
//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


// Extend ram_wr_driver from uvm_driver parameterized by write_xtn
class ram_wr_driver extends uvm_driver #(write_xtn);

	// Factory Registration



	// Declare virtual interface handle with WDR_MP as modport
	

	// Declare the ram_wr_agent_config handle as "m_cfg"
 



	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
     	
	extern function new(string name ="ram_wr_driver",uvm_component parent);
	extern function void build_phase(uvm_phase phase);
	extern function void connect_phase(uvm_phase phase);
	extern task run_phase(uvm_phase phase);
	extern task send_to_dut(write_xtn xtn);
endclass

//-----------------  constructor new method  -------------------//
 // Define Constructor new() function


//-----------------  build() phase method  -------------------//
function void ram_wr_driver::build_phase(uvm_phase phase);
	// call super.build_phase(phase);

	// get the config object using uvm_config_db 
	
endfunction

//-----------------  connect() phase method  -------------------//
// in connect phase assign the configuration object's virtual interface
// to the driver's virtual interface instance(handle --> "vif")
function void ram_wr_driver::connect_phase(uvm_phase phase);
  
endfunction


//-----------------  run() phase method  -------------------//
// In forever loop
// Get the sequence item using seq_item_port
// Call send_to_dut task provided
// send acknowledgment to sequencer  

task ram_wr_driver::run_phase(uvm_phase phase);
    
	
endtask

//-----------------  task send_to_dut() method  -------------------//

// Add task send_to_dut(write_xtn handle as an input argument)
	
task ram_wr_driver::send_to_dut(write_xtn xtn);
	// Print the transaction
    `uvm_info("RAM_WR_DRIVER",$sformatf("printing from driver \n %s", xtn.sprint()),UVM_LOW) 
    // Add the write logic
      
    repeat(2)
    @(vif.wdr_cb);
   
	// Driving XTN
	vif.wdr_cb.wr_address <= xtn.address;
	vif.wdr_cb.write <= xtn.write;
    vif.wdr_cb.data_in <= xtn.data;
   
    @(vif.wdr_cb);

    // Removing data
    vif.wdr_cb.wr_address <= '0;
    vif.wdr_cb.write <= '0;
    vif.wdr_cb.data_in <= '0;

    repeat(5)
    @(vif.wdr_cb);
	
endtask
	



