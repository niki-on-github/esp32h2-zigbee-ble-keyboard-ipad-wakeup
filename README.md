# ESP32-H2 Zigbee BLE Keyboard iPad Wakeup

Wake up iPad (Dashboard) via ble keyboard press event controlled via zigbee. Code pices were copied from various github repositories to get the desired result.

## Problem

Apples Developer are to stupid to write a propper operating system for the iPad. The wakeup via notification in guided access mode for my home assistant dashboard where working only 80% of the time. Therefore i crete this woraround to wakeup the iPad screen via fake BLE Keyboard...


## Build & Deploy

```sh
n develop
idf.py build
idf.py -p /dev/ttyACM0 flash
```

Or compile for `ESP32‑C6` via `idf.py set-target esp32c6`
