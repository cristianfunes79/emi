#! /bin/zsh

# this script must be sourced from repo root and sourced from zsh
# source scripts/set_environment.sh

# Exports ------------------------------------------------------------------------------------
export PROJECT_ROOT=$PWD
export ESP8266_IDF=$PROJECT_ROOT/third_party/esp8266_idf/ESP8266_RTOS_SDK
export ESP8266_TOOLCHAIN=$PROJECT_ROOT/third_party/esp8266_idf/toolchain/xtensa-lx106-elf/bin
export ESP32_IDF=$PROJECT_ROOT/third_party/esp32_idf/esp-idf
export PATH="$ESP8266_TOOLCHAIN":$PATH
export IDF_PATH=$ESP32_IDF

# Includes ------------------------------------------------------------------------------------
source $PROJECT_ROOT/scripts/bash_utils.sh
source $ESP32_IDF/export.sh

# Report --------------------------------------------------------------------------------------
print "\n+------------------------------${COLOUR_BLUE}Project Environment:${COLOUR_NC}------------------------------+\n"
print "${COLOUR_GREEN}PROJECT_ROOT:${COLOUR_NC} $PROJECT_ROOT"
print "${COLOUR_GREEN}ESP8266_IDF:${COLOUR_NC}  $ESP8266_IDF"
print "${COLOUR_GREEN}ESP32_IDF:${COLOUR_NC}    $ESP32_IDF"
print "${COLOUR_GREEN}IDF_PATH:${COLOUR_NC}     $ESP32_IDF"
print "${COLOUR_GREEN}ESP8266 TC:${COLOUR_NC}   $ESP8266_TOOLCHAIN"

print "\n${COLOUR_YELLOW}NOTE: IDF_PATH is set to esp32 by default to source export.sh for esp32. To build esp8266, IDF_PATH is set in makefile automatically.${COLOUR_NC}"
print "\n+--------------------------------------------------------------------------------+\n"
