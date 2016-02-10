% include('global/header.tpl')

<div class="off-canvas-wrapper">

  <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>

% include('global/top_bar.tpl')
% include('global/top_nav.tpl')


    <!-- original content goes in this container -->

    <div class="off-canvas-content" data-off-canvas-content>

      <div class="expanded row">
      	   <h4>Warehouses</h4>
      	   <div class="medium-2 columns">
	   	<ul class="vertical menu">
		% for wh in wh_list:
		<li><a href = "/warehouses/{{wh.replace(" ", "-").lower()}}">{{wh.title()}}</a></li>
		% end
		</ul>

		<h4>Base Management</h4>
	   	<ul class="vertical menu">
		    <li><a href = "/warehouses/cases">Cases & Boxes</a></li>
		</ul>
	   </div>
	   
      	   <div class="medium-10 columns">
	         <p>stuff here</p>
	   </div>      
      </div>

    </div>



  <!-- close wrapper, no more content after this -->

  </div>

</div>

% include('global/end_body.tpl')