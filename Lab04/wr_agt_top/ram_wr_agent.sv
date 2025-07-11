/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:  	ram_wr_agent.sv

Description 	: 	Write agent class for Dual port RAM TB
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/


//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_wr_agent from uvm_agent
class ram_wr_agent extends uvm_agent;

   // Factory Registration
	

   // Declare handle for configuration class ram_wr_agent_config

        
   // Declare handles of ram_wr_monitor,ram_wr_sequencer and ram_wr_driver
   // with Handle names as monh, seqrh, drvh respectively
	
	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods :
	extern function new(string name = "ram_wr_agent", uvm_component parent = null);
	extern function void build_phase(uvm_phase phase);
	extern function void connect_phase(uvm_phase phase);

endclass : ram_wr_agent
//-----------------  constructor new method  -------------------//

     
  
//-----------------  build() phase method  -------------------//
	// Call parent build phase
	// get the config object using uvm_config_db
	// Create ram_wr_monitor instance
	//If config parameter is_active=UVM_ACTIVE,
	
	// Create instance of driver and sequencer

      
//-----------------  connect() phase method  -------------------//
	//If config parameter is_active=UVM_ACTIVE, 
	//connect driver(TLM seq_item_port) and sequencer(TLM seq_item_export)


   

   


