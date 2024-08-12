#!/bin/bash

# Project Information
echo "------------------------------"
echo "Project Information"
echo "------------------------------"
echo "Project Name: My ML Project"
echo "Description: A brief description of what your machine learning project does."
echo "Repository URL: https://github.com/username/repo-name"
echo "Author: Your Name"
echo "Date: $(date)"
echo ""

# System Information
echo "------------------------------"
echo "System Information"
echo "------------------------------"
echo "Operating System: $(lsb_release -d | cut -f2-)"
echo "Kernel Version: $(uname -r)"
echo "Architecture: $(uname -m)"
echo "Uptime: $(uptime -p)"
echo ""

# Installed Packages and Versions
echo "------------------------------"
echo "Installed Packages and Versions"
echo "------------------------------"
echo "List of installed packages:"
dpkg --list
echo ""

# Python Environment Details
echo "------------------------------"
echo "Python Environment Details"
echo "------------------------------"
echo "Python Version: $(python3 --version)"
echo "Pip Version: $(pip3 --version)"
echo "Installed Python Packages:"
pip3 list
echo ""

# Optional: If using a virtual environment, list its details
if [ -d "venv" ]; then
    echo "Virtual Environment Details"
    echo "------------------------------"
    echo "Virtual Environment Directory: $(pwd)/venv"
    echo "Packages in Virtual Environment:"
    source venv/bin/activate
    pip list
    deactivate
else
    echo "No virtual environment found."
fi

# Additional Information (e.g., custom setup or dependencies)
echo "------------------------------"
echo "Additional Information"
echo "------------------------------"
echo "Any additional setup or dependencies specific to your project can be listed here."
echo ""

echo "End of Project Info"
