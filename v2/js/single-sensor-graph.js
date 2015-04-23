function toF(c) {
	var f;
	f = (c * (9/5)) + 32;
	return f;
}

google.load('visualization', '1.0', {'packages':['controls']});
google.load('visualization', '1', { packages: ['corechart'] });
google.setOnLoadCallback(drawCharts);

// onload callback
function drawCharts() {
	var public_key = 'rowE8WvvEjiOJboJaJlg';
	// JSONP request
	var jsonData = $.ajax({
		url: 'https://data.sparkfun.com/output/' + public_key + '.json',
		data: { 'eq': { 'id': 11.0 } },
		dataType: 'jsonp',
	}).done(function (results) {
		//Create DataTables
		/*=============================	TEMP */
		var tempData = new google.visualization.DataTable(jsonData);
		var tempTime, temp;
		tempData.addColumn('datetime', 'Time'); //data should be ONE sensor's TimeStamp (lets use Sensor 10)
		tempData.addColumn('number', '11-therm');
		/*=============================	Gateway Voltage */
		var gateway_data = new google.visualization.DataTable(jsonData);
		var gateway_time, g_val;
		gateway_data.addColumn('datetime', 'Time');
		gateway_data.addColumn('number', 'Charge');
		$.each(results, function (i, row) {
			tempTime = new Date(row.timestamp);
			temp = parseFloat(row.temp); 
			gateway_time = new Date(row.timestamp);
			g_val = parseFloat(row.gatewayvoltage);
			tempData.addRow([tempTime, temp]);
			gateway_data.addRow([gateway_time, g_val]);
		});
		//Create Graphs
		var tempDashboard = new google.visualization.Dashboard(
			document.getElementById('temp-dashboard-div'));
			// Create a range slider, passing some options
			var tempRangeSlider = new google.visualization.ControlWrapper({
				'controlType': 'DateRangeFilter',
				'containerId': 'temp-filter-div',
				'options': {
					'filterColumnLabel': 'Time',
					ui: {
						label: 'Date Range',
						step: 'hour'
					}
			}
		});
		var tempGraph = new google.visualization.ChartWrapper({
			'chartType': 'LineChart',
			'containerId': 'temp-graph-div',
			'options': {
				title: '#11 Temperature *F',
				legend: { position: 'bottom' },
				height: 600,
				hAxis: { format: "MMM d, y" },
				vAxis: { 
					viewWindowMode: 'explicit',
					viewWindow: {
						max: 200,
						min: 40
					},
					textPosition: 'in',
					textStyle: { color: 'black', stroke: 1 }
				},
				colors: [ 'orange' ],
				chartArea: { left: 10, top: 20, width: '170%', height: '70%' }
			}
		});
		tempDashboard.bind(tempRangeSlider, tempGraph).draw(tempData);

		var options_gateway = {
			legend: {position: 'none'},
			height: 600,
			vAxis: { 
				viewWindowMode: 'explicit',
				viewWindow: {
					max: 100,
					min: 0
				},
				textPosition: 'in'
			},
			hAxis: { format: "MMM d, y" }, 
			curveType: 'function',
			colors: ['#000000']  ,
			chartArea: { left: 10, top: 20, width: '170%', height: '70%' }
		};
		var gateway_graph = new google.visualization.LineChart($('#gatewayBattery').get(0));
		google.visualization.events.addListener(gateway_graph, 'ready', function () {
			var a = document.createElement('a');
			a.setAttribute('href', gateway_graph.getImageURI());
			a.setAttribute('target', '_blank');
			a.appendChild(document.createTextNode('download'));
			var element = document.getElementById("gateway-download");
			element.appendChild(a);
		});
		//var tempGraph = new google.visualization.LineChart($('#temp-graph-div').get(0));
		//tempGraph.draw(tempData, options_t);
		gateway_graph.draw(gateway_data, options_gateway);
	});
};


