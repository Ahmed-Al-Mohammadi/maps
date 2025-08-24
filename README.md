# Flutter Map with Markers

## Description

This project is a Flutter application that demonstrates the integration of Google Maps with custom markers. It displays a map centered on a specific location with several predefined markers, showcasing how to use the `google_maps_flutter` plugin to visualize geographical data within a mobile application.

## Features

-   **Interactive Map**: Displays a Google Map that users can pan and zoom.
-   **Custom Markers**: Places custom markers on the map at specified latitude and longitude coordinates.
-   **Location Data**: Predefined list of locations (e.g., cities in Egypt) with their names and coordinates.
-   **Info Windows**: Displays location names when markers are tapped.
-   **Cross-Platform**: Built with Flutter for potential deployment on Android, iOS, web, and desktop platforms.

## Project Structure

```
maps/
├── android/                            # Android platform-specific files
├── ios/                                # iOS platform-specific files
├── lib/                                # Dart source code for the Flutter application
│   └── main.dart                       # Main entry point of the Flutter application, containing map logic and marker data.
├── pubspec.yaml                        # Project dependencies and metadata
├── README.md                           # This README file.
└── ... (other Flutter-generated files and directories)
```

## Getting Started

### Prerequisites

-   **Flutter SDK**: Ensure you have Flutter installed on your development machine. Follow the official Flutter installation guide: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
-   **Google Maps API Key**: You will need a Google Maps API key enabled for Android and iOS. Follow the instructions to obtain and configure your API key:
    -   [Google Maps Platform Get API Key](https://developers.google.com/maps/gmp-get-started)
    -   [Flutter Google Maps Plugin Setup](https://pub.dev/packages/google_maps_flutter#setup)

### Installation

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/Ahmed-Al-Mohammadi/maps.git
    cd maps
    ```

2.  **Get Flutter dependencies**:
    Navigate to the project directory and run:
    ```bash
    flutter pub get
    ```

3.  **Configure Google Maps API Key**:
    -   **Android**: Add your API key to `android/app/src/main/AndroidManifest.xml`:
        ```xml
        <manifest ...>
            <application ...>
                <meta-data android:name="com.google.android.geo.API_KEY" android:value="YOUR_API_KEY"/>
            </application>
        </manifest>
        ```
    -   **iOS**: Add your API key to `ios/Runner/AppDelegate.swift`:
        ```swift
        import UIKit
        import Flutter
        import GoogleMaps

        @UIApplicationMain
        @objc class AppDelegate: FlutterAppDelegate {
          override func application(
            _ application: UIApplication,
            didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
          ) -> Bool {
            GMSServices.provideAPIKey("YOUR_API_KEY")
            GeneratedPluginRegistrant.register(with: self)
            return super.application(application, didFinishLaunchingWithOptions: launchOptions)
          }
        }
        ```

### Running the Application

To run the application on a connected device or emulator:

```bash
flutter run
```

## Usage

-   The application will display a map with markers indicating various locations.
-   Tap on a marker to view its name in an info window.
-   You can pan and zoom the map to explore different areas.

## Contributing

Contributions are welcome! If you have suggestions for improvements or new features, please:

1.  Fork the repository.
2.  Create a new branch (`git checkout -b feature/YourFeature`).
3.  Make your changes.
4.  Commit your changes (`git commit -m 'Add some feature'`).
5.  Push to the branch (`git push origin feature/YourFeature`).
6.  Open a Pull Request.

## License

This project is licensed under the MIT License - see the `LICENSE` file in the repository for details.

## Contact

For any questions or suggestions, please open an issue in the GitHub repository.
