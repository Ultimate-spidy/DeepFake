# Data Directory

This directory contains dataset samples and processed data.

## Structure
- `samples/` - Small sample files for testing and demonstration
- `raw/` - Raw, unprocessed data (use .gitignore for large files)
- `processed/` - Preprocessed data ready for training

## Important Notes
- Do NOT commit large datasets to Git
- Use .gitignore to exclude large data files
- Consider using data version control tools like DVC
- Provide data download scripts in the scripts/ directory

## Sample Data
Include small sample files (< 1MB each) to help users test the system without downloading large datasets.