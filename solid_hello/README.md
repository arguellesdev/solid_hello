# Hello There App

This is a Flutter test project for Solid Software.

## Getting Started

This project is a starting point for a Flutter application.

---

## Features
### Hello There Page
- The app display **"Hello There"** text in the center of screen. When user tap anywhere, background (bg) color change to a new random RGB color. In this case inkwell is used to perform tap action.
- When user long press, the hex code of color is copied to the clipboard and show SnackBar for better UX.
- Text color is dynamic (based on bg color, white or black) using `computeLuminance`, so it stay readable in all cases.
- Background color animation was implemented using AnimatedContainer. This create a smooth transition when color change. Accessible transitions can help provide better UX, especially for users with some vision conditions. It does not guarantee that every user will accept it, but it enhance the experience and make the app feel more friendly.

### Positive Phrases Page
- Shows an inspirational phrase and its author (from science, philosophy, or Latin American speakers).
- Tap anywhere: load another random phrase from the list.
- Long press: copy the full phrase and author to the clipboard.
- Includes smooth color background change and back navigation.
- Uses a shared `Phrase` model (`text` + `author`) for clean design.

---

## Widgets and Services used
    - InkWell: detect tap and long press.
    - AnimatedContainer: fade background color change.
    - SnackBar: shows confirmation when copy color.
    - Clipboard: save color hex code.
    - ColorService: helper to generate 24-bit colors, check readability, and format hex.
    - PhrasesService: provide random inspirational phrases.
    - PositiveText (shared widget): display phrase + author with consistent style.  


## Run the app 
```bash
flutter pub get
flutter run
```

## Run the tests
flutter test

## Resources
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
