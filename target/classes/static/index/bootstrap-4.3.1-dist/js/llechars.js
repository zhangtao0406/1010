

function wt(ordersStatus20150,ordersStatus20160,ordersStatus20170,ordersStatus20180,ordersStatus20190,ordersStatus20159,ordersStatus20169,ordersStatus20179,ordersStatus20189,ordersStatus20199){
   /* var aa = [];
    aa.push(ordersStatus20199);
    console.log(aa);*/
	// chart1
	var option = {
	    tooltip: {
	        trigger: 'axis',
	        axisPointer: {
	            type: 'cross',
	            crossStyle: {
	                color: '#999'
	            }
	        }
	    },
	    toolbox: {
			show: false,
	        feature: {
	            dataView: {show: true, readOnly: false},
	            magicType: {show: true, type: ['line', 'bar']},
	            restore: {show: true},
	            saveAsImage: {show: true}
	        }
	    },
	    legend: {
	        data:['下单','成交']
	    },
	    xAxis: [
	        {
	            type: 'category',
	            data: [2015,2016,2017,2018,2019],
	            axisPointer: {
	                type: 'shadow'
	            }
            }
        ],
        yAxis: [
            {
                type: 'value',
                name: '订单数量',
                min: 0,
                max: 100,
                interval: 50,
                axisLabel: {
                    formatter: '{value}'
                }
            }
        ],

        series: [
            {
                name:'下单',
                type:'bar',
                data:[ordersStatus20150,ordersStatus20160,ordersStatus20170,ordersStatus20180,ordersStatus20190]
	        },
	        {
	            name:'成交',
	            type:'bar',
	            data:[ordersStatus20159,ordersStatus20169,ordersStatus20179,ordersStatus20189,ordersStatus20199]
	        }
	    ]
	};
	myChart1.setOption(option);
	
}

