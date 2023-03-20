/*!
//Description: //Core scripts to handle the entire theme// This file should be included in all pages
 !**/
 
$(document).ready(function() {	
	//Portlet Functions
	//--------------------------------
	$(".portlet-widgets .fa-chevron-down, .portlet-widgets .fa-chevron-up").click(function () {
		$(this).toggleClass("fa-chevron-down fa-chevron-up");
	});
	
	//Hidden	
	$(".box-close").click(function(){
		$(this).closest('.portlet').hide('slow');
	});
	
	//Tooltips Function
	//--------------------------------
	$(function () {
		$("[data-rel='tooltip']").tooltip()
	});
	
    // Popover Function
	//--------------------------------
    $("[data-toggle=popover]").popover({html:true});
	
	//Layout button
	//--------------------------------
	$('#setting-btn').click(function() {
		$(this).toggleClass('open');
		$('#setting-box').toggleClass('open');
	});
		
	$("#fo-btn").click(function(e) {
		e.preventDefault();
		$(".footer-warp").toggleClass("open");
	});
		
	// For Tasks Widget
	//--------------------------------
	$(".task-lists li input").on('click', function() {
		$(this).parent().toggleClass('todo-done');
	});
	
	//accordion Function
	//--------------------------------
    $('.collapse').on('show.bs.collapse', function() {
        var id = $(this).attr('id');
        $('a[href="#' + id + '"]').closest('.panel-heading').addClass('accordion-active');
        $('a[href="#' + id + '"] .panel-title span').html('<i class="fa fa-angle-down bigger-110"></i>');
    });
    $('.collapse').on('hide.bs.collapse', function() {
        var id = $(this).attr('id');
        $('a[href="#' + id + '"]').closest('.panel-heading').removeClass('accordion-active');
        $('a[href="#' + id + '"] .panel-title span').html('<i class="fa fa-angle-right bigger-110"></i>');
    });

    /* toggle function */
    $(".toggle").on("click",function(){
        var elm = $("#"+$(this).data("toggle"));
        if(elm.is(":visible"))
            elm.addClass("hide").removeClass("show");
        else
            elm.addClass("show").removeClass("hide");
        
        return false;
    });

	// fix stackable modal issue: when 2 or more modals opened, closing one of modal will remove .modal-open class. 
	$('body').on('hide.bs.modal', function() {
		if ($('.modal:visible').size() > 1 && $('html').hasClass('modal-open') === false) {
			$('html').addClass('modal-open');
			} else if ($('.modal:visible').size() <= 1) {
				$('html').removeClass('modal-open');
		}
	});
	// fix page scrollbars issue
	$('body').on('show.bs.modal', '.modal', function() {
		if ($(this).hasClass("modal-scroll")) {
			$('body').addClass("modal-open-noscroll");
		}
	});
	
	// fix page scrollbars issue
	$('body').on('hide.bs.modal', '.modal', function() {
		$('body').removeClass("modal-open-noscroll");
	});

	// remove ajax content and remove cache on modal closed 
	$('body').on('hidden.bs.modal', '.modal:not(.modal-cached)', function () {
		$(this).removeData('bs.modal');
	});
	
	//dropdown hold-on-click Function
	//--------------------------------
	$('body').on('click', '.dropdown-menu.hold-on-click', function (e) {
		e.stopPropagation();
	});	
	
	//loading state button function	
	//--------------------------------
	$(function() { 
		$("#btn-loading").click(function(){
			$(this).button('loading').delay(2000).queue(function() {
				$(this).button('reset');
				$(this).dequeue();
			});        
		});
	});		
	// dropdown hover
	$('li.dropdown').addClass('show-on-hover');

	//back top top
	$(window).scroll(function () {
       if ($(this).scrollTop() > 50) {
               $('#back-to-top').fadeIn();
           } else {
                $('#back-to-top').fadeOut();
            }
       });
       // scroll body to 0px on click
        $('#back-to-top').click(function () {
            $('body,html').animate({
                scrollTop: 0
            }, 800);
            return false;
        });	

});

//theme swap
if(localStorage.getItem('whColor'))
	{
		var sheet = localStorage.getItem('whColor');
		$("#whstyle").attr("href", sheet);
		
	}
function swapStyle(sheet){
	document.getElementById('whstyle').setAttribute('href', sheet);
	var whColor = sheet;
	localStorage.setItem('whColor', whColor);
}

// function collapse the navbar on scroll
var Apps = function () {
	return {
        init: function () {
            // init variables require in footer
			handleNavTopBar();
			handleNavTopBar2();
        },		
		initNavTopBar: function (els) {
				$(window).scroll(function() {
					if ($(".top-navbar").offset().top > 50) {
						$("body").addClass("top-nav-collapse");
					} else {
						$("body").removeClass("top-nav-collapse");
					}
				});
        },
		initNavTopBar2: function (els) {
				$(window).scroll(function() {
					if ($(".top-navbar").offset().top > 50) {
						$(".navbar-fixed-top, .navbar-brand").addClass("top-nav-collapse");
					} else {
						$(".navbar-fixed-top, .navbar-brand").removeClass("top-nav-collapse");
					}
				});
        },
	};
}();

/*!
//end
 !**/