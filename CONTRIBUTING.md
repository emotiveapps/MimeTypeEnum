# Contributing

Thank you for your interest in contributing to MimeTypeEnum!

## Getting Started

1. Fork the repository
2. Clone your fork: `git clone https://github.com/YOUR_USERNAME/MimeTypeEnum.git`
3. Create a branch: `git checkout -b my-feature`
4. Make your changes
5. Run tests: `swift test`
6. Run linter: `make lint`
7. Format code: `make format`
8. Commit your changes: `git commit -m "Add my feature"`
9. Push to your fork: `git push origin my-feature`
10. Open a Pull Request

## Development

### Requirements

- Swift 5.9+
- macOS 12+ / iOS 15+ / tvOS 15+ / watchOS 8+

### Building

```bash
swift build
```

### Testing

```bash
swift test
```

### Linting & Formatting

```bash
make lint
make format
```

## Adding New MIME Types

When adding new MIME types:

1. Add the case to the `MimeType` enum with the correct raw value
2. Add the file extension mapping in the `extensions` property
3. Add a test case to verify the mapping
4. Update the README if adding a new category

## Guidelines

- Follow existing code style
- Add tests for new functionality
- Keep commits focused and atomic
- Write clear commit messages

## Reporting Issues

- Use GitHub Issues for bug reports and feature requests
- Include Swift version and platform

## License

By contributing, you agree that your contributions will be licensed under the MIT License.
