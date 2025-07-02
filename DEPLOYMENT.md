# GitHub Pages Deployment Instructions

## Quick Setup

1. **Create GitHub Repository**:
   - Go to https://github.com/new
   - Repository name: `nsw-property-explorer`
   - Make it public
   - Don't initialize with README (we already have one)

2. **Push Code to GitHub**:
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/nsw-property-explorer.git
   git branch -M main
   git push -u origin main
   ```

3. **Enable GitHub Pages**:
   - Go to repository Settings → Pages
   - Source: Deploy from a branch
   - Branch: main / (root)
   - Save

4. **Access Your Site**:
   - URL: `https://YOUR_USERNAME.github.io/nsw-property-explorer/`
   - May take a few minutes to deploy

## Alternative: Use GitHub CLI

If you have GitHub CLI installed:
```bash
gh repo create nsw-property-explorer --public --push --source=.
gh api repos/:owner/:repo/pages -X POST -f source[branch]=main -f source[path]=/
```

## Files Included

- `index.html` - Main application (deployment-optimized version)
- `properties.json` - NSW property data (315 properties)
- `leaflet.js` & `leaflet.css` - Mapping library (local copy)
- `summary.json` - Data summary statistics
- `README.md` - Project documentation

## Features

✅ **Real NSW Data**: 315 properties from GeoDatabase  
✅ **Interactive Map**: Leaflet.js with property markers  
✅ **Property Details**: Click to view size, distance, location  
✅ **Statistics**: Live stats and property rankings  
✅ **Mobile Friendly**: Responsive design  
✅ **Fast Loading**: Optimized with timeout handling  

## Data Details

- **Size Range**: 50.1 - 2,489.7 hectares
- **Distance Range**: 100-400km from Sydney  
- **Total Properties**: 315
- **File Size**: 190KB JSON (fast loading)
- **Geographic Coverage**: Across NSW regions

The application is ready for GitHub Pages deployment!

