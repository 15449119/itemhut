<!-- This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/. -->

% include('global/header_inv.tpl')

<div class="off-canvas-wrapper">

  <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>

% include('global/top_bar.tpl')

% include('global/top_nav_inv.tpl')

    <!-- original content goes in this container -->

    <div class="off-canvas-content" data-off-canvas-content>

      <div class="expanded row">
      	   <div class="medium-2 columns">
	   % include('companies/companies_side_nav', cinfo = cinfo)
	   </div>
	   
      	   <div class="medium-10 columns">
	   <h4>Add Contact</h4>
	   <div class="row">
	   <form action="/companies/{{cinfo[0]}}/add-contact"
	   	 method="POST">
	   <div class="medium-3 columns">
	   	  <label>Name
		  <input type="text" name="contact-name"
		  required="required">
		  </label>
	    </div>
	   <div class="medium-3 columns">
	   	  <label>Position
		  <input type="text" name="position"
		  required="required">
		  </label>
	    </div>
	   <div class="medium-3 columns">
	    </div>
	   </div>

	   <div class="row">
	   <div class="medium-3 columns">
	   	  <label>Phone 1
		  <input type="text" name="phone-one">
		  </label>
	    </div>
	   <div class="medium-3 columns">
	   	  <label>Phone 2
		  <input type="text" name="phone-two">
		  </label>
	    </div>
	   <div class="medium-3 columns">
	    </div>
	   </div>

	   <div class="row">
	   <div class="medium-3 columns">
	   	  <label>Email
		  <input type="email" name="email">
		  </label>
	    </div>
	   <div class="medium-3 columns">
	    </div>
	   <div class="medium-3 columns">
	    </div>
	   </div>


	   <div class="row">
		<input type="submit" class="button" name="add-contact"
		value="Add Contact">
	   </div>
	   </form>
      </div>
      </div>

    </div>



  <!-- close wrapper, no more content after this -->

  </div>

</div>

% include('global/end_body.tpl')