# Contributing to DeepFake Detection System

Thank you for your interest in contributing to this project! This guide will help you get started with adding your local project files and contributing to the repository.

## 📋 Quick Start

1. **Adding Your Project**: See [PROJECT_SETUP.md](PROJECT_SETUP.md) for detailed instructions on how to add your local DeepFake detection project to this repository.

2. **Run Setup Script**: Use our automated setup script:
   ```bash
   ./scripts/setup.sh
   ```

3. **Follow the Structure**: Organize your code according to our [recommended structure](#project-structure).

## 🏗️ Project Structure

```
DeepFake/
├── src/                    # Main source code
│   ├── models/            # Model architectures
│   ├── data/              # Data processing
│   ├── training/          # Training scripts
│   ├── inference/         # Inference code
│   └── utils/             # Utilities
├── models/                # Saved model weights
├── data/                  # Datasets and samples
├── notebooks/             # Jupyter notebooks
├── tests/                 # Unit tests
├── docs/                  # Documentation
├── scripts/               # Setup and utility scripts
└── configs/               # Configuration files
```

## 🔧 Development Guidelines

### Code Style
- Follow PEP 8 for Python code
- Use type hints where appropriate
- Add docstrings to functions and classes
- Keep functions small and focused

### Commit Messages
- Use clear, descriptive commit messages
- Start with a verb (Add, Fix, Update, etc.)
- Reference issues when applicable

### Testing
- Add tests for new functionality
- Ensure existing tests pass
- Test with different data formats and edge cases

## 🤝 How to Contribute

### Adding Your Project
1. Fork the repository (if external contributor)
2. Follow [PROJECT_SETUP.md](PROJECT_SETUP.md) to add your files
3. Test your code with the provided structure
4. Submit a pull request with a clear description

### Types of Contributions Welcome
- **New Models**: Novel architectures for deepfake detection
- **Datasets**: Sample data and preprocessing scripts
- **Improvements**: Performance optimizations and bug fixes
- **Documentation**: Better explanations and tutorials
- **Testing**: Unit tests and integration tests

## 📝 Submission Checklist

Before submitting your contribution:

- [ ] Code follows the project structure
- [ ] Added appropriate .gitignore entries for your files
- [ ] Large files use Git LFS
- [ ] Updated requirements.txt if needed
- [ ] Added documentation/comments
- [ ] Tested your code works
- [ ] Updated README if adding major features

## 🆘 Need Help?

- Check [PROJECT_SETUP.md](PROJECT_SETUP.md) for technical setup help
- Look at existing code for examples
- Open an issue for questions or problems
- Reach out to maintainers for guidance

## 🙏 Recognition

All contributors will be acknowledged in the project. We appreciate:
- Code contributions
- Bug reports and fixes
- Documentation improvements
- Feature suggestions
- Testing and validation

Thank you for helping make this DeepFake detection system better!