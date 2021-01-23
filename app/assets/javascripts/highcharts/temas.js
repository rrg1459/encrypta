var letrasColor = '#333';

		// colors: ['#b88028', '#28a745', '#f3cf10', '#3d3d3d', '#7CB5EC', '#7798BF', '#aaeeee', '#ff0066'],
		// colors: ['#28a745', '#FF4233', '#f3cf10', '#3d3d3d', '#7CB5EC', '#7798BF', '#aaeeee', '#ff0066'],
Highcharts.theme = {
		colors: ['#28a745', '#b88028', '#f3cf10', '#3d3d3d', '#7CB5EC', '#7798BF', '#aaeeee', '#ff0066'],
		chart: {
				backgroundColor: { color: null },
				style: {
						fontFamily: 'sans-serif'
				},
				plotBorderColor: '#606063',
		},

		title: {
				style: {
						color: '#333333',
						fontSize: '29px'
				}
		},
		subtitle: {
				style: {
						color: '#333333',
						fontSize: '21px'
				}
		},

		xAxis: {
				gridLineColor: letrasColor,
				labels: {
						style: {
								color: letrasColor,
								fontSize: '15px'
						}
				},
				lineColor: '#0404d3',
				minorGridLineColor: '#505053',
				tickColor: '#707073',
				title: {
						style: {
								color: letrasColor,
								fontSize: '25px'
						}
				}
		},

		yAxis: {
				gridLineColor: letrasColor,
				labels: {
						style: {
								color: letrasColor,
								fontSize: '15px'
						}
				},
				lineColor: '#707073',
				minorGridLineColor: '#505053',
				tickColor: letrasColor,
				tickWidth: 1,
				title: {
						style: {
								color: letrasColor,
								fontSize: '25px'
						}
				}
		},

		tooltip: {
				backgroundColor: '#FCFFC5',
				borderColor: 'black',
				borderRadius: 10,
				borderWidth: 2,
		},

		plotOptions: {
				series: {
						dataLabels: {
								color: letrasColor,
								style: {
										fontSize: '13px'
								}
						},
						marker: {
								lineColor: letrasColor
						}
				},
				boxplot: {
						fillColor: '#505053'
				},
				candlestick: {
						lineColor: 'white'
				},
				errorbar: {
						color: 'white'
				}
		},

		legend: {
				backgroundColor: '#d8d8da',
				itemStyle: {
						color: letrasColor
				},
				itemHoverStyle: {
						color: '#FFF'
				},
				itemHiddenStyle: {
						color: '#606063'
				},
				title: {
						style: {
								color: '#C0C0C0'
						}
				}
		},

		credits: {
				text: 'https://www.driwler.com',
				href: 'https://www.driwler.com',
				position: {
						align: 'right',
						x: -15,
						verticalAlign: 'top',
						y: 45
				},
				style: {
						color: 'black'
				}
		},

		labels: {
				style: {
						color: '#707073'
				}
		},
		drilldown: {
				activeAxisLabelStyle: {
						color: '#F0F0F3'
				},
				activeDataLabelStyle: {
						color: '#F0F0F3'
				}
		},
		navigation: {
				buttonOptions: {
					enabled: false,
						symbolStroke: '#DDDDDD',
						theme: {
								fill: '#505053'
						}
				}
		},
		// scroll charts
		rangeSelector: {
				buttonTheme: {
						fill: '#505053',
						stroke: '#000000',
						style: {
								color: '#CCC'
						},
						states: {
								hover: {
										fill: '#707073',
										stroke: '#000000',
										style: {
												color: 'white'
										}
								},
								select: {
										fill: '#000003',
										stroke: '#000000',
										style: {
												color: 'white'
										}
								}
						}
				},
				inputBoxBorderColor: '#505053',
				inputStyle: {
						backgroundColor: '#333',
						color: 'silver'
				},
				labelStyle: {
						color: 'silver'
				}
		},
		navigator: {
				handles: {
						backgroundColor: '#666',
						borderColor: '#AAA'
				},
				outlineColor: '#CCC',
				maskFill: 'rgba(255,255,255,0.1)',
				series: {
						color: '#7798BF',
						lineColor: '#A6C7ED'
				},
				xAxis: {
						gridLineColor: '#505053'
				}
		},
		scrollbar: {
				barBackgroundColor: '#808083',
				barBorderColor: '#808083',
				buttonArrowColor: '#CCC',
				buttonBackgroundColor: '#606063',
				buttonBorderColor: '#606063',
				rifleColor: '#FFF',
				trackBackgroundColor: '#404043',
				trackBorderColor: '#404043'
		}
};
// Apply the theme
Highcharts.setOptions(Highcharts.theme);