$(document).ready(function() {
	
	
	/*$( "#tab1" ).load( "cms/index.php?id=tab1 #tabContent" );
	$( "#tab2" ).load( "cms/index.php?id=tab2 #tabContent" );
	$( "#tab4" ).load( "cms/index.php?id=tab4 #tabContent" );*/
	
	$( "#tab1" ).load( "cms/index.php?id=unternehmen #tabContent" );
	$( "#tab2" ).load( "cms/index.php?id=kandidaten #tabContent" );
	$( "#tab4" ).load( "cms/index.php?id=ueber-uns #tabContent" );
	
	
	var matching = location.hash.replace('ct','t'), lhash = location.hash;
	switch (lhash) {
		case '#cunternehmen':
			matching = '#tab1';
			break;
		case '#ckandidaten':
			matching = '#tab2';
			break;
		case '#cstellen':
			matching = '#tab3';
			break;
		case '#cueber-uns':
			matching = '#tab4';
			break;
	}

	// variables
	var $spImage = $('#sp-image'),
		$links = $('.tabs .tab-links').find('a'),
		$active = $($links.filter('[href="'+matching+'"]')[0]);
		
	// lightbox binding with plugin
	$('a.sp-img-lb').imageLightbox({
		onStart: 	 function() { overlayOn(); },
		onEnd: 	 function() { overlayOff(); }
	});
	
	$("a.sp-gmap-lb").fancybox({
					maxWidth	: 800,
					maxHeight	: 600,
					fitToView	: false,
					width		: '70%',
					height		: '70%',
					autoSize	: false,
					closeClick	: false,
					openEffect	: 'elastic',
					closeEffect	: 'none'
				});
				
	// sticky script
	setInterval(function(){
		var heightContent = $('.tab-content')[0].scrollHeight,
			heightViewport = $(window).height(),
			$spFooter = $('.sp-footer');
		
		if((heightViewport - heightContent) < 400) {
			$spFooter.addClass('static')
		} else {
			$spFooter.removeClass('static')
		}

	},300)
	
	// overlay-commands for lightbox
	overlayOn = function(){	$( '<div id="imagelightbox-overlay"></div>' ).appendTo( 'body' );},
	overlayOff = function(){$( '#imagelightbox-overlay' ).remove();}

	// bind home function to logo link
	$('a.sp-home-link').on('click', function(e){
		document.body.className = 'home';
		$('.tab-content .tab').hide();
		$('.active.selected').attr('class','');
		$spImage.attr('class','home');
	});

	// bind content switching to menu links
	$('.tabs .tab-links a, .sp-leftnav a').on('click', function(e)  {
	
        var currentAttrValue = $(this).attr('href');
		document.body.className = 'content';
        // Show/Hide Tabs
		$('.tab-content ' + currentAttrValue).show().siblings().hide();
		
		$spImage.attr('class', currentAttrValue.replace('#','').substring(0,4));
		
        // Change/remove current tab to active
        $(this).parent('li').addClass('active selected').siblings().removeClass('active selected');
        
		location.hash = currentAttrValue.replace('#','#c');
		e.preventDefault();
		
    });
	
	// iframe binding
    $("#osIframe").load(function() {
		
        var $ifr = $(this),
			doc = this.contentDocument || this.contentWindow.document,
			docForm = $(doc).find('form').parent(),
			target = $('#osform'); //document.getElementById("osform");
		
		docForm.find('> font').remove();
		docForm.find('> p').remove();
        /*if(typeof docForm.html() !== 'undefined') {
			//target.innerHTML = docForm.html();
			//console.log(docForm.html());
			target.html(docForm.html());
			}*/
		
		var $newForm = $(target).find('form');
		$newForm.removeAttr('onsubmit');
		$newForm.attr('target', 'Stellen');
		
		// catch submit event
		$newForm.submit(function( event ) {
		
			$ifr.unbind();
			$ifr.load(function(){
				$(this).slideDown();
			})
		
		
			//$ifr.css('height','400px');
			 /*
			  // Stop form from submitting normally
			  event.preventDefault();
			 
			  // Get some values from elements on the page:
			  var $form = $( this ),
				term = $form.find( "input[name='s']" ).val(),
				url = $form.attr( "action" );
			 
			  // Send the data using post
			  var posting = $.post( url, { s: term } );
			 
			  // Put the results in a div
			  posting.done(function( data ) {
				var content = $( data ).find( "#content" );
				$( "#searchResults" ).empty().append( content );
			  });
			  */
		});
		
    });
	
	// run if a tab-number came from hash
	if($active.length > 0){
		$active.trigger('click')
	}
	setTimeout(function(){
	$(':checkbox').change(function(){
		$(this).parent().toggleClass('checked');
	})},1000);
	
	var $emailLinkJ = $('a.js-email').eq(0),
		$emailLinkH = $('a.js-email').eq(1),
		textj = $emailLinkJ.text().replace('(at)', '@').replace('-ch', '.ch'),
		texth = $emailLinkH.text().replace('(at)', '@').replace('-ch', '.ch');
		
	$emailLinkJ.text(textj);
	$emailLinkJ.attr('href',textj);
	$emailLinkH.text(texth);
	$emailLinkH.attr('href',texth);
	
})

/*	
$postform.on('submit', function(e){
	
	console.log(e);
	console.log($(this).serialize());
	
	e.preventDefault();
	
})*/

