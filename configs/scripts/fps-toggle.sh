#!/usr/bin/env bash


config_main="$HOME/.config/hypr/configs/monitors/main-monitor.conf"
config_60="$HOME/.config/hypr/configs/monitors/FPS/60fps.conf"
config_90="$HOME/.config/hypr/configs/monitors/FPS/90fps.conf"
config_120="$HOME/.config/hypr/configs/monitors/FPS/120fps.conf"
config_144="$HOME/.config/hypr/configs/monitors/FPS/144fps.conf"
config_165="$HOME/.config/hypr/configs/monitors/FPS/165fps.conf"
config_240="$HOME/.config/hypr/configs/monitors/FPS/240fps.conf"
main=$(cat $config_main)
fps_60=$(cat $config_60)
fps_90=$(cat $config_90)
fps_120=$(cat $config_120)
fps_144=$(cat $config_144)
fps_165=$(cat $config_165)
fps_240=$(cat $config_240)
if [[ "$main" == "$fps_240" ]]; then
	cp "$config_60" "$config_main"
	notify-send "60fps mode activated!"
fi
if [[ "$main" == "$fps_60" ]]; then
	cp "$config_90" "$config_main"
	notify-send "90fps mode activated!"
fi
if [[ "$main" == "$fps_90" ]]; then
	cp "$config_120" "$config_main"
	notify-send "120fps mode activated!"
fi
if [[ "$main" == "$fps_120" ]]; then
	cp "$config_144" "$config_main"
	notify-send "144fps mode activated!"
fi
if [[ "$main" == "$fps_144" ]]; then
	cp "$config_165" "$config_main"
	notify-send "165fps mode activated!"
fi
if [[ "$main" == "$fps_165" ]]; then
	cp "$config_240" "$config_main"
	notify-send "240fps mode activated!"
fi
