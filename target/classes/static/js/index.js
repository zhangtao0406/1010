$(function(){
    // nav收缩展开
    $('.nav-item>a').on('click',function(){
        if (!$('.nav').hasClass('nav-mini')) {
            if ($(this).next().css('display') == "none") {
                //展开未展开
                $('.nav-item').children('ul').slideUp(300);
                $(this).next('ul').slideDown(300);
                $(this).parent('li').addClass('nav-show').siblings('li').removeClass('nav-show');
            }else{
                //收缩已展开
                $(this).next('ul').slideUp(300);
                $('.nav-item.nav-show').removeClass('nav-show');
            }
        }
    });
    //nav-mini切换
    $('#mini').on('click',function(){
        if (!$('.nav').hasClass('nav-mini')) {
            $('.nav-item.nav-show').removeClass('nav-show');
            $('.nav-item').children('ul').removeAttr('style');
            $('.nav').addClass('nav-mini');
        }else{
            $('.nav').removeClass('nav-mini');
        }
    });
	
	// 时间
	var date = new Date();
    var time = $('#time');
	var year = date.getFullYear();
	var mouth = date.getMonth()+1;
	var day = date.getDate();
	var timer = year +"-"+ mouth +"-"+ day
	time.html(timer);

	// 主题

	var navl = $('#nav-item1 li');
	var content = $('.bod_right')
	navl.click(function(){
		var num = $(this).index()+1;
		// console.log(num);
		if( num ==1 ){
			content.css('background','#eee')
		}else if( num ==2 ){
			content.css('background','pink')
		}else if(num == 3 ){
			content.css('background','yellowgreen')
		}else if(num == 4 ){
			content.css('background','blue')
		}
			
	})
	
	
});