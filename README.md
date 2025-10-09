# Pronunciation Practice Web App

A simple, lightweight web application to help you practice pronouncing difficult English words using your browser's built-in speech recognition.

## Features

- **Three Difficulty Modes**:
  - **Beginner** (~50 words): IPA keyword examples for common English phonemes
  - **Intermediate** (~200 words): Commonly mispronounced English words
  - **Advanced** (~200 words): Very difficult and rare words
- **Speech Recognition**: Uses Web Speech API (free, no API keys needed)
- **Real-time Audio Visualization**: Word pulses when you speak
- **Dark Mode**: Toggle between light and dark themes (preference saved)
- **Keyboard Shortcuts**:
  - `Space` - Start recording
  - `Enter` - Next word
- **No Repetition**: Each word appears only once per session until all words are used
- **Skipped Words Tracker**: Sidebar shows words you skipped without correct pronunciation, with ability to clear individual words or all at once
- **Google Pronunciation Help**: Click button to search "how to pronounce [word]" on Google
- **Responsive Design**: Works on desktop and mobile devices

## Requirements

- Modern web browser (Chrome or Edge recommended for best speech recognition support)
- Microphone access
- Internet connection (for Google search feature)

## Installation & Usage

### Local Development

1. Clone or download this repository
2. Make the deployment script executable:
   ```bash
   chmod +x start.sh
   ```
3. Double click the file named "start".

### Manual Setup

Simply open `index.html` in your web browser - no build process required!

## How to Use

1. Select your difficulty level: **Beginner**, **Intermediate**, or **Advanced**
2. Click **"Next Word"** (or press `Enter`) to get a random word
3. Click **"🎤 Record"** (or press `Space`) and say the word
4. The app will show if you pronounced it correctly
5. Words you skip without pronouncing correctly appear in the sidebar
6. Click **"🔍 How to pronounce?"** to see Google pronunciation help
7. Toggle dark mode with the moon/sun icon in the top-right

## Technologies Used

- HTML5
- CSS3 (CSS Variables for theming)
- Vanilla JavaScript
- Web Speech API (Speech Recognition)
- Web Audio API (Audio visualization)
- LocalStorage (Theme preference)

## Browser Compatibility

- **Best**: Chrome, Edge (full Web Speech API support)
- **Limited**: Firefox, Safari (limited speech recognition support)

## Privacy

- No data is sent to external servers
- All speech recognition is handled by your browser
- Theme preference is stored locally in your browser
- The only external connection is when you click the Google search button

## No Dependencies

This app has zero dependencies and works entirely offline (except for the Google search feature). No npm packages, no frameworks, no API keys required.

## License

Free to use and modify.
