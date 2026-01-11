#!/bin/bash

# Project 2: Math Calculator - Local Development Setup
# W3 Server-Side Development & Authentication

echo "🧮 Math Calculator - SvelteKit Project Setup"
echo "============================================="
echo ""

# Check if script is run from correct directory
if [ ! -f "package.json" ]; then
    echo "❌ Error: Please run this script from the project-02-calculator directory"
    echo "   Expected: cd Templates/project-02-calculator && ./setup.sh"
    exit 1
fi

echo "🎓 DISCOVERY LEARNING OBJECTIVES:"
echo "   • Master Svelte's reactivity system"
echo "   • Implement two-way data binding"
echo "   • Handle user input and validation"
echo "   • Create interactive calculators"
echo ""

echo "📚 Key Concepts (Lesson 8):"
echo "   → Reactive declarations ($:)"
echo "   → Two-way binding with bind:value"
echo "   → Event handling in Svelte"
echo "   → State management patterns"
echo ""

# Check for node_modules
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    echo ""
    npm install

    if [ $? -ne 0 ]; then
        echo "❌ npm install failed"
        echo "   Try running: npm install --legacy-peer-deps"
        exit 1
    fi

    echo "✅ Dependencies installed successfully!"
    echo ""
else
    echo "✅ Dependencies already installed"
    echo ""
fi

echo "📁 Project Structure:"
echo "   • Entry point: src/routes/+page.svelte"
echo "   • Calculator logic: Implement reactive calculations"
echo "   • Styles: Bootstrap 5 pre-configured"
echo ""

echo "🚀 Starting SvelteKit development server..."
echo ""
echo "   → Server will start at: http://localhost:5173"
echo "   → Press Ctrl+C to stop the server"
echo ""
echo "============================================="
echo ""

# Start the development server
npm run dev
