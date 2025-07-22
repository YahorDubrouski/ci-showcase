## Project Structure
```aiignore
universal-ci-showcase/
├── app/                   # App code (minimal, testable)
│   └── main.py            # Flask app (Python)
│   └── test_main.py       # Unit tests (pytest)
├── .github/
│   └── workflows/
│       └── ci.yml         # GitHub Actions pipeline
├── .gitlab-ci.yml         # GitLab CI config
├── README.md              # Project purpose and CI explanation
├── requirements.txt       # Python deps
```
