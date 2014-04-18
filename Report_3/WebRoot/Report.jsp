<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Report</title>
    <!-- 引入jQuery类库-->
    <script language="JavaScript" src="js/jquery.min.js"></script>
	<script language="JavaScript" src="js/FusionCharts.js"></script>
  	<!-- 引入FusionCharts类库-->
  <style type="text/css">
  	#Report01{width:500px;height:300px;border:1px solid red;margin:0 auto;}
  </style>
  <script language="JavaScript">
  	function viewAs3D(){
  		var chartToView3D=getChartFromId("myChartId");
  		chartToView3D.view3D();
  	}
  </script>
  </head>
  
  <body>
    <div id="Report01"></div>
    <script language="JavaScript"> 
       
    	var str="<chart caption='Report' showPercentValues='1'>" +
    	"<set label='a' value='26' />" +
    	"<set label='b' value='32' />" +
    	"<set label='c' value='42' />" +
    	"</chart>" ;
       	var myChart=new FusionCharts("swf/Pie3D.swf" , "myChartId" , "500" , "300" , "0" , "1" );
    	myChart.setXMLData(str);
    	myChart.render("Report01");
    
    </script>
    <center><input type='button' value='3D View' onClick='viewAs3D();'></center>
  </body>
</html>
