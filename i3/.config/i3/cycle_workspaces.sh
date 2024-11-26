#!/bin/bash

current=$(i3-msg -t get_workspaces | jq '.[] | select(.focused).num')
next=$((current + 1))
total=$(i3-msg -t get_workspaces | jq '.[].num' | wc -l)

if [ "$next" -gt "$total" ]; then
    next=1
fi

i3-msg workspace number "$next"
