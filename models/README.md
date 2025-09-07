# Models Directory

This directory contains pre-trained model weights and saved model files.

## Structure
- Place your trained model files here (.pth, .h5, .pkl, etc.)
- Organize by model type or experiment name
- Use subdirectories for different model versions

## Important Notes
- Large model files should use Git LFS (see PROJECT_SETUP.md)
- Include model descriptions and performance metrics
- Keep model configuration files alongside weights

## Example Structure
```
models/
├── deepfake_detector_v1.pth
├── face_detector/
│   ├── weights.pth
│   └── config.json
└── README.md
```