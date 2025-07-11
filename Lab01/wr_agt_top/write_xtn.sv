/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:   write_xtn.sv

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
  
	// UVM Factory Registration Macro


	//------------------------------------------
	// DATA MEMBERS (Outputs non-rand, inputs rand)
	//------------------------------------------

	 
		
	// Add the rand fields - data (`RAM_WIDTH-1:0), address(`ADDR_SIZE – 1:0),declared in tb_defs.sv
	// write (type bit) 

	
  
	// Add the rand control knobs declared in tb_defs.sv

	// xtn_type (enumerated type addr_t)  -  for controlling the type of transaction 
	// xtn_delay (integer type) - for inserting delay between transactions
	
	
         
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

	// Standard UVM Methods like constructor,do_compare,do_copy,do_print,post_randomize
	extern function new(string name = "write_xtn");
	extern function void do_copy(uvm_object rhs);
	extern function bit do_compare(uvm_object rhs, uvm_comparer comparer);
	extern function void do_print(uvm_printer printer);
	extern function void post_randomize();

endclass:write_xtn

//-----------------  constructor new method  -------------------//
//Add code for new()


	  
//-----------------  do_copy method  -------------------//
//Add code for do_copy() to copy address, data, write, xtn_type and xtn_delay
function void write_xtn::do_copy (uvm_object rhs);

    // handle for overriding the variable
    write_xtn rhs_;

	 // Add a check for rhs_ using $cast to check that the object types are 
	 // compatible
    

	// Copy over data members:
	// <var_name> = rhs_.<var_name>;

    

endfunction:do_copy


//-----------------  do_compare method -------------------//

//Add code for do_compare() to compare address, data, write, xtn_type and xtn_delay
function bit  write_xtn::do_compare (uvm_object rhs,uvm_comparer comparer);

	// handle for overriding the variable
    write_xtn rhs_;
	// Add a check for rhs_ using $cast to check that the object types are 
	// compatible
    

	// Compare the data members and return the result of comparision
	// <var_name> == rhs_.<var_name>;

	

endfunction:do_compare 

//-----------------  do_print method  -------------------//
//underastand the do_print method implemented below
//Use printer.print_field for integral variables
//Use printer.print_generic for enum variables
function void  write_xtn::do_print (uvm_printer printer);
	super.do_print(printer);

   
    //              	srting name   		bitstream value     size    radix for printing
    printer.print_field( "data", 			this.data, 	    	64,		 UVM_DEC		);
    printer.print_field( "address", 		this.address, 	    12,		 UVM_DEC		);
    printer.print_field( "write", 			this.write, 	    1'b1,		 UVM_DEC		);
    printer.print_field( "xtn_delay", 		this.xtn_delay,     65,		 UVM_DEC		);
   
    //  	         	   variable name	xtn_type		$bits(variable name) 	variable name.name
    printer.print_generic( "xtn_type", 		"addr_t",		$bits(xtn_type),		xtn_type.name);

endfunction:do_print
    
// In post_andomize method assign address to 6000 if xtn_type is BAD_XTN

 
 
   

