#!/bin/sh

. /lib/ramips.sh

tabla=$(ramips_board_name)

_MorseMain () {
    echo morse > /sys/class/leds/$tabla\:amber\:system/trigger
    echo 120 > /sys/class/leds/$tabla\:amber\:system/delay
    echo $* > /sys/class/leds/$tabla\:amber\:system/message
}

_MorseMain $*

exit