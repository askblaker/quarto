A qarto builder image with batteries included.

Used to build and verify quarto repos in CI.

## Changelog

All notable changes to this project will be documented in this file.

---

### **quarto-1.8.24_tinytex-2-2023-06-22_python-3.12-trixie_graphviz-2.42.4-3** — Install Graphviz and pin base image (2026-09-15)
- **Added Graphviz (`dot`) for diagram rendering, pinned to 2.42.4-3**
- **Pinned base image to python:3.12-trixie (was the floating python:3.12 tag) so the Graphviz version pin can't silently drift out from under it**

---

### **quarto-1.8.24_tinytex-2-2023-06-22_python-3.12** — Upgrade base image to Python 3.12 (2026-09-15)
- **Bumped base image from python:3.10 to python:3.12**

---

### **quarto-1.8.24_tinytex-2-2023-06-22** — Pin quarto and tinytex (2024-09-19)
- Added quarto and tinytex files to release and using those for a deterministic build
---

### **0.1.0** — Update Quarto version (2024-09-19)
- **Bumped Quarto from 1.3.336 to 1.8.24**
---

### **0.0.1** — Initial commit (2024-09-17)
- **Initial release**
- Project scaffolding

---