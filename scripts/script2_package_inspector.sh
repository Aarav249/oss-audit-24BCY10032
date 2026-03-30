#!/usr/bin/env python3
import shutil, subprocess

package = "python3"

print("="*40)
print(f" Package Inspector - {package}")
print("="*40)

path = shutil.which(package)

if path:
    print("Status   : Installed ✅")
    print(f"Version  : {subprocess.getoutput('python3 --version')}")
    print(f"Location : {path}")
else:
    print("Status   : Not Installed ❌")

print("-"*40)
print("Package Manager Info:")
print(subprocess.getoutput("dpkg -l | grep python3 | head -5"))

print("="*40)