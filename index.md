---
layout: default
title: Home
---
<head>
    <meta http-equiv="refresh" content="3; url=https://leoustc.com" />
    <script>
        var timeLeft = 3;
        var elem = document.getElementById('countdown');
        
        var timerId = setInterval(countdown, 1000);
        
        function countdown() {
            if (timeLeft == 0) {
                clearTimeout(timerId);
                window.location.href = "https://leoustc.com";
            } else {
                elem.innerHTML = timeLeft + ' seconds';
                timeLeft--;
            }
        }
    </script>
</head>

<div style="text-align: center; padding: 20px;">
    <h2>Redirecting to leoustc.com in <span id="countdown">3 seconds</span></h2>
    <p>If you are not redirected automatically, please <a href="https://leoustc.com">click here</a>.</p>
</div>

<!-- Keeping original content as fallback -->
<div style="display: none">
// ...existing code...
</div>