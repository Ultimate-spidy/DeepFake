#!/bin/bash

# DeepFake Project Setup Script
echo "🚀 Setting up DeepFake detection project..."

# Create directory structure if not exists
echo "📁 Creating directory structure..."
mkdir -p src/{models,data,training,inference,utils}
mkdir -p models data/{samples,raw,processed} notebooks tests docs scripts configs

# Create __init__.py files for Python packages
echo "🐍 Setting up Python packages..."
touch src/__init__.py
touch src/models/__init__.py
touch src/data/__init__.py
touch src/training/__init__.py
touch src/inference/__init__.py
touch src/utils/__init__.py

# Check if requirements.txt has actual dependencies
if [ -f "requirements.txt" ] && [ -s "requirements.txt" ] && grep -q "^[^#]" requirements.txt; then
    echo "📦 Installing dependencies..."
    pip install -r requirements.txt
else
    echo "ℹ️  No dependencies found in requirements.txt. Add your requirements and run 'pip install -r requirements.txt'"
fi

# Check if Git LFS is installed
if command -v git-lfs &> /dev/null; then
    echo "📂 Git LFS is available for large files"
    git lfs install 2>/dev/null || true
else
    echo "⚠️  Consider installing Git LFS for handling large model files"
    echo "   Visit: https://git-lfs.github.io/"
fi

echo "✅ Project setup complete!"
echo ""
echo "Next steps:"
echo "1. Add your source code to the src/ directory"
echo "2. Place model weights in the models/ directory (use Git LFS for large files)"
echo "3. Add sample data to data/samples/"
echo "4. Update requirements.txt with your dependencies"
echo "5. See PROJECT_SETUP.md for detailed guidance"