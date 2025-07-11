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
	ram_wr_agt_top wagt_top;
	ram_rd_agt_top ragt_top;
	ram_virtual_sequencer v_sequencer;
	// Declare handle for ram scoreboard as sb
	ram_scoreboard sb;
	// Declare handle for ram_env configuration class as m_cfg
    ram_env_config m_cfg;
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
	// get the config object using uvm_config_db 
	 if(!uvm_config_db #(ram_env_config)::get(this,"","ram_env_config",m_cfg))
	`uvm_fatal("CONFIG","cannot get() m_cfg from uvm_config_db. Have you set() it?")
    
	//set the ram_wr_agent_config into the database
   	//if config parameter has_wagent=1
    //set m_cfg.m_wr_cfg as the string ram_wr_agent_config using uvm_config_db
	if(m_cfg.has_wagent) 
		begin
            uvm_config_db #(ram_wr_agent_config)::set(this,"wagt_top*","ram_wr_agent_config",m_cfg.m_wr_cfg);
	        //create instance for ram_wr_agt_top
	         wagt_top=ram_wr_agt_top::type_id::create("wagt_top",this);
        end
		
	//set the ram_rd_agent_config into the database
	//if config parameter has_ragent=1
	//set m_cfg.m_rd_cfg as the string ram_rd_agent_config using uvm_config_db
    if(m_cfg.has_ragent) 
		begin
            uvm_config_db #(ram_rd_agent_config)::set(this,"ragt_top*","ram_rd_agent_config",m_cfg.m_rd_cfg);
        	//create instance for ram_rd_agt_top
	        ragt_top=ram_rd_agt_top::type_id::create("ragt_top",this);
        end
        	
	super.build_phase(phase);
    if(m_cfg.has_virtual_sequencer)
        // Create the instance of v_sequencer handle 
	    v_sequencer=ram_virtual_sequencer::type_id::create("v_sequencer",this);
	
	if(m_cfg.has_scoreboard)
	    // LAB : Create the instance of score_board handle 
        sb=ram_scoreboard::type_id::create("sb",this);
endfunction

//-----------------  connect phase method  -------------------//

// In connect phase
// Connect virtual sequencers to UVC sequencers
// Hint : v_sequencer.wr_seqr = wagt_top.wr_agnth.sequencer
// 	  v_sequencer.rd_seqr = ragt_top.rd_agnth.sequencer
 
function void ram_tb::connect_phase(uvm_phase phase);
    if(m_cfg.has_virtual_sequencer)
		begin
            if(m_cfg.has_wagent)
				v_sequencer.wr_seqr = wagt_top.agnth.seqrh;
            if(m_cfg.has_ragent)
				v_sequencer.rd_seqr = ragt_top.agnth.seqrh;
		end
	// connect the monitor analysis port to scoreboard's uvm_tlm fifo's analysis export
	// Hint : wagt_top.agnth.monh.monitor_port.connect(sb.fifo_wrh.analysis_export)
    //        ragt_top.agnth.monh.monitor_port.connect(sb.fifo_rdh.analysis_export)
	
	if(m_cfg.has_scoreboard)
		begin
			wagt_top.agnth.monh.monitor_port.connect(sb.fifo_wrh.analysis_export);
			ragt_top.agnth.monh.monitor_port.connect(sb.fifo_rdh.analysis_export);
		end

endfunction



