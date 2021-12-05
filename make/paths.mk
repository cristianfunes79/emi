ifeq ($(ESP_TARGET), esp8266)
	export IDF_PATH=$(ESP8266_IDF)
else ifeq ($(ESP_TARGET), esp32)
	export IDF_PATH=$(ESP32_IDF)
endif
