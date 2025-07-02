#!/bin/bash

# GitHub Pages Deployment Script for NSW Property Explorer
# Usage: ./deploy.sh YOUR_GITHUB_USERNAME

if [ -z "$1" ]; then
    echo "Usage: ./deploy.sh YOUR_GITHUB_USERNAME"
    echo "Example: ./deploy.sh johndoe"
    exit 1
fi

USERNAME=$1
REPO_NAME="nsw-property-explorer"

echo "🚀 Deploying NSW Property Explorer to GitHub Pages..."
echo "📋 Repository: https://github.com/$USERNAME/$REPO_NAME"
echo "🌐 Future URL: https://$USERNAME.github.io/$REPO_NAME/"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Error: Not a git repository. Run 'git init' first."
    exit 1
fi

# Add remote if not exists
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "📡 Adding GitHub remote..."
    git remote add origin "https://github.com/$USERNAME/$REPO_NAME.git"
else
    echo "📡 GitHub remote already exists"
fi

# Rename branch to main if needed
CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" != "main" ]; then
    echo "🔄 Renaming branch to main..."
    git branch -M main
fi

# Commit any changes
if ! git diff --quiet || ! git diff --cached --quiet; then
    echo "💾 Committing latest changes..."
    git add .
    git commit -m "Update: Latest changes for GitHub Pages deployment"
fi

echo "📤 Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Code pushed to GitHub!"
echo ""
echo "📋 Next steps:"
echo "1. Go to: https://github.com/$USERNAME/$REPO_NAME/settings/pages"
echo "2. Under 'Source', select 'Deploy from a branch'"
echo "3. Select branch 'main' and folder '/ (root)'"
echo "4. Click 'Save'"
echo ""
echo "🌐 Your site will be available at:"
echo "   https://$USERNAME.github.io/$REPO_NAME/"
echo ""
echo "⏱️  Note: GitHub Pages deployment may take a few minutes"
echo "🎯 The application includes 315 real NSW properties with interactive mapping!"

