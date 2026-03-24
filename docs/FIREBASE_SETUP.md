# Firebase Setup

1. Create a Firebase project.
2. Enable Authentication (Email/Password, Google).
3. Create Firestore database.
4. Run:
   - `dart pub global activate flutterfire_cli`
   - `flutterfire configure`
5. Add Android `google-services.json` to `android/app/`.
6. Set admin user document field:
   - `role: "admin"`
