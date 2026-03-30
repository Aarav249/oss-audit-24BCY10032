#!/usr/bin/env python3
import datetime

name = input("Enter your name: ")
project = input("Enter project title: ")
software = input("Enter software name: ")

file_name = f"manifesto_{name}.txt"

with open(file_name, "w") as f:
    f.write("="*40 + "\n")
    f.write(" Open Source Audit Manifest\n")
    f.write("="*40 + "\n\n")

    f.write(f"Name        : {name}\n")
    f.write(f"Project     : {project}\n")
    f.write(f"Software    : {software}\n\n")

    f.write("-"*40 + "\n")

    f.write("This document is generated as part of the OSS Audit Project.\n")
    f.write(f"{software} is an open-source tool.\n\n")

    f.write(f"Generated on: {datetime.datetime.now()}\n")

print(f"File created successfully: {file_name}")