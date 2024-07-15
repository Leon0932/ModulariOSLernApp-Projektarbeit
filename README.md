### README.md

# Modular iOS Learning App

This project is a modular iOS learning application developed with Swift and Xcode.

## Prerequisites

- Xcode (version 15.4 or higher)
- Git
- GitHub account (optional but recommended)

## Installation

### 1. Clone the repository

Open your terminal and execute the following command:

```bash
git clone https://github.com/Leon0932/ModulariOSLernApp-Projektarbeit.git
```

### 2. Navigate to the project directory

```bash
cd ModulariOSLernApp-Projektarbeit
```

### 3. Open the Xcode project

```bash
open ModulariOSLernApp-Projektarbeit.xcodeproj/project.xcworkspace/
```

### 4. Install packages

Xcode should automatically recognize and install the necessary Swift packages. If not, follow these steps:

1. Open Xcode.
2. Go to `File` > `Packages` > `Update to Latest Package Versions`.

### 5. Signing & Capabilities

After opening the project in Xcode:

1. Go to `Signing & Capabilities`.
2. Sign in with your Apple Developer Account.
3. Adjust the `Bundle Identifier` if necessary (e.g., `com.yourname.ModulariOSLernApp-Projektarbeit`).

### 6. Build and run the project

Select your target device and click the Run button (`⌘R`) to build and run the project.

## Running Unit Tests

To execute the Unit Tests, follow these steps:

1. Open the project in Xcode.
2. Press `Command + U` to run all Unit Tests.
3. Review the results in the Test navigator.

### Note

In the UserDefaultsManagerTests file located under the ModulariOSLernApp-ProjektarbeitTests folder, make sure to change the organization identifier in line 14, only if the organization has been changed.

## Troubleshooting

### Dependencies are not resolved correctly

Ensure the `Package.resolved` file is present in the `ModulariOSLernApp-Projektarbeit/ModulariOSLernApp-Projektarbeit.xcodeproj/project.xcworkspace/xcshareddata/swiftpm` directory.

### Further assistance

If you encounter any issues or have questions, please open an issue on GitHub or contact the project developer.

## Video Demonstration

Watch the video demonstration of the app:

### iPhone
[![Watch the video](https://img.youtube.com/vi/lWs0hCHoTvY/maxresdefault.jpg)](https://youtu.be/lWs0hCHoTvY?si=vaZl7TTzXuD8O7jD)

### iPad
[![Watch the video](https://img.youtube.com/vi/hDzElD-VWtY/maxresdefault.jpg)](https://youtu.be/hDzElD-VWtY)
