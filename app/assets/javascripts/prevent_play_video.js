//prevent playing background video when device is mobile

function detectmob() { 

    if( navigator.userAgent.match(/Android/i)
    || navigator.userAgent.match(/webOS/i)
    || navigator.userAgent.match(/iPhone/i)
    || navigator.userAgent.match(/iPad/i)
    || navigator.userAgent.match(/iPod/i)
    || navigator.userAgent.match(/BlackBerry/i)
    || navigator.userAgent.match(/Windows Phone/i)
    ){

        // If mobile, then we do all this

    }
    else {

        // If not mobile then do this                    
		document.getElementById("background-video").style.autoplay = "autoplay";

    }
} // detectmob