//
//    Main script of DevOOPS v1.0 Bootstrap Theme
//
"use strict";
/*-------------------------------------------
	Dynamically load plugin scripts
---------------------------------------------*/
//
// Dynamically load Fullcalendar Plugin Script
// homepage: http://arshaw.com/fullcalendar
// require moment.js
//

$.fn.serializeObject = function()
{
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
        if (this.name !== "submit" && this.name !== "exclude") { //this exclude form elements witch names are submit or exclude
			if (o[this.name] !== undefined) {
				if (!o[this.name].push) {
					o[this.name] = [o[this.name]];
				}
				o[this.name].push(this.value || '');
			}
			else {
				o[this.name] = this.value || '';
			}
		}				
    });
    return o;
};	
	
function LoadCalendarScript(callback){
	function LoadFullCalendarScript(){
		if(!$.fn.fullCalendar){
			$.getScript('plugins/fullcalendar/fullcalendar.js', callback);
		}
		else {
			if (callback && typeof(callback) === "function") {
				callback();
			}
		}
	}
	if (!$.fn.moment){
		$.getScript('plugins/moment/moment.min.js', LoadFullCalendarScript);
	}
	else {
		LoadFullCalendarScript();
	}
}
//
// Dynamically load  OpenStreetMap Plugin
// homepage: http://openlayers.org
//
function LoadOpenLayersScript(callback){
	if (!$.fn.OpenLayers){
		$.getScript('http://www.openlayers.org/api/OpenLayers.js', callback);
	}
	else {
		if (callback && typeof(callback) === "function") {
			callback();
		}
	}
}
//
//  Dynamically load  jQuery Timepicker plugin
//  homepage: http://trentrichardson.com/examples/timepicker/
//
function LoadTimePickerScript(callback){
	if (!$.fn.timepicker){
		$.getScript('plugins/jquery-ui-timepicker-addon/jquery-ui-timepicker-addon.min.js', callback);
	}
	else {
		if (callback && typeof(callback) === "function") {
			callback();
		}
	}
}
//
//  Dynamically load Bootstrap Validator Plugin
//  homepage: https://github.com/nghuuphuoc/bootstrapvalidator
//
function LoadBootstrapValidatorScript(callback){
	if (!$.fn.bootstrapValidator){
		$.getScript('plugins/bootstrapvalidator/bootstrapValidator.min.js', callback);
	}
	else {
		if (callback && typeof(callback) === "function") {
			callback();
		}
	}
}
//
//  Dynamically load jQuery Select2 plugin
//  homepage: https://github.com/ivaynberg/select2  v3.4.5  license - GPL2
//
function LoadSelect2Script(callback){
	if (!$.fn.select2){
		$.getScript('plugins/select2/select2.min.js', callback);
	}
	else {
		//alert(typeof(callback))
		if (callback && typeof(callback) === "function") {
			callback();
		}
	}
}
//
//  Dynamically load DataTables plugin
//  homepage: http://datatables.net v1.9.4 license - GPL or BSD
//
function LoadDataTablesScripts(callback){
	function LoadDatatables(){
		$.getScript('plugins/datatables/jquery.dataTables.js', function(){
			$.getScript('plugins/datatables/extra_pluggins.js', function(){
				$.getScript('plugins/datatables/ZeroClipboard.js', function(){
					$.getScript('plugins/datatables/TableTools.js', function(){
						$.getScript('plugins/datatables/dataTables.bootstrap.js', callback);
					});
				});
			});
		});
	}
	if (!$.fn.dataTable){
		LoadDatatables();
	}
	else {
		if (callback && typeof(callback) === "function") {
			callback();
		}
	}
}
//
//  Dynamically load Widen FineUploader
//  homepage: https://github.com/Widen/fine-uploader  v4.3.1 license - GPL3
//
function LoadFineUploader(callback){
	if (!$.fn.fineuploader){
		$.getScript('plugins/fineuploader/jquery.fineuploader-4.3.1.min.js', callback);
	}
	else {
		if (callback && typeof(callback) === "function") {
			callback();
		}
	}
}
//
//  Dynamically load xCharts plugin
//  homepage: http://tenxer.github.io/xcharts/ v0.3.0 license - MIT
//  Required D3 plugin http://d3js.org/ v3.4.1 license - MIT
//
function LoadXChartScript(callback){
	function LoadXChart(){
		$.getScript('plugins/xcharts/xcharts.min.js', callback);
	}
	function LoadD3Script(){
		if (!$.fn.d3){
			$.getScript('plugins/d3/d3.v3.min.js', LoadXChart)
		}
		else {
			LoadXChart();
		}
	}
	if (!$.fn.xcharts){
		LoadD3Script();
	}
	else {
		if (callback && typeof(callback) === "function") {
			callback();
		}
	}
}
//
//  Dynamically load Flot plugin
//  homepage: http://www.flotcharts.org  v0.8.2 license- MIT
//
function LoadFlotScripts(callback){
	function LoadFlotScript(){
		$.getScript('plugins/flot/jquery.flot.js', LoadFlotResizeScript);
	}
	function LoadFlotResizeScript(){
		$.getScript('plugins/flot/jquery.flot.resize.js', LoadFlotTimeScript);
	}
	function LoadFlotTimeScript(){
		$.getScript('plugins/flot/jquery.flot.time.js', callback);
	}
	if (!$.fn.flot){
		LoadFlotScript();
	}
	else {
		if (callback && typeof(callback) === "function") {
			callback();
		}
	}
}
//
//  Dynamically load Morris Charts plugin
//  homepage: http://www.oesmith.co.uk/morris.js/ v0.4.3 License - MIT
//  require Raphael http://raphael.js
//
function LoadMorrisScripts(callback){
	function LoadMorrisScript(){
		if(!$.fn.Morris){
			$.getScript('plugins/morris/morris.min.js', callback);
		}
		else {
			if (callback && typeof(callback) === "function") {
				callback();
			}
		}
	}
	if (!$.fn.raphael){
		$.getScript('plugins/raphael/raphael-min.js', LoadMorrisScript);
	}
	else {
		LoadMorrisScript();
	}
}
//
//  Dynamically load Fancybox 2 plugin
//  homepage: http://fancyapps.com/fancybox/ v2.1.5 License - MIT
//
function LoadFancyboxScript(callback){
	if (!$.fn.fancybox){
		$.getScript('plugins/fancybox/jquery.fancybox.js', callback);
	}
	else {
		if (callback && typeof(callback) === "function") {
			callback();
		}
	}
}
//
//  Dynamically load jQuery-Knob plugin
//  homepage: http://anthonyterrien.com/knob/  v1.2.5 License- MIT or GPL
//
function LoadKnobScripts(callback){
	if(!$.fn.knob){
		$.getScript('plugins/jQuery-Knob/jquery.knob.js', callback);
	}
	else {
		if (callback && typeof(callback) === "function") {
			callback();
		}
	}
}
//
//  Dynamically load Sparkline plugin
//  homepage: http://omnipotent.net/jquery.sparkline v2.1.2  License - BSD
//
function LoadSparkLineScript(callback){
	if(!$.fn.sparkline){
		$.getScript('plugins/sparkline/jquery.sparkline.min.js', callback);
	}
	else {
		if (callback && typeof(callback) === "function") {
			callback();
		}
	}
}
/*-------------------------------------------
	Main scripts used by theme
---------------------------------------------*/
//
//  Function for load content from url and put in $('.ajax-content') block
//
function LoadAjaxContent(url){	
	$('#ajax-content').html("hola");
	$('.preloader').show();
	$.ajax({
		mimeType: 'text/html; charset=utf-8', // ! Need set mimeType only when run from local file
		url: url,
		type: 'GET',
		success: function(data) {
			$('#ajax-content').html(data);
			$('.preloader').hide();
		},
		error: function (jqXHR, textStatus, errorThrown) {
			alert(errorThrown);
		},
		dataType: "html",
		async: false
	});
}
//
//  Function maked all .box selector is draggable, to disable for concrete element add class .no-drop
//
function WinMove(){
	$( "div.box").not('.no-drop')
		.draggable({
			revert: true,
			zIndex: 2000,
			cursor: "crosshair",
			handle: '.box-name',
			opacity: 0.8
		})
		.droppable({
			tolerance: 'pointer',
			drop: function( event, ui ) {
				var draggable = ui.draggable;
				var droppable = $(this);
				var dragPos = draggable.position();
				var dropPos = droppable.position();
				draggable.swap(droppable);
				setTimeout(function() {
					var dropmap = droppable.find('[id^=map-]');
					var dragmap = draggable.find('[id^=map-]');
					if (dragmap.length > 0 || dropmap.length > 0){
						dragmap.resize();
						dropmap.resize();
					}
					else {
						draggable.resize();
						droppable.resize();
					}
				}, 50);
				setTimeout(function() {
					draggable.find('[id^=map-]').resize();
					droppable.find('[id^=map-]').resize();
				}, 250);
			}
		});
}
//
// Swap 2 elements on page. Used by WinMove function
//
jQuery.fn.swap = function(b){
	b = jQuery(b)[0];
	var a = this[0];
	var t = a.parentNode.insertBefore(document.createTextNode(''), a);
	b.parentNode.insertBefore(a, b);
	t.parentNode.insertBefore(b, t);
	t.parentNode.removeChild(t);
	return this;
};

//api response utils
function handleApiCallErrors(data){
	if (data.ERROR) {
		var error_msg = data.ERROR_MESSAGE;
		//alert(data.VALIDATION_ERRORS.length)
		if (data.ERROR_CODE == 102000){
			for(var j=0;j<data.VALIDATION_ERRORS.length;j++){
				error_msg+= "<br>- "+data.VALIDATION_ERRORS[j].ERROR_MESSAGE;
			}
		}
		OpenModalBox('Error del sistema', '<div class="alert alert-danger" role="alert" >'+error_msg+'</div>', "");	
	} 	
}



//
//  Function for create 2 dates in human-readable format (with leading zero)
//
function PrettyDates(){
	var currDate = new Date();
	var year = currDate.getFullYear();
	var month = currDate.getMonth() + 1;
	var startmonth = 1;
	if (month > 3){
		startmonth = month -2;
	}
	if (startmonth <=9){
		startmonth = '0'+startmonth;
	}
	if (month <= 9) {
		month = '0'+month;
	}
	var day= currDate.getDate();
	if (day <= 9) {
		day = '0'+day;
	}
	var startdate = year +'-'+ startmonth +'-01';
	var enddate = year +'-'+ month +'-'+ day;
	return [startdate, enddate];
}

function MessagesMenuWidth(id){
	var W = window.innerWidth;
	var W_menu = $('#sidebar-left').outerWidth();
	var w_messages = (W-W_menu)*16.666666666666664/100;
	$('#'+id).width(w_messages);
}

// Helper for run TinyMCE editor with textarea's

// Helper for draw Sparkline plots on Dashboard page
//
function SparkLineDrawBarGraph(elem, arr, color){
	if (color) {
		var stacked_color = color;
	}
	else {
		stacked_color = '#6AA6D6'
	}
	elem.sparkline(arr, { type: 'bar', barWidth: 7, highlightColor: '#000', barSpacing: 2, height: 40, stackedBarColor: stacked_color});
}
//
//  Helper for open ModalBox with requested header, content and bottom
//
//
function OpenModalBox(header, inner, bottom, modalId){
	if (modalId == null)
		var modalId = "modalbox";
	var modalbox = $('#'+modalId);
	modalbox.find('.modal-title').html(header);
	modalbox.find('.modal-body').html(inner);
	modalbox.find('.modal-footer').html(bottom);
	modalbox.modal();
	//$("body").addClass('modal-open');
}

//
//  Beauty tables plugin (navigation in tables with inputs in cell)
//  Created by DevOOPS.
//
(function( $ ){
	$.fn.beautyTables = function() {
		var table = this;
		var string_fill = false;
		this.on('keydown', function(event) {
		var target = event.target;
		var tr = $(target).closest("tr");
		var col = $(target).closest("td");
		if (target.tagName.toUpperCase() == 'INPUT'){
			if (event.shiftKey === true){
				switch(event.keyCode) {
					case 37: // left arrow
						col.prev().children("input[type=text]").focus();
						break;
					case 39: // right arrow
						col.next().children("input[type=text]").focus();
						break;
					case 40: // down arrow
						if (string_fill==false){
							tr.next().find('td:eq('+col.index()+') input[type=text]').focus();
						}
						break;
					case 38: // up arrow
						if (string_fill==false){
							tr.prev().find('td:eq('+col.index()+') input[type=text]').focus();
						}
						break;
				}
			}
			if (event.ctrlKey === true){
				switch(event.keyCode) {
					case 37: // left arrow
						tr.find('td:eq(1)').find("input[type=text]").focus();
						break;
					case 39: // right arrow
						tr.find('td:last-child').find("input[type=text]").focus();
						break;
				case 40: // down arrow
					if (string_fill==false){
						table.find('tr:last-child td:eq('+col.index()+') input[type=text]').focus();
					}
					break;
				case 38: // up arrow
					if (string_fill==false){
						table.find('tr:eq(1) td:eq('+col.index()+') input[type=text]').focus();
					}
						break;
				}
			}
			if (event.keyCode == 13 || event.keyCode == 9 ) {
				event.preventDefault();
				col.next().find("input[type=text]").focus();
			}
			if (string_fill==false){
				if (event.keyCode == 34) {
					event.preventDefault();
					table.find('tr:last-child td:last-child').find("input[type=text]").focus();}
				if (event.keyCode == 33) {
					event.preventDefault();
					table.find('tr:eq(1) td:eq(1)').find("input[type=text]").focus();}
			}
		}
		});
		table.find("input[type=text]").each(function(){
			$(this).on('blur', function(event){
			var target = event.target;
			var col = $(target).parents("td");
			if(table.find("input[name=string-fill]").prop("checked")==true) {
				col.nextAll().find("input[type=text]").each(function() {
					$(this).val($(target).val());
				});
			}
		});
	})
};
})( jQuery );
//
// Beauty Hover Plugin (backlight row and col when cell in mouseover)
//
//
(function( $ ){
	$.fn.beautyHover = function() {
		var table = this;
		table.on('mouseover','td', function() {
			var idx = $(this).index();
			var rows = $(this).closest('table').find('tr');
			rows.each(function(){
				$(this).find('td:eq('+idx+')').addClass('beauty-hover');
			});
		})
		.on('mouseleave','td', function(e) {
			var idx = $(this).index();
			var rows = $(this).closest('table').find('tr');
			rows.each(function(){
				$(this).find('td:eq('+idx+')').removeClass('beauty-hover');
			});
		});
	};
})( jQuery );


function activeAjaxLinks(){
	$('#ajax-content').on('click','a', function(e){
		if (e.isDefaultPrevented() == false && $(this).hasClass('ajax-link')) {
			e.preventDefault();
			if ($(this).hasClass('add-full')) {
				$('#content').addClass('full-content');
			}
			else {
				$('#content').removeClass('full-content');
			}	
					
			var url = $(this).attr('href');
			window.location.hash = url;
			LoadAjaxContent(url);
		}
	});
}



//////////////////////////////////////////////////////
//////////////////////////////////////////////////////
//
//      MAIN DOCUMENT READY SCRIPT OF DEVOOPS THEME
//
//      In this script main logic of theme
//
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////
$(document).ready(function () {
	$('.show-sidebar').on('click', function () {
		$('div#main').toggleClass('sidebar-show');
		setTimeout(MessagesMenuWidth, 250);
	});
	var ajax_url = location.hash.replace(/^#/, '');
	 
	
	LoadAjaxContent(ajax_url);	
	$('.main-menu').on('click', 'a', function (e) {
		var parents = $(this).parents('li');
		var li = $(this).closest('li.dropdown');
		var another_items = $('.main-menu li').not(parents);
		another_items.find('a').removeClass('active');
		another_items.find('a').removeClass('active-parent');
		if ($(this).hasClass('dropdown-toggle') || $(this).closest('li').find('ul').length == 0) {
			$(this).addClass('active-parent');
			var current = $(this).next();
			if (current.is(':visible')) {
				li.find("ul.dropdown-menu").slideUp('fast');
				li.find("ul.dropdown-menu a").removeClass('active')
			}
			else {
				another_items.find("ul.dropdown-menu").slideUp('fast');
				current.slideDown('fast');
			}
		}
		else {
			if (li.find('a.dropdown-toggle').hasClass('active-parent')) {
				var pre = $(this).closest('ul.dropdown-menu');
				pre.find("li.dropdown").not($(this).closest('li')).find('ul.dropdown-menu').slideUp('fast');
			}
		}
		if ($(this).hasClass('active') == false) {
			$(this).parents("ul.dropdown-menu").find('a').removeClass('active');
			$(this).addClass('active')
		}
		if ($(this).hasClass('ajax-link')) {
			e.preventDefault();
			if ($(this).hasClass('add-full')) {
				$('#content').addClass('full-content');
			}
			else {
				$('#content').removeClass('full-content');
			}
			var url = $(this).attr('href');
			window.location.hash = url;
			LoadAjaxContent(url);
		}
		if ($(this).attr('href') == '#') {
			e.preventDefault();
		}
	});	
	
	var height = window.innerHeight - 51;
	$('#main').css('min-height', height)
		.on('click', '.expand-link', function (e) {
			var body = $('body');
			e.preventDefault();
			var box = $(this).closest('div.box');
			var button = $(this).find('i');
			button.toggleClass('fa-expand').toggleClass('fa-compress');
			box.toggleClass('expanded');
			body.toggleClass('body-expanded');
			var timeout = 0;
			if (body.hasClass('body-expanded')) {
				timeout = 100;
			}
			setTimeout(function () {
				box.toggleClass('expanded-padding');
			}, timeout);
			setTimeout(function () {
				box.resize();
				box.find('[id^=map-]').resize();
			}, timeout + 50);
		})
		.on('click', '.collapse-link', function (e) {
			e.preventDefault();
			var box = $(this).closest('div.box');
			var button = $(this).find('i');
			var content = box.find('div.box-content');
			content.slideToggle('fast');
			button.toggleClass('fa-chevron-up').toggleClass('fa-chevron-down');
			setTimeout(function () {
				box.resize();
				box.find('[id^=map-]').resize();
			}, 50);
		})
		.on('click', '.close-link', function (e) {
			e.preventDefault();
			var content = $(this).closest('div.box');
			content.remove();
		});
	$('#locked-screen').on('click', function (e) {
		e.preventDefault();
		$('body').addClass('body-screensaver');
		$('#screensaver').addClass("show");
		ScreenSaver();
	});
	$('body').on('click', 'a.close-link', function(e){
		e.preventDefault();
		CloseModalBox();
	});
	$('#top-panel').on('click','a', function(e){
		if ($(this).hasClass('ajax-link')) {
			e.preventDefault();
			if ($(this).hasClass('add-full')) {
				$('#content').addClass('full-content');
			}
			else {
				$('#content').removeClass('full-content');
			}
			$('#ajax-content').html("");
			$('.preloader').show();
			var url = $(this).attr('href');
			window.location.hash = url;
			LoadAjaxContent(url);
		}
	});
	
	/*
	$('#search').on('keydown', function(e){
		if (e.keyCode == 13){
			e.preventDefault();
			$('#content').removeClass('full-content');
			ajax_url = 'ajax/page_search.html';
			window.location.hash = ajax_url;
			LoadAjaxContent(ajax_url);
		}
	});
	*/
	
	$('#screen_unlock').on('mouseover', function(){
		var header = 'Enter current username and password';
		var form = $('<div class="form-group"><label class="control-label">Username</label><input type="text" class="form-control" name="username" /></div>'+
					'<div class="form-group"><label class="control-label">Password</label><input type="password" class="form-control" name="password" /></div>');
		var button = $('<div class="text-center"><a href="index.html" class="btn btn-primary">Unlock</a></div>');
		OpenModalBox(header, form, button);
	});
});

//CHANGE PASSWORD FUNCTIONS
function changePassword(id){
	$.get( "guis/change_password.cfm?user_id="+id, function( data ) {
	  OpenModalBox('Cambiar Contraseña', data, "");
	  LoadBootstrapValidatorScript(changePassValidator);
	  		 
	});
}

function changePassValidator(){
	$('#change_password_form').bootstrapValidator({
		fields: {				
			password: {
				validators: {
					notEmpty: {
						message: 'El campo de clave es requerido no puede estar vacio'
					}
				}
			},
			new_password: {
				validators: {
					notEmpty: {
						message: 'The password is required and can\'t be empty'
					},
					identical: {
						field: 'new_password_confirmation',
						message: 'The password and its confirm are not the same'
					},stringLength:{
						message: 'la clave debe contener por lo menos 8 caracteres',
						min:8
					}
				}
			},
			new_password_confirmation: {
				validators: {
					notEmpty: {
						message: 'The confirm password is required and can\'t be empty'
					},
					identical: {
						field: 'new_password',
						message: 'The password and its confirm are not the same'
					}
				}
			}				
		},
		submitHandler: function(validator, form, submitButton) {
           var jsonForm = JSON.stringify($("#change_password_form").serializeObject());
		   $.getJSON(
			 usersApiUrl,
				 {method : 'changeUserPassword', returnformat : 'plain', data:jsonForm},
				 function(data){
					 if (data[0].ERROR) {	
					 		
							$('#modalErrorMsg').html('<div class="alert alert-danger" role="alert" ><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>'+data[0].ERROR_MESSAGE+'</div>');		 	
						//handleApiCallErrors(data[0]);
					 }else{
						$('#modalErrorMsg').html('<div class="alert alert-success" role="alert" ><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>La contraseña ha sido cambiada exitosamente.</div>');
						
						
					 }
				 }
			)
        }
	});
}

function showSuccesMessage(parent, msg){
	$("#successMsg").remove();
	var code = '<div id="successMsg" class="alert alert-success" role="alert" ><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>	'+msg+'</div>';
	$("#"+parent).append(code);
	setTimeout(function(){$("#successMsg").fadeOut()}, 2000);
	
}

function hightLightElement(target, boxClass, time){
	$("#"+target).addClass(boxClass);
	if(time > 0)
	setTimeout(function(){$("#"+target).removeClass(boxClass);}, time);
	
}

function showMessage(parent, boxClass, msg, time){
	$("#displayMsgBox").remove();
	var code = '<div id="displayMsgBox" class="alert alert-'+boxClass+'" role="alert" ><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>	'+msg+'</div>';
	$("#"+parent).append(code);
	if(time > 0)
	setTimeout(function(){closeMessageBox()}, time);
}

function closeMessageBox(){
	$("#displayMsgBox").fadeOut()
}

function deleteRoute(id){	
	var title = 'Borrar ruta';
	var msg = '<div class="alert alert-danger" role="alert" id="warningBoxMsg">Está seguro que desea eliminar la ruta del sistema?</div>'			
	var buttons = $('<button data-dismiss="modal" type="button" class="btn btn-default btn-label-left">'+
						'<span><i class="fa fa-times"></i></span>'+
						'Cerrar'+
						'</button>'+
						'<button id="deleteButton" type="cancel" class="btn btn-default btn-label-left" onClick="deleteRouteProcess(\''+id+'\')">'+
					'<span><i class="fa fa-trash-o txt-danger"></i></span>'+
					'Borrar'+
					'</button>');
	OpenModalBox('Borrar La ruta', msg, buttons);
}

function deleteRouteProcess(id){
	$.getJSON(
	 "https://" + routesApiUrl,
		 {method : 'deleteRoute', returnformat : 'plain', route_id:id},
		 function(data){
			 if (data[0].ERROR) {
					//$('#deleteUserMsg').html(data[0].ERROR_MESSAGE);		 	
				handleApiCallErrors(data[0]);
			 }else{
				$('#warningBoxMsg').replaceWith('<div class="alert alert-success" role="alert" >La zona ha sido eliminado exitosamente.</div>');
				$("#deleteButton").remove();
				$("#route_"+id).remove();				  
				
			 }
		 }
	)
	
}

function addCommas(nStr)
{
    nStr += '';
    var x = nStr.split('.');
    var x1 = x[0];
    var x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + ',' + '$2');
    }
    return x1 + x2;
}



function notificationHandler(msgobj){ 
  //alert(msgobj.type + " | " + msgobj.data.USERS.length);
  
  if(msgobj.type == "data" && msgobj.data.USERS.indexOf(sessionUserId) != -1){
  	//alert(msgobj.data.MESSAGE)
	showMessage("rightHeaderMenu", "info notificationAlertBox", msgobj.data.MESSAGE, 4000);	
	userNotificationCount++;
	$("#notificationCount").text(userNotificationCount);
	if (msgobj.data.NOTIFICATION_TYPE == taskNotification) {
		userTaskCount++;
		$("#taskCount").text(userTaskCount);
		if (msgobj.data.TARGET_ID == taskOpen) {
			$("#taskInstanceError").html('<div class="text-right"><button type="submit" onClick="openTaskWindow(' + msgobj.data.TARGET_ID + ')" class="btn btn-sm btn-warning">La tarea ha sido actualizada click aqui refrescar</button></div><br>');
			$("#modalbox").find('.modal-body').addClass("alert-warning");
		}
	}
  }
   
} 

function showEmployeeDetails(id){
	$.get( "guis/view_employee_details.cfm?employee_id="+id, function( data ) {
	  OpenModalBox('Detalles Empleado', data, "");
	   		 
	});
}

function showInventoryMovement(source, sourceId, itemId, title){
	$.get( 'guis/view_row_inventory_movement.cfm?item_id='+itemId +'&targetType='+source +'&target_id='+sourceId , function( data ) {
	  OpenModalBox('Movimientos de '+ title, data, "", 'modalbox2');
	  $("#modalbox2 .modal-dialog").css("width", 900);
	   		 
	});
}
function showInventoryMovementDetails(id, source, destination){
	$.get( "guis/view_inventory_movement_details.cfm?movement_id="+id+'&source_name='+source+'&destination_name='+destination, function( data ) {
	  OpenModalBox('Detalles movimiento', data, "", 'modalbox');
	   $("#modalbox .modal-dialog").css("width", 600);
	   		 
	});
}

function showConfirmationButton(id){
	$("#"+id).toggle("slow" )
}
	


function assignTask(targetType, targetId){
	$.get( 'guis/assign_task.cfm?target_type='+targetType+'&target_id='+targetId , function( data ) {
	  $("#createTaskContainer").html(data);
	   		 
	});
}

function createTaskAssignation(){
	var jsonForm = JSON.stringify($("#taskAssignationForm").serializeObject());
	$.getJSON(
	 "http://" + utilitiesApiUrl,
		 {method : 'createTaskAssignation', returnformat : 'plain', data:jsonForm},
		 function(data){
			 if (data[0].ERROR) {	
	 			showMessage('createTaskContainer', 'warning', data[0].ERROR_MESSAGE, 0);					
			 }else{
				$("#createTaskContainer").html("")
				showMessage('createTaskContainer', 'info', 'La tarea ha sido asignada exitosamente', 0);	
			 }
		 }
	)
}

var taskOpen = -1;
function openTaskWindow(taskInstanceId){
	$.get( "guis/view_task_details.cfm?task_instance_id="+taskInstanceId, function( data ) {
	  OpenModalBox('Detalles de la tarea', data, "", 'modalbox');
	   $("#modalbox .modal-dialog").css("width", 900);
	   taskOpen = taskInstanceId;
	   $("#modalbox").find('.modal-body').removeClass("alert-warning");
	});
}

function addTaskNote(taskInstance, userColor, userName){
	var note = $("#taskNoteContent").val();
	if(note == ""){
		alert("La nota no puede estar vacia")
	}else{
		$.getJSON(
		 "http://" + utilitiesApiUrl,
			 {method : 'createTaskNote', returnformat : 'plain', task_instance_id:taskInstance, note:note},
			 function(data){
				 if (data[0].ERROR) {	
		 			showMessage('taskInstanceError', 'warning', data[0].ERROR_MESSAGE, 4000);					
				 }else{
					$("#addTaskNote").val("")
					var noteCode = '<div id="taskNote_'+data[0].TASK_NOTE_ID+'" class="box"><div class="page-feed-content"><small id="notificationHeader" class="time" style="color:#'+userColor+';"><i class="fa fa-user"></i> '+userName+' </small><div class="notificationDate"><i class="fa fa-clock-o"></i> '+data[0].NOTE_DATE+ '&nbsp;<span class="list-group-addon pull-right"> <button onClick="showConfirmationButton(\'deleteNoteConf_'+data[0].TASK_NOTE_ID+'\')" class="btn btn-xxs btn-danger"><span><i class="fa fa-trash-o "></i></span></button> <button id="deleteNoteConf_'+data[0].TASK_NOTE_ID+'" onClick="deleteTaskNote('+data[0].TASK_NOTE_ID+')" class="btn btn-xxs btn-danger confirmationButton"><span> <i class="fa fa-trash-o "></i> Click para borrar nota</span></button></div><p>'+note+'</p></div></div>'
					$("#taskInstanceNotes").prepend(noteCode)		
					var count = parseInt($("#taskNoteCount").text());
					count++;
					$("#taskNoteCount").text(count);
					addtaskWallEntry(data[0].FEED_ENTRY.USER, data[0].FEED_ENTRY.COLOR, data[0].FEED_ENTRY.DATE, data[0].FEED_ENTRY.MSG);
				 }
			 }
		)
	}
}

function addTaskNotification(taskInstance, userColor, userName){
	var notification = $("#taskNotificationContent").val();
	if(notification == ""){
		alert("El mensaje no puede estar vacia")
	}else{
		$.getJSON(
		 "http://" + utilitiesApiUrl,
			 {method : 'createTaskNotification', returnformat : 'plain', task_instance_id:taskInstance, notification:notification},
			 function(data){
				 if (data[0].ERROR) {	
		 			showMessage('taskInstanceError', 'warning', data[0].ERROR_MESSAGE, 4000);					
				 }else{
					$("#taskNotificationContent").val("")
					addtaskWallEntry(userName, userColor, data[0].DATE, notification);
			
				 }
			 }
		)
	}
}

function addtaskWallEntry(user, color, date, msg){
	var entryCode = '<div class="taskWallEntry" style="border-color:#'+color+';"><div class="taskWallEntryTitle" style="background-color:#'+color+'; border-color:#'+color+'"><small id="notificationHeader" class="time" ><i class="fa fa-user"></i> '+user+' </small><div class="notificationDate"><i class="fa fa-clock-o"></i> '+date+' &nbsp;	</div></div>'+msg+'</div>';
	$("#taskWallNotificationsBox").prepend(entryCode);		
}

function deleteTaskNote(taskNoteId){
	$.getJSON(
	 "http://" + utilitiesApiUrl,
		 {method : 'deleteTaskNote', returnformat : 'plain', task_note_id:taskNoteId},
		 function(data){
			 if (data[0].ERROR) {	
	 			showMessage('taskInstanceError', 'warning', data[0].ERROR_MESSAGE, 4000);					
			 }else{
				var count = parseInt($("#taskNoteCount").text());
				count--;
				$("#taskNoteCount").text(count);	
				$("#taskNote_"+taskNoteId).remove();
				addtaskWallEntry(data[0].FEED_ENTRY.USER, data[0].FEED_ENTRY.COLOR, data[0].FEED_ENTRY.DATE, data[0].FEED_ENTRY.MSG);


			 }
		 }
	)
}

function changeTaskInstanceActionState(task_instance_id, action_state, task_instance_action_id, task_action_id, user_color, username){
	$.getJSON(
	 "http://" + utilitiesApiUrl,
		 {method : 'changeTaskInstanceActionState', returnformat : 'plain', task_instance_id:task_instance_id, action_state:action_state, task_instance_action_id:task_instance_action_id, task_action_id:task_action_id},
		 function(data){
			 if (data[0].ERROR) {	
	 			showMessage('taskInstanceError', 'warning', data[0].ERROR_MESSAGE, 4000);					
			 }else{
				$("#taskActionUser_"+task_instance_action_id).remove();
				$("#taskAction_"+task_instance_action_id).append('<span id="taskActionUser_'+task_instance_action_id+'" style="color:#'+user_color+'; font-weight:bold"> &nbsp; ('+username+')</span>');	
				
				addtaskWallEntry(data[0].FEED_ENTRY.USER, data[0].FEED_ENTRY.COLOR, data[0].FEED_ENTRY.DATE, data[0].FEED_ENTRY.MSG);


			 }
		 }
	)
}

function changeTaskInstanceState(task_instance_id, new_state, input){
	$.getJSON(
	 "http://" + utilitiesApiUrl,
		 {method : 'changeTaskInstanceState', returnformat : 'plain', task_instance_id:task_instance_id, instance_state:new_state},
		 function(data){
			 if (data[0].ERROR) {	
	 			showMessage('taskInstanceError', 'warning', data[0].ERROR_MESSAGE, 4000);	
				if (new_state == true)
					$(input).removeAttr("checked");	
				else
					$(input).prop("checked", "checked");				
			 }else{
				openTaskWindow(task_instance_id);
			 }
		 }
	)
}

function showTaskOrderDetails(sec, doc){
	$.get( "guis/view_order_details.cfm?sec="+sec+'&doc='+doc, function( data ) {
	  $("#loadTasktargetBox").html(data);
	   		 
	});
}

function showTasResultDetails(sec, doc, line){
	$.get( "guis/view_result_details.cfm?sec="+sec+'&doc='+doc+'&line='+line, function( data ) {
		 $("#loadTasktargetBox").html(data);
	   		 
	});
}

function TinyMCEStart(elem, mode){
	var plugins = [];
	if (mode == 'extreme'){
		plugins = [ "advlist anchor autolink autoresize autosave charmap code contextmenu directionality ",
			"emoticons fullscreen hr image insertdatetime layer legacyoutput",
			"link lists media nonbreaking noneditable pagebreak paste preview print save searchreplace",
			"tabfocus table template textcolor visualblocks visualchars wordcount"]
	}
	tinymce.init({selector: elem,
		theme: "modern",
		element_format : "html",
		entity_encoding: "raw",
		plugins: plugins,
		//content_css: "css/style.css",
		toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | print preview media fullpage | forecolor backcolor emoticons",
		style_formats: [
			{title: 'Header 2', block: 'h2', classes: 'page-header'},
			{title: 'Header 3', block: 'h3', classes: 'page-header'},
			{title: 'Header 4', block: 'h4', classes: 'page-header'},
			{title: 'Header 5', block: 'h5', classes: 'page-header'},
			{title: 'Header 6', block: 'h6', classes: 'page-header'},
			{title: 'Bold text', inline: 'b'},
			{title: 'Red text', inline: 'span', styles: {color: '#ff0000'}},
			{title: 'Red header', block: 'h1', styles: {color: '#ff0000'}},
			{title: 'Example 1', inline: 'span', classes: 'example1'},
			{title: 'Example 2', inline: 'span', classes: 'example2'},
			{title: 'Table styles'},
			{title: 'Table row 1', selector: 'tr', classes: 'tablerow1'}
		]
	});
}
