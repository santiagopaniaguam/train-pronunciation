#!/bin/bash

# Simple deployment script for pronunciation practice app

echo "🚀 Starting deployment..."

# Check if Python is installed
if command -v python3 &> /dev/null; then
    PYTHON_CMD=python3
elif command -v python &> /dev/null; then
    PYTHON_CMD=python
else
    echo "❌ Python is not installed. Please install Python first."
    exit 1
fi

# Get the script's directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "📂 Serving files from: $SCRIPT_DIR"

# Start a simple HTTP server in the background
cd "$SCRIPT_DIR"
$PYTHON_CMD -m http.server 8000 &

# Give the server a moment to start
sleep 1

# Open the browser to the correct URL
echo "🌐 Opening browser at: http://localhost:8000"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

# The command to open Chrome depends on the operating system
case "$(uname -s)" in
    Linux*)
        # Command for Linux
        google-chrome http://localhost:8000 &
        ;;
    Darwin*)
        # Command for macOS
        open -a "Google Chrome" http://localhost:8000
        ;;
    CYGWIN*|MINGW*)
        # Command for Windows Git Bash / WSL
        start chrome http://localhost:8000
        ;;
    *)
        echo "⚠️ Unable to detect OS to open browser automatically."
        ;;
esac

# Wait for the background process to be terminated with Ctrl+C
wait

