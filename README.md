# Raffle Landing Page

This project is a landing page for a promotional raffle. The page allows users to register for the raffle by uploading their receipts and related photos.

## Features

- Registration form with field validation
- Dominican ID validation using Luhn algorithm
- Phone number validation
- Image upload (receipt and related photo)
- Google Sheets integration for data storage
- Responsive design for mobile and desktop
- Cookie consent banner with terms acceptance
- Social media links
- WhatsApp contact button

## Technologies Used

- HTML5
- CSS3
- JavaScript (Vanilla)
- Google Apps Script (backend)
- Google Sheets (data storage)

## Deployment Environments

- **Production**: GitHub Pages
  - Automatic deployment from `main` branch
  - URL: https://[username].github.io/[repository-name]

- **Development/Preview**: Netlify
  - Automatic deployment from `develop` branch
  - Pull request previews
  - URL: https://[project-name].netlify.app

## Requirements

- Modern web browser
- Internet connection
- Google account (for backend)

## Project Structure

```
project/
├── assets/
│   ├── optimized/
│   │   ├── background.webp
│   │   ├── main-image.webp
│   │   └── mobile-image.webp
│   └── background.png
├── index.html
└── README.md
```

## Setup

1. Clone this repository
2. Configure Google Apps Script with the following code:
   ```javascript
   function doPost(e) {
     // Google Apps Script code
   }
   ```
3. Update the script URL in `index.html` with your own Google Apps Script URL

## Implemented Validations

- Dominican ID (11 digits, Luhn algorithm)
- Phone number (10-15 digits)
- Images (accepted formats: JPG, PNG, HEIC, HEIF, WEBP)
- Required fields marked with asterisk (*)

## Security Features

- Frontend data validation
- Secure Google Sheets storage
- Spam and invalid entry protection
- Error handling and user messages

## Support

For technical support or questions about the project, contact through:
- WhatsApp
- Instagram
- Facebook

## License

© 2025 All rights reserved.



