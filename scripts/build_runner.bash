#!/usr/bin/env bash

dart run build_runner build --delete-conflicting-outputs && bash "$(dirname "$0")"/format.bash
