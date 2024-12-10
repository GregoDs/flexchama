# FlexChama Flutter App

This is a Flutter-based app for FlexChama, which includes features like top-up, shop, withdraw, and setting personal goals. It uses various Flutter widgets and a custom navigation bar.

## Prerequisites

Before you begin, make sure you have the following installed on your system:

1. **Flutter SDK**: Follow the official guide to install Flutter:  
   [Install Flutter](https://flutter.dev/docs/get-started/install)

2. **Dart SDK**: Dart comes bundled with Flutter, so no additional installation is needed.

3. **Android Studio or Visual Studio Code**: You can use any IDE for Flutter development, but we recommend using Android Studio or Visual Studio Code.

4. **Emulator/Device**: Make sure you have an Android/iOS emulator set up, or a physical device connected for running the app.

## Getting Started

### Step 1: Clone the Repository

If you haven't already, clone the repository using the following command:

```bash
git clone https://github.com/your-username/flexchama.git

```

### Step 2: Navigate to the Project Directory

Open your terminal or command prompt and navigate to the project directory:

```bash
cd flexchama
```

### Step 3:  Install Dependencies

In the project directory, run the following command to install all the required dependencies for the app:

```bash
flutter pub get
```

This will fetch all the necessary packages listed in the pubspec.yaml file.

### Step 4: Run the App
Once the dependencies are installed, you can run the app on an emulator or a connected physical device:

```bash
flutter run
```

This will launch the app on your default device.

### Step 5: Explore the App

After running the app, you can interact with the home screen, view personal goal cards, use navigation, and test out features such as Top-Up, Shop, and Withdraw. The app includes a custom floating navbar and app bar.

## Folder Structure

Here is a brief overview of the folder structure for the project:

```bash 

/flexchama
├── /lib
│   ├── /screens
│   │   └── home_screen.dart      
│   ├── /widgets
│   │   └── custom_appbar.dart    
│   └── navbar.dart               
├── /assets
│   ├── /logo
│   │   └── setGoals.jpg          
├── pubspec.yaml                  
├── README.md                     


```
## Troubleshooting

Error: "No connected devices": Ensure you have an emulator running or a device connected. You can check this with the following command:

```bash
flutter devices
```

Error: "Flutter not recognized": If you receive this error, ensure that the Flutter SDK is correctly installed and added to your system's PATH.