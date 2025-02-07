# Google Map Integration 

This  application demonstrates how to integrate a Google Map into your app and add markers to it.  It focuses on displaying a map centered on Cairo and placing a marker there.

## Features

*   Displays a Google Map.
*   Adds a marker to the map at the location of Cairo.
*   Uses `google_maps_flutter` package.
*   Hybrid map type.

## Getting Started

1.  **Prerequisites:**
    *   Flutter SDK installed.
    *   Android Studio 
2.  **Installation:**
    *   Clone this repository 
        ```bash
         git clone https://github.com/Hanan-Mosa/cairo_map.git
        ```
    *   Get Dependencies

        ```bash
        flutter pub get
        ```

    *   Run the project
        ```bash
        flutter run
        ```
3.  **API Key:** We'll need a Google Maps API key.
    *   Go to the [Google Cloud Console](https://console.cloud.google.com/).
    *   Create a project (or select an existing one).
    *   Enable the Maps SDK for your platform (Android and/or iOS).
    *   Create API credentials (API key).

4.  **Platform Setup(Permission):**
    *   **Android:**
        *   Add my API key to my `AndroidManifest.xml` file (inside the `<application>` tag):

            ```bash
            <meta-data
              android:name="com.google.android.geo.API_KEY"
              android:value="YOUR_API_KEY" />
            ```

## Code Explanation

The code uses the `google_maps_flutter` plugin to display a Google Map. </br> 
It initializes the map with a specific `initialCameraPosition` (Cairo's location). </br> 
The `onMapCreated` callback provides a `GoogleMapController` which is used to control the map.</br> 
A marker is added to the map at Cairo's coordinates.  The `mapType` is set to `MapType.hybrid`.

## Video Demo
https://github.com/user-attachments/assets/2b39a13c-0642-451f-9d0f-3397d3e811d2

