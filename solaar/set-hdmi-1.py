#!/usr/bin/env python3
import subprocess

subprocess.run(['sudo', 'ddcutil', '--display', '1', 'setvcp', '60', '0x11'])
print('Done');
