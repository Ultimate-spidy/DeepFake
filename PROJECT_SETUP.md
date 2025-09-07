# Adding Your Local Project to this DeepFake Repository

This guide explains how to add your local DeepFake detection project files to this repository using different methods.

## Table of Contents
1. [Prerequisites](#prerequisites)
2. [Method 1: Using Git Command Line](#method-1-using-git-command-line)
3. [Method 2: Using GitHub Web Interface](#method-2-using-github-web-interface)
4. [Method 3: Using GitHub Desktop](#method-3-using-github-desktop)
5. [Recommended Project Structure](#recommended-project-structure)
6. [Setting up .gitignore](#setting-up-gitignore)
7. [Handling Large Files](#handling-large-files)
8. [Best Practices](#best-practices)
9. [Troubleshooting](#troubleshooting)

## Prerequisites

Before adding your project files, ensure you have:
- Git installed on your local machine
- A GitHub account with access to this repository
- Your local project folder ready

## Method 1: Using Git Command Line

### Step 1: Clone the Repository
```bash
git clone https://github.com/Ultimate-spidy/DeepFake.git
cd DeepFake
```

### Step 2: Copy Your Project Files
Copy your local project files into the cloned repository directory:

```bash
# Navigate to your local project directory
cd /path/to/your/local/project

# Copy all files to the cloned repository (adjust paths as needed)
cp -r * /path/to/DeepFake/

# Or use rsync for more control
rsync -av --exclude='.git' /path/to/your/local/project/ /path/to/DeepFake/
```

### Step 3: Add and Commit Files
```bash
cd /path/to/DeepFake
git add .
git commit -m "Add initial project files from local storage"
git push origin main
```

## Method 2: Using GitHub Web Interface

### For Small Files (< 25MB each)
1. Navigate to the repository on GitHub: https://github.com/Ultimate-spidy/DeepFake
2. Click "Add file" → "Upload files"
3. Drag and drop your files or click "choose your files"
4. Add a commit message describing your changes
5. Click "Commit changes"

### Limitations
- Maximum file size: 25MB per file
- Maximum total upload: 100 files at once
- Not suitable for large model files or datasets

## Method 3: Using GitHub Desktop

### Step 1: Install GitHub Desktop
Download and install [GitHub Desktop](https://desktop.github.com/)

### Step 2: Clone Repository
1. Open GitHub Desktop
2. Click "Clone a repository from the Internet"
3. Enter: `Ultimate-spidy/DeepFake`
4. Choose local path and click "Clone"

### Step 3: Add Your Files
1. Copy your project files to the local repository folder
2. GitHub Desktop will automatically detect changes
3. Review changes in the left panel
4. Add a commit message and click "Commit to main"
5. Click "Push origin" to upload changes

## Recommended Project Structure

Organize your DeepFake detection project using this structure:

```
DeepFake/
├── README.md
├── PROJECT_SETUP.md
├── requirements.txt
├── .gitignore
├── src/                    # Source code
│   ├── __init__.py
│   ├── models/            # Model definitions
│   ├── data/              # Data processing modules
│   ├── training/          # Training scripts
│   ├── inference/         # Inference/prediction scripts
│   └── utils/             # Utility functions
├── models/                # Pre-trained model weights
│   ├── .gitkeep
│   └── README.md         # Model descriptions
├── data/                  # Dataset samples (small files only)
│   ├── samples/
│   └── README.md         # Data descriptions
├── notebooks/             # Jupyter notebooks
├── tests/                 # Unit tests
├── docs/                  # Documentation
├── scripts/               # Setup and utility scripts
└── configs/               # Configuration files
```

## Setting up .gitignore

Create a `.gitignore` file to exclude unnecessary files:

```gitignore
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
*.egg-info/
.installed.cfg
*.egg

# Virtual environments
venv/
env/
ENV/
.venv/

# IDEs
.vscode/
.idea/
*.swp
*.swo
*~

# OS
.DS_Store
Thumbs.db

# Large files (use Git LFS instead)
*.h5
*.hdf5
*.pkl
*.pth
*.pt
*.ckpt
*.pb
*.onnx
*.tflite

# Data files (usually too large for Git)
*.mp4
*.avi
*.mov
*.mkv
*.jpg
*.jpeg
*.png
*.tiff
*.bmp
data/datasets/
data/raw/
data/processed/

# Logs and outputs
logs/
outputs/
*.log

# Jupyter Notebook checkpoints
.ipynb_checkpoints/

# PyTorch
*.pth
*.pt

# TensorFlow
*.pb
saved_model/

# MLflow
mlruns/
```

## Handling Large Files

For files larger than 100MB, use Git Large File Storage (LFS):

### Install Git LFS
```bash
git lfs install
```

### Track Large Files
```bash
# Track specific file types
git lfs track "*.h5"
git lfs track "*.pth"
git lfs track "*.mp4"

# Track specific directories
git lfs track "models/**"
git lfs track "data/raw/**"
```

### Add and Commit
```bash
git add .gitattributes
git add your-large-file.h5
git commit -m "Add large model files with LFS"
git push origin main
```

## Best Practices

### 1. Start Small
- Add essential code files first
- Gradually add larger assets
- Test the build/run process after each addition

### 2. Documentation
- Update README.md with setup instructions
- Document model architectures and training procedures
- Include usage examples

### 3. Dependencies
Create a `requirements.txt` file:
```bash
# In your project directory
pip freeze > requirements.txt
```

### 4. Configuration
- Use configuration files for hyperparameters
- Keep sensitive information in environment variables
- Provide example configuration files

### 5. Testing
- Include unit tests for your code
- Add integration tests for the full pipeline
- Provide sample data for testing

## Troubleshooting

### Common Issues and Solutions

#### "File too large" error
**Problem**: Files larger than 100MB are rejected by GitHub
**Solution**: Use Git LFS or store large files externally (Google Drive, AWS S3)

#### Permission denied
**Problem**: Cannot push to repository
**Solution**: 
- Check if you have write access to the repository
- Verify your GitHub authentication
- Use `git remote -v` to check repository URL

#### Merge conflicts
**Problem**: Conflicts when pushing changes
**Solution**:
```bash
git pull origin main
# Resolve conflicts manually
git add .
git commit -m "Resolve merge conflicts"
git push origin main
```

#### Large number of files
**Problem**: Too many files to upload via web interface
**Solution**: Use Git command line or GitHub Desktop

#### .DS_Store or cache files included
**Problem**: Unwanted system files in repository
**Solution**:
```bash
# Remove from repository
git rm -r --cached .DS_Store
git rm -r --cached __pycache__

# Add to .gitignore to prevent future inclusion
echo ".DS_Store" >> .gitignore
echo "__pycache__/" >> .gitignore

git add .gitignore
git commit -m "Remove system files and update .gitignore"
```

## Need Help?

If you encounter issues:
1. Check the [GitHub documentation](https://docs.github.com/)
2. Search existing issues in this repository
3. Create a new issue with detailed description of the problem
4. Include error messages and steps you've tried

---

**Note**: Always backup your local project before making changes, and test your setup after uploading to ensure everything works correctly.