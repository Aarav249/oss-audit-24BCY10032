#!/usr/bin/env python3
import platform, datetime, getpass

print("="*40)
print(" Open Source Audit - Aarav")
print(" Software: Python")
print("="*40)

print(f"Distro   : {platform.platform()}")
print(f"Kernel   : {platform.release()}")
print(f"User     : {getpass.getuser()}")
print(f"Date     : {datetime.datetime.now()}")

print("="*40)