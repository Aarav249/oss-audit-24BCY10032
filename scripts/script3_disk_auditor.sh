#!/usr/bin/env python3
import subprocess

print("="*40)
print(" Disk Auditor Report")
print("="*40)

print("Disk Usage:")
print(subprocess.getoutput("df -h"))

print("-"*40)

print("Current Directory Size:")
print(subprocess.getoutput("du -sh ."))

print("-"*40)

print("Files and Permissions:")
print(subprocess.getoutput("ls"))

print("="*40)