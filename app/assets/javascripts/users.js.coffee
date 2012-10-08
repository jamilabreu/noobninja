jQuery ->
	$('#info-button-noob, #welcome-arrow-down, #sensei-arrow-up').on 'click', (e) ->
		e.preventDefault()
		$('html, body').animate({scrollTop: $("#noob").offset().top},'slow')
		$('#noob').height($(window).innerHeight())

	$('#info-button-sensei, #noob-arrow-down').on 'click', (e) ->
		e.preventDefault()
		$('html, body').animate({scrollTop: $("#sensei").offset().top},'slow')
		$('#sensei').height($(window).innerHeight())

	$('#noob-arrow-up').on 'click', (e) ->
		e.preventDefault()
		$('html, body').animate({scrollTop: $("#header").offset().top},'slow')
		
	$('.field-skills').watermark('Share your technical background -<br/>please include github, dribbble,<br/>and/or other relevant URLs', {fallback: false})