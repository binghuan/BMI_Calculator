# BMI Calculator

<img src="Icon.png" width="240">

A simple iOS application for calculating Body Mass Index (BMI) built with Objective-C and Interface Builder.

## Features

- **Simple Interface**: Clean and intuitive user interface with Chinese labels
- **Real-time Calculation**: BMI is calculated automatically when height or weight input is finished
- **Input Validation**: Number pad keyboard for numeric input only
- **BMI Reference**: Built-in BMI categories reference guide
- **Touch to Dismiss**: Tap anywhere on the screen to dismiss keyboard

## Technical Details

### Platform
- **Language**: Objective-C
- **Framework**: UIKit
- **Target**: iOS (iPhone/iPad)
- **Xcode Version**: Compatible with Xcode 8+
- **iOS Version**: iOS 9.0+

### Architecture
- **Pattern**: MVC (Model-View-Controller)
- **Interface**: Storyboard-based UI design
- **Orientation**: Supports Portrait, Landscape Left, and Landscape Right

### Key Components

#### ViewController.h
- Manages the main BMI calculation interface
- Properties for height input, weight input, and BMI output display

#### ViewController.m
- Implements BMI calculation logic: `BMI = weight(kg) / (height(m))²`
- Handles user input validation and keyboard dismissal
- Real-time calculation triggered by `editingDidEnd` events

#### User Interface Elements
- **Height Input**: Text field for height input in centimeters (公分)
- **Weight Input**: Text field for weight input in kilograms (公斤)
- **BMI Output**: Label displaying calculated BMI value
- **Reference Guide**: Text view showing BMI categories:
  - Normal: 18.5 ~ 24
  - Ideal: 22 ~ 24
  - Overweight: 25 ~ 30
  - Severely Overweight: 30 ~ 40
  - Extremely Overweight: 40+

## How It Works

1. **Input Height**: Enter height in centimeters (default: 155cm)
2. **Input Weight**: Enter weight in kilograms (default: 65kg)
3. **Automatic Calculation**: BMI is calculated when you finish editing either field
4. **View Result**: BMI value is displayed immediately
5. **Reference Categories**: Compare your BMI with the standard categories

### BMI Calculation Formula
```
BMI = Weight (kg) / (Height (m))²
```

The app converts height from centimeters to meters automatically before calculation.

## Setup and Installation

1. Clone the repository
2. Open `BMI Calculalor.xcodeproj` in Xcode
3. Select your target device or simulator
4. Build and run the project

## Demo

### Video Demo
<a href="https://www.youtube.com/watch?v=nA0QAvzIGog" target="_blank">
	<img src="./pictures/demo.gif" style="height: 480px; width: auto"/>
</a>

### Screenshot
<a href="">
	<img src="./demo.png"/>
</a>

## Project Structure

```
BMI Calculator/
├── BMI Calculalor/
│   ├── AppDelegate.h/m          # Application delegate
│   ├── ViewController.h/m       # Main view controller
│   ├── Main.storyboard         # Interface design
│   ├── LaunchScreen.storyboard # Launch screen
│   ├── Info.plist              # App configuration
│   └── Assets.xcassets/        # App icons and images
├── BMI CalculalorTests/        # Unit tests
└── BMI CalculalorUITests/      # UI tests
```
