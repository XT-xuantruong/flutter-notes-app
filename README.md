# Notes App

A simple and lightweight Notes application built with **Flutter** and **Hive** for persistent local storage. This app allows users to create, view, edit, and delete notes with a clean and user-friendly interface. It supports multiple platforms, including Android, iOS, web, and desktop.

## Features
- **Create Notes**: Add new notes with a title, content, and automatically recorded creation time.
- **View Notes**: Display a list of all notes and view detailed content for each note.
- **Edit Notes**: Update the title and content of existing notes.
- **Delete Notes**: Remove individual notes with a confirmation dialog.
- **Persistent Storage**: Store notes locally using Hive, ensuring data persists across app restarts.
- **Multi-platform Support**: Runs on Android, iOS, web, and desktop without additional configuration.
- **Responsive UI**: Clean and intuitive interface with Material Design.

## Requirements
- **Flutter SDK**: Version 2.19.6 or higher
- **Dart SDK**: Included with Flutter
- **Supported Platforms**: Android, iOS, web, or desktop (Windows, macOS, Linux)
- **Development Tools**: Android Studio, VS Code, or any IDE with Flutter support

## Dependencies
- `flutter`: For building the UI
- `hive: ^2.2.3`: For lightweight NoSQL storage
- `hive_flutter: ^1.1.0`: Hive extension for Flutter
- `intl: ^0.18.1`: For formatting dates
- `path_provider: ^2.1.1`: For accessing device storage paths
- `hive_generator: ^2.0.0`: For generating Hive adapters
- `build_runner: ^2.4.6`: For code generation
- `flutter_lints: ^2.0.0`: For code linting

## Project Structure
```
notes_app/
├── lib/
│   ├── main.dart                # App entry point and Hive initialization
│   ├── note_model.dart          # Note model with Hive annotations
│   ├── note_list_screen.dart    # Screen displaying the list of notes
│   ├── note_detail_screen.dart  # Screen showing note details
│   ├── note_edit_screen.dart    # Screen for adding/editing notes
├── pubspec.yaml                # Project dependencies and configuration
├── README.md                   # Project documentation
```

## Installation
Follow these steps to set up and run the project locally:

1. **Clone the Repository** (if hosted on a version control system):
   ```bash
   git clone https://github.com/XT-xuantruong/flutter-notes-app.git
   cd notes_app
   ```

2. **Install Dependencies**:
   Ensure you have Flutter installed, then run:
   ```bash
   flutter pub get
   ```

3. **Generate Hive Adapter**:
   The `Note` model requires a generated adapter for Hive. Run:
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```
   This generates the `note_model.g.dart` file.

4. **Run the App**:
   Connect a device/emulator or use a web browser, then run:
   ```bash
   flutter run
   ```

## Usage
- **Home Screen**: Displays a list of all notes with their titles and creation dates.
- **Add Note**: Tap the floating action button (`+`) to create a new note. Enter a title and content, then tap "Save".
- **View Note**: Tap a note in the list to view its details, including title, content, and creation time.
- **Edit Note**: From the detail screen, tap the edit icon to modify the note. Save changes by tapping "Save".
- **Delete Note**: Tap the delete icon on a note in the list. Confirm the deletion in the dialog that appears.

## Troubleshooting
- **Error: Could not find package "build_runner"**:
  - Ensure `build_runner` and `hive_generator` are listed in `pubspec.yaml` under `dev_dependencies`.
  - Run `flutter pub get` to install them.
- **Error: Missing note_model.g.dart**:
  - Run `dart run build_runner build --delete-conflicting-outputs` to generate the adapter.
- **White Screen**:
  - Check the console for errors using `flutter run --verbose`.
  - Ensure Hive is initialized correctly in `main.dart` (`Hive.initFlutter` and `Hive.openBox`).
- **Web Support**:
  - Hive supports web out of the box. Ensure you run `flutter run -d chrome` for web testing.

## Future Enhancements
- Add search functionality to filter notes by title or content.
- Support note categorization or tags.
- Implement sorting options (by title, creation time).
- Add light/dark theme support.
- Enable cloud synchronization with a backend service.


## License
This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.

## Contact
For questions or feedback, please contact [your-email@example.com](mailto:xuantruong2k4.dev@gmail.com).