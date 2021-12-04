#! /bin/bash

# this script must be sourced from repo root
# pwd -> /home/user/emi
# source scripts/set_environment.sh

export PROJECT_ROOT=$PWD
export ESP8266_IDF=$PROJECT_ROOT/third_party/esp8266_idf
export ESP8266_TOOLCHAIN=$PROJECT_ROOT/third_party/esp8266_idf/toolchain/xtensa-lx106-elf/bin
export ESP32_IDF=$PROJECT_ROOT/third_party/esp32_idf
export PATH="$ESP8266_TOOLCHAIN":$PATH

source $PROJECT_ROOT/scripts/bash_utils.sh

print "\n+------------------------------${COLOUR_BLUE}Project Environment:${COLOUR_NC}------------------------------+\n"
print "${COLOUR_GREEN}PROJECT_ROOT:${COLOUR_NC} $PROJECT_ROOT"
print "${COLOUR_GREEN}ESP8266_IDF:${COLOUR_NC}  $ESP8266_IDF"
print "${COLOUR_GREEN}ESP32_IDF:${COLOUR_NC}    $ESP32_IDF"
print "${COLOUR_GREEN}ESP8266 TOOLCHAIN:${COLOUR_NC}  $ESP8266_TOOLCHAIN"
print "\n+--------------------------------------------------------------------------------+\n"
