#!/bin/bash

check_network() {
  WIFI_CONNECTED="📶"
  WIFI_NO_INTERNET="🌐"
  ETHERNET_CONNECTED="🖧"
  DISCONNECTED="❌"
  
  # Check Ethernet connection
  if nmcli -t -f DEVICE,STATE dev | grep -q "^ethernet:connected"; then
    echo "$ETHERNET_CONNECTED Ethernet connected"
    return
  fi

  # Check Wi-Fi connection
  if nmcli -t -f RUNNING general | grep -q "running"; then
    if nmcli -t -f ACTIVE,SSID dev wifi | grep -q "^yes:"; then
      SSID=$(nmcli -t -f ACTIVE,SSID dev wifi | grep "^yes:" | cut -d':' -f2)

      # Check internet connectivity
      if ping -c 1 1.1.1.1 &> /dev/null; then
        echo "$WIFI_CONNECTED $SSID"
      else
        echo "$WIFI_NO_INTERNET $SSID"
      fi

      return
    fi
  fi

  echo "$DISCONNECTED Disconnected"
}

check_network
