<%@include file="init.jsp"%>
<script type='text/javascript' src='<%=renderRequest.getContextPath()%>/dwr/interface/Person.js'> </script>
<script type='text/javascript' src='<%=renderRequest.getContextPath()%>/dwr/engine.js'> </script>
<h1>Sample Liferay DWR portlet</h1>
<button id="checkDwr">GetName Using DWR</button>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script>
$(document).ready(function(){
  $("#checkDwr").click(function(){
	  Person.getData(42, {
		  callback:function(str) { 
		    alert(str); 
		  }
		});
  });
});
</script>