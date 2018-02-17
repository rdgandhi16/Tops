﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
<div id="tooplate_content">

	<h2>Contact Information</h2>

    <p><em>In ac libero urna. Suspendisse sed odio ut mi auctor blandit. Duis luctus nulla metus, a vulputate mauris.</em> Integer sed nisi sapien, ut gravida mauris. Nam et tellus libero. Cras purus libero, dapibus nec rutrum in, dapibus nec risus. Ut interdum mi sit amet magna feugiat auctor. Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> and <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.</p>
                
   	<div class="cleaner_h40"></div>
                
    <div class="col_w460">
       	<div id="contact_form">
		
        	<h4>Quick Contact Form</h4>
			<form method="post" name="contact" action="#">
	
				<label for="author">Name:</label> <input type="text" id="author" name="author" class="required input_field" />
				<div class="cleaner_h10"></div>
							
				<label for="email">Email:</label> <input type="text" class="validate-email required input_field" name="email" id="email" />
				<div class="cleaner_h10"></div>
							
				<label for="subject">Subject:</label> <input type="text" class="validate-subject required input_field" name="subject" id="subject"/>				               
				<div class="cleaner_h10"></div>
							
				<label for="text">Message:</label> <textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>
				<div class="cleaner_h10"></div>  
							              
				<input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />
							
				<input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />
	
			</form>

        </div>
   	</div>
                
 	<div class="col_w460 last_col">
	    <h4>Mailing Addresses</h4>
        <h6>Company Name 1</h6>
        156-145 Quisque odio quam, <br />
        Pulvinar sit amet convallis eget, 10110<br />
        Venenatis ut turpis<br /><br />
        Tel: 010-020-6600<br/> 
		Fax: 010-020-4400
                    
        <div class="hr_divider"></div><br />
                    
        <h6>Company Name 2</h6>
        116-101 Duis lacinia dictum, <br />
        PVestibulum auctor, 10330<br />
        Diam a mollis tempor<br /><br />
        Tel: 010-022-5520<br/> 
		Fax: 010-044-4240 
                    
    </div>                

    <div class="cleaner"></div>
</div>
            		
    <div class="cleaner"></div> 
	
    <div class="cleaner"></div>
</asp:Content>

