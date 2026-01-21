#!/bin/bash

# Initialize repository
#git init

# Initial commits
echo "Project start" > README.md
git add README.md
git commit -m "Initial commit"

echo "Base feature" >> README.md
git commit -am "Add base feature"

# Feature branch: login
git checkout -b feature/login
echo "Login page" > login.txt
git add login.txt
git commit -m "Add login page"

echo "Login validation" >> login.txt
git commit -am "Add login validation"

# Back to main, parallel work
git checkout main
echo "Config file" > config.yml
git add config.yml
git commit -m "Add config file"

# Feature branch: UI
git checkout -b feature/ui
echo "UI layout" > ui.txt
git add ui.txt
git commit -m "Add UI layout"

echo "Dark mode support" >> ui.txt
git commit -am "Add dark mode"

# Merge feature/login
git checkout main
git merge feature/login -m "Merge feature/login"

# Hotfix on main
echo "Hotfix applied" >> README.md
git commit -am "Apply hotfix"

# Merge feature/ui
git merge feature/ui -m "Merge feature/ui"

# Show final graph
git log --graph --oneline --all --decorate

