#!/usr/bin/env python3
import os

log_file = "/var/log/syslog"

print("="*40)
print(" Log Analyzer Report")
print("="*40)

if not os.path.exists(log_file):
    print("Log file not found!")
    exit()

keyword = input("Enter keyword: ")

matches = []

with open(log_file, "r", errors="ignore") as f:
    for line in f:
        if keyword.lower() in line.lower():
            matches.append(line.strip())

print("-"*40)
print(f"Total matches: {len(matches)}")

print("-"*40)
print("Last 5 matching lines:")
for line in matches[-5:]:
    print(line)

print("="*40)
