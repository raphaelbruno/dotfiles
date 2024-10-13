#!/usr/bin/env bash

check_battery() {
  local enable_battery=false
  local battery_charging=false
  local percentage="$(cat /sys/class/power_supply/*/capacity | head -1)"
  local icons=("󰁻" "󰁼" "󰁾" "󰂀" "󰂂" "󰁹")
  local index=$(($percentage / 20))

  # Check availability
  for battery in /sys/class/power_supply/*BAT*; do
    if [[ -f "$battery/uevent" ]]; then
      enable_battery=true
      if [[ $(cat /sys/class/power_supply/*/status | head -1) == "Charging" ]]; then
        battery_charging=true
      fi
      break
    fi
  done

  # Output
  if [[ $enable_battery == true ]]; then
    echo -n "$percentage%"
    if [[ $battery_charging == true ]]; then
      echo -n " 󰂄"
    else
      echo -n " ${icons[$index]}"
    fi
  fi

  echo ''
}

check_battery
