# Notes Management App

A simple Notes app built with **Flutter** and **Cloud Firestore**, supporting Create, View, Update, and Delete (CRUD) of notes. Each note has a **Title** and a **Description**.

## Screens
1. **Notes List Screen** — shows all notes from Firestore.
2. **Add/Edit Note Screen** — used to add a new note or edit an existing one.

## Project Structure
```
lib/
├── main.dart
├── models/note.dart
├── services/firestore_service.dart
└── screens/
    ├── notes_list_screen.dart
    └── add_edit_note_screen.dart
pubspec.yaml
```

## Setup & Run

1. **Create project shell:**
   ```
   flutter create notes_management_app
   ```
   Then copy in the files above (replace `pubspec.yaml` and `lib/main.dart`, add the rest).

2. **Connect Firebase:**
    - Create a project at [Firebase Console](https://console.firebase.google.com/)
    - Add app → Android (package name must match `applicationId` in `android/app/build.gradle`)
    - Download `google-services.json` → place in `android/app/`
    - `android/build.gradle` → add `classpath 'com.google.gms:google-services:4.4.2'`
    - `android/app/build.gradle` → add `apply plugin: 'com.google.gms.google-services'` at the top

3. **Enable Firestore:**
    - In Firebase Console → **Build → Firestore Database → Create database
    - Choose a location, select **Start in test mode**

4. **Install & Run:**
   ```
   flutter pub get
   flutter run
   ```

### Troubleshooting
- `PERMISSION_DENIED` → Firestore API not enabled yet, wait a minute and retry.
- `NOT_FOUND: database does not exist` → database wasn't created, do step 3.
- Nothing happens on Add/Update/Delete → fully stop and re-run the app after fixing Firebase settings.