/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename:       ram_tb.sv
  
Author Name:    Putta Satish

Support e-mail: For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version:	1.0

************************************************************************/
//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------
// Extend ram_tb from uvm_env
class ram_tb extends uvm_env;

        
    // Factory Registration
    `uvm_component_utils(ram_tb)

	
	// Declare handles for ram_wr_agt_top, ram_rd_agt_top and ram_virtual_sequencer as
	//wagt_top,ragt_top and v_sequencer respectively
	
	// Declare handle for ram scoreboard as sb
	
	// Declare handle for ram_env configuration class as m_cfg
  
	//------------------------------------------
	// Methods
	//------------------------------------------

	// Standard UVM Methods:
	extern function new(string name = "ram_tb", uvm_component parent);
	extern function void build_phase(uvm_phase phase);
	extern function void connect_phase(uvm_phase phase);

endclass: ram_tb
	
//-----------------  constructor new method  -------------------//
// Define Constructor new() function
function ram_tb::new(string name = "ram_tb", uvm_component parent);
	super.new(name,parent);
endfunction

//-----------------  build phase method  -------------------//

function void ram_tb::build_phase(uvm_phase phase);
	 //get configuration object ram_env_config from database using uvm_config_db() 
	
	
	//if ram_env_config parameter has_wagent=1
	//set m_cfg.m_wr_cfg into config database "ram_wr_agent_config" using uvm_config_db
    //create instance for ram_wr_agt_top
	       
       
		
	
	//if ram_env_config parameter has_ragent=1
	//set m_cfg.m_rd_cfg into config database  "ram_rd_agent_config" using uvm_config_db
    //create instance for ram_rd_agt_top
	        
    super.build_phase(phase);
	
	//if ram_env_config parameter has_virtual_sequencer=1
	// Create the instance of v_sequencer handle 
	
	//if ram_env_config parameter has_scoreboard=1
	// Create the instance of scoreboard handle 
endfunction

//-----------------  connect phase method  -------------------//

	// In connect phase,if ram_env_config parameter has_virtual_sequencer=1
	// Connect virtual sequencers to UVC sequencers
	// Hint : v_sequencer.wr_seqr = wagt_top.wr_agnth.seqrh
	// 	  v_sequencer.rd_seqr = ragt_top.rd_agnth.seqrh
 


	// if ram_env_config parameter has_scoreboard=1,
	//connect the monitor analysis port to scoreboard's uvm_tlm fifo's analysis export
	// Hint : wagt_top.agnth.monh.monitor_port.connect(sb.fifo_wrh.analysis_export)
    //        ragt_top.agnth.monh.monitor_port.connect(sb.fifo_rdh.analysis_export)



