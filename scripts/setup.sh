#!/bin/bash
# SOC L1 Detection Lab - Setup Script

echo "🔴 SOC L1 Detection Lab - Quick Start"
echo "===================================="

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 is not installed. Please install Python3."
    exit 1
fi

echo "✅ Python3 found"

# Install Python dependencies
echo ""
echo "📦 Installing Python dependencies..."
pip install elasticsearch --quiet

# Make script executable
chmod +x scripts/generate_test_data.py

echo "✅ Dependencies installed"

# Run test data generator
echo ""
echo "🔄 Generating test data..."
python3 scripts/generate_test_data.py

echo ""
echo "===================================="
echo "✅ SETUP COMPLETE!"
echo "===================================="
echo ""
echo "📊 Next steps:"
echo "  1. Open Grafana: http://localhost:3000"
echo "  2. Go to Dashboards"
echo "  3. View the imported dashboards"
echo ""
echo "🎯 Dashboards available:"
echo "  - Threat Overview Dashboard"
echo "  - Log Analysis Dashboard"
echo "  - Incident Response Dashboard"
echo "  - MITRE ATT&CK Dashboard"
echo "  - System Performance Dashboard"
