#!/bin/bash
# Script to compile and run the Library Management System project on macOS

mkdir -p out

# Compile the java sources
echo "Compiling..."
javac -cp "lib/*" src/*.java -d out

if [ $? -eq 0 ]; then
    echo "Compilation successful. Running..."
    # Run the main class
    java -cp "out:lib/*" Loading1
else
    echo "Compilation failed."
fi
