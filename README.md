# NSW Property Explorer

A web-based tool for exploring NSW properties suitable for large events (700-2000 people).

## Features

- **Interactive Map**: View 315 real NSW properties on an interactive map
- **Property Details**: Click properties to view size, distance from Sydney, and location details
- **Statistics**: Real-time statistics showing property size ranges and averages
- **Filtering**: Properties filtered for 50+ hectares, 100-400km from Sydney
- **Color Coding**: Properties color-coded by size (red: 500+ ha, orange: 200-500 ha, green: 100-200 ha, blue: 50-100 ha)

## Data Source

Real NSW cadastral data processed from GeoDatabase format, filtered for properties suitable for regional burns events.

## Usage

Simply open the application in a web browser. The map will load automatically with all properties displayed. Click on any property marker or list item to view details and zoom to the location.

## Technical Details

- **Frontend**: HTML, CSS, JavaScript with Leaflet.js for mapping
- **Data**: 315 properties in JSON format (190KB)
- **Performance**: Optimized for fast loading with timeout handling and error recovery
- **Compatibility**: Works on desktop and mobile browsers

## Statistics

- **Total Properties**: 315
- **Size Range**: 50.1 - 2,489.7 hectares
- **Average Size**: 135.3 hectares
- **Average Distance**: 267.1 km from Sydney
- **Geographic Coverage**: Across NSW regions including Hunter Valley, Central Coast, Blue Mountains, and more

## Live Demo

Visit the live application: [NSW Property Explorer](https://your-username.github.io/nsw-property-explorer/)

