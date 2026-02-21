# StudyBase

A professional, minimalist repository of specialized techniques across academic fields. Powered by **Jekyll** and **Git Metadata**.

## Features
- **Automated Metadata**: Creation and modification dates pulled directly from Git history.
- **Data-Driven**: Navigation and subject listing managed via SASS and Data files.
- **MathJax Ready**: Full support for complex LaTeX expressions.

## Getting Started
1. Install dependencies: `bundle install`
2. Run locally: `bundle exec jekyll serve`
   - *Note: Because of GitHub Pages hosting, this repository uses `baseurl: "/StudyBase"`. You must access the local site at `http://localhost:4000/StudyBase/` (with the trailing slash) to avoid 404 errors.*
3. **Alternative Local Development (Recommended):**
   - Run the server with an empty baseurl: `bundle exec jekyll serve --baseurl=""`
   - View at: `http://localhost:4000/`

## Architecture
- `_sass/`: Modular CSS components.
- `_data/`: Configuration for navigation and subjects.
- `_plugins/`: Custom Ruby hooks for Git and site automation.