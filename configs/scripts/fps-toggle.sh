#!/usr/bin/env bash


config_main="$HOME/.config/hypr/configs/monitors/main-monitor.conf"
config_60="$HOME/.config/hypr/configs/monitors/FPS/60fps.conf"
config_120="$HOME/.config/hypr/configs/monitors/FPS/120fps.conf"
config_240="$HOME/.config/hypr/configs/monitors/FPS/240fps.conf"
main=$(cat $config_main)
fps_60=$(cat $config_60)
fps_120=$(cat $config_120)
fps_240=$(cat $config_240)

if [[ "$main" == "$fps_240" ]]; then
	cp "$config_60" "$config_main"
	notify-send "60fps mode activated!"
fi
if [[ "$main" == "$fps_60" ]]; then
	cp "$config_120" "$config_main"
	notify-send "120fps mode activated!"
fi
if [[ "$main" == "$fps_120" ]]; then
	cp "$config_240" "$config_main"
	notify-send "240fps mode activated!"
fi
