# StudyBase Repository Architecture

This document explains the purpose of each folder and file in the StudyBase repository to help contributors understand the project structure.

## 📂 Core Directories

### `_data/`
- **Purpose**: Contains YAML files that store site data.
- **Usefulness**: Instead of hardcoding lists (like navigation links or subject names) in HTML, we put them here. This makes it easy to add a new subject or change a link in one place without touching multiple files.
  - `navigation.yml`: Defines the header links.
  - `subjects.yml`: Defines the tiles shown on the homepage.

### `_includes/`
- **Purpose**: Small, reusable HTML snippets.
- **Usefulness**: Keeps code DRY (Don't Repeat Yourself). Pieces like the `header.html`, `footer.html`, and `head.html` (metadata/scripts) are included in every layout.

### `_layouts/`
- **Purpose**: Page templates.
- **Usefulness**: Defines the skeleton for different types of pages.
  - `home.html`: Layout for the main landing page.
  - `page.html`: Standard layout for static content (like About).
  - `post.html`: Layout for individual topic notes.

### `_plugins/`
- **Purpose**: Custom Ruby code that extends Jekyll's functionality.
- **Usefulness**: 
  - `git_metadata.rb`: This is a powerful custom script that automatically talks to Git to find exactly when a file was first created ("Posted on") and last modified.

### `_sass/`
- **Purpose**: Modular CSS code.
- **Usefulness**: Instead of one massive CSS file, we break styles into small pieces:
  - `custom/variables.scss`: Stores colors (and Dark Mode logic).
  - `custom/layout.scss`: Controls the header and overall page structure.
  - `custom/components.scss`: Styles for cards, buttons, and badges.

### `assets/`
- **Purpose**: The "front-facing" files served to the browser.
- **Usefulness**: 
  - `css/style.scss`: The main stylesheet that imports all SASS modules.
  - `js/theme-toggle.js`: The logic that controls Switching between Light and Dark mode.

### `subjects/`
- **Purpose**: The actual knowledge repository.
- **Usefulness**: Organized by academic field (e.g., `math/`). Each folder inside contains an `index.md` file which is a specific topic or technique.

### `.github/workflows/`
- **Purpose**: Automation (GitHub Actions).
- **Usefulness**: Contains `jekyll-gh-pages.yml`, which handles the professional build and deployment process to GitHub Pages automatically every time you push code.

---

## 📄 Key Files

### `_config.yml`
- **Purpose**: The "Brain" of the site.
- **Usefulness**: Global settings like the site title, description, and which plugins are enabled.

### `index.md`
- **Purpose**: Your homepage content.
- **Usefulness**: Written in Markdown, it pulls data from `_data/subjects.yml` to display your beautiful subject grid.

### `Gemfile` & `Gemfile.lock`
- **Purpose**: Dependency management.
- **Usefulness**: Lists all the specialized "Gems" (Ruby libraries) needed to build the site. It ensures that the site looks exactly the same whether it's running on your computer or GitHub's servers.

### `CONTRIBUTING.md`
- **Purpose**: Guidelines for others.
- **Usefulness**: Explains how others can add their own subjects or fix bugs, making this a true open-source project.
