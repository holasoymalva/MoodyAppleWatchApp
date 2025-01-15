# MoodyApp - Apple Watch Mood Tracker

MoodyApp is an innovative Apple Watch application that helps users track their mood throughout the day by analyzing heart rate data. The app provides personalized recommendations based on the detected mood patterns.

<img width="245" alt="image" src="https://github.com/user-attachments/assets/6bb27321-2461-4dde-877c-e0f7cb58fe62" />


## Features

- 🫀 Real-time heart rate monitoring
- 😊 Automatic mood detection based on heart rate patterns
- 💡 Personalized recommendations and advice
- 📊 Historical mood tracking
- 📱 Clean and intuitive WatchOS interface

## Requirements

- watchOS 9.0+
- Xcode 14.0+
- Apple Watch with heart rate sensor
- iOS 16.0+ (paired iPhone)

## Installation

1. Clone the repository:
```bash
git clone https://github.com/holasoymalva/MoodyAppleWatchApp.git
```

2. Open the project in Xcode:
```bash
cd MoodyAppleWatchApp
open MoodyApp.xcodeproj
```

3. Configure HealthKit capabilities:
   - Select your target in Xcode
   - Go to "Signing & Capabilities"
   - Click "+" and add "HealthKit"

4. Add required privacy descriptions in Info.plist:
```xml
<key>NSHealthShareUsageDescription</key>
<string>We need access to your heart rate data to analyze your mood</string>
<key>NSHealthUpdateUsageDescription</key>
<string>We need access to update health data to track your mood changes</string>
```

5. Build and run the project on your Apple Watch

## Usage

1. Launch MoodyApp on your Apple Watch
2. Grant necessary permissions for heart rate monitoring
3. The app will automatically start tracking your mood based on heart rate data
4. Swipe through the different views to see:
   - Current mood status
   - Personalized recommendations
   - Mood history

## Architecture

The app follows a clean SwiftUI architecture with the following components:

- `MoodManager`: Core business logic and HealthKit integration
- `ContentView`: Main tab-based navigation
- `MoodView`: Current mood display
- `AdviceView`: Personalized recommendations
- `HistoryView`: Historical mood data
- `Models`: Data structures and enums

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

## Author

[@holasoymalva](https://github.com/holasoymalva)

## Acknowledgments

- Thanks to Apple's HealthKit framework for providing heart rate data access
- SwiftUI for the modern declarative UI
- All contributors who help improve this app

## Contact

If you have any questions, feel free to reach out or open an issue.

---
Made with ❤️ by [@holasoymalva](https://github.com/holasoymalva)
