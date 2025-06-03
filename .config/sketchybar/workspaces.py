#!/usr/bin/env python3

import sys
import subprocess

cmds = ["aerospace", "list-workspaces", "--all"]
result = subprocess.run(cmds, capture_output=True, check=True, text=True)
workspaces = result.stdout.split()

_, *order = sys.argv

for s in order:
    print(s)

for s in [s for s in workspaces if s not in order]:
    print(s)
