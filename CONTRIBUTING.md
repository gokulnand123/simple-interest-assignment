# Contributing Guidelines

Thank you for considering contributing to this project!

## How to Contribute
1. Fork the repository
2. Create a new branch (`git checkout -b feature-name`)
3. Make your changes
4. Commit with clear messages (`git commit -m "feat: add new calculation"`)
5. Push to your fork (`git push origin feature-name`)
6. Open a Pull Request

## Coding Standards
- Use **ShellCheck** to lint scripts
- Ensure scripts are executable (`chmod +x`)
- Add comments for clarity

## Commit Message Style
Follow [Conventional Commits](https://www.conventionalcommits.org/):
- `feat:` for new features
- `fix:` for bug fixes
- `docs:` for documentation changes

## Testing
Run the script manually with sample inputs:
```bash
./simple-interest.sh 1000 5 2
