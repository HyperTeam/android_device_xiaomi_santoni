#!/vendor/bin/sh

# grep the modem partition for baseband version and set it
setprop gsm.version.baseband `strings /firmware/image/modem.b12| grep "MPSS.TA.*_V" | head -1`
