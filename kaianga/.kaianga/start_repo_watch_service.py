#!/user/bin/env/ python3

import subprocess
import toml

repos = toml.load("repos-to-watch.toml")

for repo in repos:
   

systemctl --user --now enable \
          gitwatch@$(systemd-escape "'-r url/to/repository' '-b branch' /path/to/folder").service
