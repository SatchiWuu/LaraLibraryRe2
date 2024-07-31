@extends('layouts.master')
@section('content')
<link rel="stylesheet" href="{{ asset('css/dashboard.css') }}">

<script>
window.onload = function () {

	


var authorData;

$.ajax({
	type: "GET",
	url: `/api/retrieveTopBooks`,
	dataType: 'json',
	success: function (data2) {
		var authorOptions = {animationEnabled: true,
				title: {
					text: "Most Borrowed Book"              
				},
				data: [              
				{
					type: "column",
					dataPoints: data2,
				}
				]
		};

$("#authorChart").CanvasJSChart(authorOptions);

	},
	error: function () {
		console.log('AJAX load did not work');
		alert("error");
	}
});

$.ajax({
	type: "GET",
	url: `/api/retrieveTopAuthors`,
	dataType: 'json',
	success: function (data3) {
		var Aoptions = {animationEnabled: true,
	title: {
		text: "Best Selling Authors"
	},
	data: [{
			type: "pie",
			startAngle: 45,
			showInLegend: "true",
			legendText: "{label}",
			indexLabel: "{label} ({y})",
			yValueFormatString:"#,##0.#"%"",
			dataPoints: data3
	}]
};
$("#pieChart").CanvasJSChart(Aoptions);

	},
	error: function () {
		console.log('AJAX load did not work');
		alert("error");
	}
});

$.ajax({
	type: "GET",
	url: `/api/retrieveTopGenre`,
	dataType: 'json',
	success: function (data4) {
		var Goptions = {
	animationEnabled: true,
	title: {
		text: "Top Genres",                
		fontColor: "Black"
	},	
	axisY: {
		tickThickness: 0,
		lineThickness: 0,
		valueFormatString: " ",
		includeZero: true,
		gridThickness: 0                    
	},
	axisX: {
		tickThickness: 0,
		lineThickness: 0,
		labelFontSize: 18,
		labelFontColor: "Peru"				
	},
	data: [{
		indexLabelFontSize: 12,
		toolTipContent: "<span style=\"color:#62C9C3\">{indexLabel}:</span> <span style=\"color:#CD853F\"><strong>{y}</strong></span>",
		indexLabelPlacement: "inside",
		indexLabelFontColor: "white",
		indexLabelFontWeight: 600,
		indexLabelFontFamily: "Verdana",
		color: "#62C9C3",
		type: "bar",
		dataPoints: data4
	}]
};

$("#BChart").CanvasJSChart(Goptions);

	},
	error: function () {
		console.log('AJAX load did not work');
		alert("error");
	}
});


}
</script>


<div class="dashboard-main">
	<div class="chart-main">
		<div id="authorChart" style="height: 80%; width: 100%;"></div>
	</div>
	<div class="chart-side">
		<div class="chart-side-a">
			<div id="pieChart" style="height: 370px; width: 100%;"></div>
		</div>
		<div class="chart-side-b">
			<div id="BChart" style="height: 370px; width: 100%;"></div>
		</div>
	</div>
</div>


<script type="text/javascript" src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="https://cdn.canvasjs.com/jquery.canvasjs.min.js"></script>

@endsection