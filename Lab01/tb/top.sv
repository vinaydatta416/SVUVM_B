/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:   top.sv

Description		:	Top Module 
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/


module top;
  	import uvm_pkg::*;
	
  
	//import ram_pkg
       	 

	// Declare two handles of write_xtn class wr_copy_xtnh and wr_clone_xtnh 

       
   

 	// Declare dynamic array of handles for write_xtn as wr_xtnh


	// Declare a variable no_trans as int data type and initialize it with value 10.
 	
        
	// Within initial block
 	

		// Allocate the size of above declared array equal to 10

		 
		// Within for loop, Generate ten random transactions	
		// Create 10 tr class objects with different strings using $sformatf 
		// randomize & print the 10 transaction class objects
		
			
	  
	  
		// Copy the 5th transaction item into the 3rd transaction item using copy method 
	

		// Copy the 3rd transaction item into another item(wr_copy_xtnh) using copy method
		// Note : Do create an instance for wr_copy_xtnh
		
		//Print the object wr_copy_xtnh in a tree format
		

		// Call Compare method on the 5th and 3rd transaction items
		

		// Using clone() method copy the 8th item to another item(wr_clone_xtnh)
		// Note : Do not create an instance for wr_clone_xtnh
		
		//Print the object wr_clone_xtnh in a line format
	
		

 
		


endmodule : top


