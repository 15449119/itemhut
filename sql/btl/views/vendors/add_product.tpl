<!-- This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/. -->

% if inv:
% include('global/header_inv.tpl')
% else:
% include('global/header.tpl')
%end

<div class="off-canvas-wrapper">

  <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>

% include('global/top_bar.tpl')

% if inv:
% include('global/top_nav_inv.tpl')
% else:
% include('global/top_nav.tpl')
% end

    <!-- original content goes in this container -->

    <div class="off-canvas-content" data-off-canvas-content>

      <div class="expanded row">
      	   <div class="medium-2 columns">
	   	<h4>Add Product</h4>
	   	<ul class="vertical menu">
		</ul>
	   </div>
	   
      	   <div class="medium-10 columns">
	   % if upc:
	   <p>{{upc}} added</p>
	   %end
	   
	   <div class="row">
      	   <div class="medium-4 columns">
	   
	   <form action="/vendors/{{vid}}/products/add-product" method="POST">
	   	 UPC:
		 <select name="upc">
		 % for i in item_list:
		 <option value="{{i[1]}}">{{i[1]}}, {{i[0]}}</option>
		 % end
		 </select>
	   <input type="submit" class="button" name="add-product" value="Add Product">
	   <form>
	   </div>
	   </div>
	   </div>

    </div>

  <!-- close wrapper, no more content after this -->

  </div>

</div>

<script>
$(document).ready( function () {
    $('#table_id').DataTable();
} );
</script>

% include('global/end_body.tpl')