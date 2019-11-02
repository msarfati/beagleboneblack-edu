var b = require('bonescript');
var LED3Pin = "USR3";

b.pinMode(LED3Pin, b.OUTPUT);
var isOn = false;
setInterval(toggleLED, 500);

function toggleLED() {
    isOn = !isOn;
    if (isOn) {
        b.digitalWrite(LED3Pin, 1);
    } else {
        b.digitalWrite(LED3Pin, 0);
    }
    console.log('LED3 On is: ' + isOn);
}
