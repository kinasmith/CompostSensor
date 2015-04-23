function stripValue(test, id, value) {
	if(test == id) {
		return value;
	}  else return 0;
}

function toF(c) {
	var f;
	f = (c * (9/5)) + 32;
	return f;
}

// onload callback
function drawCharts() {
	var public_key = 'rowE8WvvEjiOJboJaJlg';
	var num_rows = 2000;
	// JSONP request
	var jsonData = $.ajax({
		url: 'https://data.sparkfun.com/output/' + public_key + '.json',
		data: { 
			limit: num_rows
		},
		dataType: 'jsonp',
	}).done(function (results) {
		/*=============================	TEMP */
		var tempData = new google.visualization.DataTable(jsonData);
		var tempTime, temp_10, temp_11, temp_12, temp_13, temp_14;
		tempData.addColumn('datetime', 'Time'); //data should be ONE sensor's TimeStamp (lets use Sensor 10)
		//tempData.addColumn('number', '10-sht21');
		tempData.addColumn('number', '11-therm');
		tempData.addColumn('number', '12-sht21');
		tempData.addColumn('number', '13-sht21');
		//tempData.addColumn('number', '14-sht21');
		/*=============================	HUMIDITY */
		var humid_data = new google.visualization.DataTable(jsonData);
		var humid_time, h_10, h_12, h_13, h_14;
		humid_data.addColumn('datetime', 'Time'); //data should be ONE sensor's TimeStamp (lets use Sensor 10)
		//humid_data.addColumn('number', '10');
		humid_data.addColumn('number', '12');
		humid_data.addColumn('number', '13');
		//humid_data.addColumn('number', '14');
		/*=============================	Gateway Voltage */
		var gateway_data = new google.visualization.DataTable(jsonData);
		var gateway_time, g_val;
		gateway_data.addColumn('datetime', 'Time');
		gateway_data.addColumn('number', 'Charge');

		//Heartbeat Graphs Data
		var heartbeat_10_data = new google.visualization.DataTable(jsonData);
		var hb_10_time, hb_10_val;
		heartbeat_10_data.addColumn('datetime', 'Time');
		heartbeat_10_data.addColumn('number', '10');
		var heartbeat_11_data = new google.visualization.DataTable(jsonData);
		var hb_11_time, hb_11_val;
		heartbeat_11_data.addColumn('datetime', 'Time');
		heartbeat_11_data.addColumn('number', '11');
		var heartbeat_12_data = new google.visualization.DataTable(jsonData);
		var hb_12_time, hb_12_val;
		heartbeat_12_data.addColumn('datetime', 'Time');
		heartbeat_12_data.addColumn('number', '12');
		var heartbeat_13_data = new google.visualization.DataTable(jsonData);
		var hb_13_time, hb_13_val;
		heartbeat_13_data.addColumn('datetime', 'Time');
		heartbeat_13_data.addColumn('number', '13');
		var heartbeat_14_data = new google.visualization.DataTable(jsonData);
		var hb_14_time, hb_14_val;
		heartbeat_14_data.addColumn('datetime', 'Time');
		heartbeat_14_data.addColumn('number', '14');

		//Node Voltage Data
		var n_v_10_data = new google.visualization.DataTable(jsonData);
		var n_v_10_time, n_v_10_val;
		n_v_10_data.addColumn('datetime', 'Time');
		n_v_10_data.addColumn('number', '10');
		var n_v_11_data = new google.visualization.DataTable(jsonData);
		var n_v_11_time, n_v_11_val;
		n_v_11_data.addColumn('datetime', 'Time');
		n_v_11_data.addColumn('number', '11');
		var n_v_12_data = new google.visualization.DataTable(jsonData);
		var n_v_12_time, n_v_12_val;
		n_v_12_data.addColumn('datetime', 'Time');
		n_v_12_data.addColumn('number', '12');
		var n_v_13_data = new google.visualization.DataTable(jsonData);
		var n_v_13_time, n_v_13_val;
		n_v_13_data.addColumn('datetime', 'Time');
		n_v_13_data.addColumn('number', '13');
		var n_v_14_data = new google.visualization.DataTable(jsonData);
		var n_v_14_time, n_v_14_val;
		n_v_14_data.addColumn('datetime', 'Time');
		n_v_14_data.addColumn('number', '14');
		$.each(results, function (i, row) {
			if(parseFloat(row.id) == 13.0) {
				tempTime = new Date(row.timestamp);
				humid_time = new Date(row.timestamp);
				gateway_time = new Date(row.timestamp);
				g_val = parseFloat(row.gatewayvoltage);
			}
			if(stripValue(10, parseInt(row.id), parseFloat(row.temp))!=0) {
				temp_10 = toF(parseFloat(row.temp)); 
				h_10 = parseFloat(row.humidity); 
				hb_10_time = new Date(row.timestamp);
				hb_10_val = parseFloat(row.time);
				n_v_10_time = new Date(row.timestamp);
				n_v_10_val = parseFloat(row.voltage);
			}
			if(stripValue(11, parseInt(row.id), parseFloat(row.temp))!=0) {
				temp_11 = parseFloat(row.temp); 
				hb_11_time = new Date(row.timestamp);
				hb_11_val = parseFloat(row.time);
				n_v_11_time = new Date(row.timestamp);
				n_v_11_val = parseFloat(row.voltage);
			}
			if(stripValue(12, parseInt(row.id), parseFloat(row.temp))!=0) {
				temp_12 = toF(parseFloat(row.temp)); 
				h_12 = parseFloat(row.humidity); 
				hb_12_time = new Date(row.timestamp);
				hb_12_val = parseFloat(row.time);
				n_v_12_time = new Date(row.timestamp);
				n_v_12_val = parseFloat(row.voltage);
			}
			if(stripValue(13, parseInt(row.id), parseFloat(row.temp))!=0) {
				temp_13 = toF(parseFloat(row.temp)); 
				h_13 = parseFloat(row.humidity); 
				hb_13_time = new Date(row.timestamp);
				hb_13_val = parseFloat(row.time);
				n_v_13_time = new Date(row.timestamp);
				n_v_13_val = parseFloat(row.voltage);
				
			}
			if(stripValue(14, parseInt(row.id), parseFloat(row.temp))!=0) {
				temp_14 = toF(parseFloat(row.temp)); 
				h_14 = parseFloat(row.humidity); 
				hb_14_time = new Date(row.timestamp);
				hb_14_val = parseFloat(row.time);
				n_v_14_time = new Date(row.timestamp);
				n_v_14_val = parseFloat(row.voltage);
			}

			//tempData.addRow([tempTime, temp_10, temp_11, temp_12, temp_13, temp_14]);
			//humid_data.addRow([humid_time, h_10, h_12, h_13, h_14]);
			tempData.addRow([tempTime, temp_11, temp_12, temp_13]);
			humid_data.addRow([humid_time, h_12, h_13]);
			gateway_data.addRow([gateway_time, g_val]);
			heartbeat_10_data.addRow([hb_10_time, hb_10_val]);
			heartbeat_11_data.addRow([hb_11_time, hb_11_val]);
			heartbeat_12_data.addRow([hb_12_time, hb_12_val]);
			heartbeat_13_data.addRow([hb_13_time, hb_13_val]);
			heartbeat_14_data.addRow([hb_14_time, hb_14_val]);
			n_v_10_data.addRow([n_v_10_time, n_v_10_val]);
			n_v_11_data.addRow([n_v_11_time, n_v_11_val]);
			n_v_12_data.addRow([n_v_12_time, n_v_12_val]);
			n_v_13_data.addRow([n_v_13_time, n_v_13_val]);
			n_v_14_data.addRow([n_v_14_time, n_v_14_val]);
		});

		//getFormattedValue(rowIndex, columnIndex)
		//Get last value of array. Why does it need the 4th value to show up? Mystery
		var nv_10 = n_v_10_data.getFormattedValue(4, 1);
		var nv_11 = n_v_11_data.getFormattedValue(4, 1);
		var nv_12 = n_v_12_data.getFormattedValue(4, 1);
		var nv_13 = n_v_13_data.getFormattedValue(4, 1);
		var nv_14 = n_v_14_data.getFormattedValue(4, 1);

		var options_t = {
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
			colors: ['orange', 'blue', 'green'],
			chartArea: { left: 10, top: 20, width: '170%', height: '70%' }
		};
		var options_h = {
			legend: { position: 'bottom' },
			height: 600,
			hAxis: { format: "MMM d, y" },
			vAxis: { 
				viewWindowMode: 'explicit',
				viewWindow: {
					max: 500,
					min: 0
				},
				textPosition: 'in',
				textStyle: { color: 'black', stroke: 1 },
				minValue: 40, 
				maxValue: 200 
			},
			colors: ['blue', 'green'],
			chartArea: { left: 10, top: 20, width: '170%', height: '70%' }
		};
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
		var options_hb_10 = {
			title: '10',
			titleTextStyle: { fontSize: 15 },
			legend: 'none',
			//legend: {position: 'in', textStyle: {color: 'black', fontSize: 16}},
			height: 120,
			vAxis: { text: 'none', gridlines: { count: 0 }, minValue: 0, maxValue: 1000 },
			hAxis: { text: 'none', gridlines: { count: 0 } }, 
			enableInteractivity: 'false',
			curveType: 'function',
			colors: ['#000000']  ,
			chartArea: { left: 10, top: 20, width: '170%', height: '70%' }
		};
		var options_hb_11 = {
			title: '11',
			titleTextStyle: { fontSize: 15 },
			legend: 'none',
			//legend: {position: 'in', textStyle: {color: 'black', fontSize: 16}},
			height: 120,
			vAxis: { text: 'none', gridlines: { count: 0 }, minValue: 0, maxValue: 1000 },
			hAxis: { text: 'none', gridlines: { count: 0 } }, 
			enableInteractivity: 'false',
			curveType: 'function',
			colors: ['#000000']  ,
			chartArea: { left: 10, top: 20, width: '170%', height: '70%' }
		};
		var options_hb_12 = {
			title: '12',
			titleTextStyle: { fontSize: 15 },
			legend: 'none',
			//legend: {position: 'in', textStyle: {color: 'black', fontSize: 16}},
			height: 120,
			vAxis: { text: 'none', gridlines: { count: 0 }, minValue: 0, maxValue: 1000 },
			hAxis: { text: 'none', gridlines: { count: 0 } }, 
			enableInteractivity: 'false',
			curveType: 'function',
			colors: ['#000000']  ,
			chartArea: { left: 10, top: 20, width: '170%', height: '70%' }
		};
		var options_hb_13 = {
			title: '13',
			titleTextStyle: { fontSize: 15 },
			legend: 'none',
			//legend: {position: 'in', textStyle: {color: 'black', fontSize: 16}},
			height: 120,
			vAxis: { text: 'none', gridlines: { count: 0 }, minValue: 0, maxValue: 1000 },
			hAxis: { text: 'none', gridlines: { count: 0 } }, 
			enableInteractivity: 'false',
			curveType: 'function',
			colors: ['#000000']  ,
			chartArea: { left: 10, top: 20, width: '170%', height: '70%' }
		};
		var options_hb_14 = {
			title: '14',
			titleTextStyle: { fontSize: 15 },
			legend: 'none',
			//legend: {position: 'in', textStyle: {color: 'black', fontSize: 16}},
			height: 120,
			vAxis: { text: 'none', gridlines: { count: 0 }, minValue: 0, maxValue: 1000 },
			hAxis: { text: 'none', gridlines: { count: 0 } }, 
			enableInteractivity: 'false',
			curveType: 'function',
			colors: ['#000000']  ,
			chartArea: { left: 10, top: 20, width: '170%', height: '70%' }
		};

		var options_n_v_10 = {
			title: '10: '  + nv_10 + 'v',
			titleTextStyle: { fontSize: 15 },
			legend: 'none',
			height: 120,
			vAxis: { text: 'none', gridlines: { count: 0 }, minValue: 0, maxValue: 3.5 },
			hAxis: { text: 'none', gridlines: { count: 0 } }, 
			enableInteractivity: 'false',
			curveType: 'function',
			colors: ['#000000']  ,
			chartArea: { left: 10, top: 20, width: '170%', height: '70%' }
		};
		var options_n_v_11 = {
			title: '11: '  + nv_11 + 'v',
			titleTextStyle: { fontSize: 15 },
			legend: 'none',
			height: 120,
			vAxis: { text: 'none', gridlines: { count: 0 }, minValue: 0, maxValue: 3.5 },
			hAxis: { text: 'none', gridlines: { count: 0 } }, 
			enableInteractivity: 'false',
			curveType: 'function',
			colors: ['#000000']  ,
			chartArea: { left: 10, top: 20, width: '170%', height: '70%' }
		};
		var options_n_v_12 = {
			title: '12: '  + nv_12 + 'v',
			titleTextStyle: { fontSize: 15 },
			legend: 'none',
			height: 120,
			vAxis: { text: 'none', gridlines: { count: 0 }, minValue: 0, maxValue: 3.5 },
			hAxis: { text: 'none', gridlines: { count: 0 } }, 
			enableInteractivity: 'false',
			curveType: 'function',
			colors: ['#000000']  ,
			chartArea: { left: 10, top: 20, width: '170%', height: '70%' }
		};
		var options_n_v_13 = {
			title: '13: '  + nv_13 + 'v',
			titleTextStyle: { fontSize: 15 },
			legend: 'none',
			height: 120,
			vAxis: { text: 'none', gridlines: { count: 0 }, minValue: 0, maxValue: 3.5 },
			hAxis: { text: 'none', gridlines: { count: 0 } }, 
			enableInteractivity: 'false',
			curveType: 'function',
			colors: ['#000000']  ,
			chartArea: { left: 10, top: 20, width: '170%', height: '70%' }
		};
		var options_n_v_14 = {
			title: '14: '  + nv_14 + 'v',
			titleTextStyle: { fontSize: 15 },
			legend: 'none',
			height: 120,
			vAxis: { text: 'none', gridlines: { count: 0 }, minValue: 0, maxValue: 3.5 },
			hAxis: { text: 'none', gridlines: { count: 0 } }, 
			enableInteractivity: 'false',
			curveType: 'function',
			colors: ['#000000']  ,
			chartArea: { left: 10, top: 20, width: '170%', height: '70%' }
		};
		var tempGraph = new google.visualization.LineChart($('#tempGraph').get(0));
		google.visualization.events.addListener(tempGraph, 'ready', function () {
			var a = document.createElement('a');
			a.setAttribute('href', tempGraph.getImageURI());
			a.setAttribute('target', '_blank');
			a.appendChild(document.createTextNode('download'));
			var element = document.getElementById("temp-download");
			element.appendChild(a);
		});
		var humid_graph = new google.visualization.LineChart($('#humidGraph').get(0));
		google.visualization.events.addListener(humid_graph, 'ready', function () {
			var a = document.createElement('a');
			a.setAttribute('href', humid_graph.getImageURI());
			a.setAttribute('target', '_blank');
			a.appendChild(document.createTextNode('download'));
			var element = document.getElementById("humid-download");
			element.appendChild(a);
		});
		var gateway_graph = new google.visualization.LineChart($('#gatewayBattery').get(0));
		google.visualization.events.addListener(gateway_graph, 'ready', function () {
			var a = document.createElement('a');
			a.setAttribute('href', gateway_graph.getImageURI());
			a.setAttribute('target', '_blank');
			a.appendChild(document.createTextNode('download'));
			var element = document.getElementById("gateway-download");
			element.appendChild(a);
		});
		tempGraph.draw(tempData, options_t);
		humid_graph.draw(humid_data, options_h);
		gateway_graph.draw(gateway_data, options_gateway);
		var heartbeat_10_graph = new google.visualization.LineChart($('#heartbeat_10').get(0));
		var heartbeat_11_graph = new google.visualization.LineChart($('#heartbeat_11').get(0));
		var heartbeat_12_graph = new google.visualization.LineChart($('#heartbeat_12').get(0));
		var heartbeat_13_graph = new google.visualization.LineChart($('#heartbeat_13').get(0));
		var heartbeat_14_graph = new google.visualization.LineChart($('#heartbeat_14').get(0));
		heartbeat_10_graph.draw(heartbeat_10_data, options_hb_10);
		heartbeat_11_graph.draw(heartbeat_11_data, options_hb_11);
		heartbeat_12_graph.draw(heartbeat_12_data, options_hb_12);
		heartbeat_13_graph.draw(heartbeat_13_data, options_hb_13);
		heartbeat_14_graph.draw(heartbeat_14_data, options_hb_14);
		var n_v_10_graph = new google.visualization.LineChart($('#node-voltage_10').get(0));
		var n_v_11_graph = new google.visualization.LineChart($('#node-voltage_11').get(0));
		var n_v_12_graph = new google.visualization.LineChart($('#node-voltage_12').get(0));
		var n_v_13_graph = new google.visualization.LineChart($('#node-voltage_13').get(0));
		var n_v_14_graph = new google.visualization.LineChart($('#node-voltage_14').get(0));
		n_v_10_graph.draw(n_v_10_data, options_n_v_10);
		n_v_11_graph.draw(n_v_11_data, options_n_v_11);
		n_v_12_graph.draw(n_v_12_data, options_n_v_12);
		n_v_13_graph.draw(n_v_13_data, options_n_v_13);
		n_v_14_graph.draw(n_v_14_data, options_n_v_14);
	});
};
google.load('visualization', '1', { packages: ['corechart'] });
google.setOnLoadCallback(drawCharts);
