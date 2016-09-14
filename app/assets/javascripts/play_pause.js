$(function(){
	$('.btn-down-chack').click(function() {
		video = $('video');

		if(video[0].paused){
			video[0].play();
			$('#player_icon').removeClass('fa-play').addClass('fa-pause');
		}else{
			video[0].pause();		
			$('#player_icon').removeClass('fa-pause').addClass('fa-play');
		}		
	})
});

