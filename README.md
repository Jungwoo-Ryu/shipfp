# ShipFP

ShipFP is a Flutter application designed specifically for INFPs, inspired by the 16 Personalities framework. The app aims to create a supportive environment for users to engage with daily questions that resonate with their personality type, fostering self-reflection and personal growth.

## Features

- **Guest Login**: Users can start using the app without creating an account.
- **Daily Questions**: The app presents daily questions tailored for INFPs, encouraging introspection and engagement.
- **XP Display**: Users can track their experience points (XP) as they interact with the app.

## Project Structure

```
shipfp
├── lib
│   ├── main.dart                # Entry point of the application
│   ├── screens
│   │   └── main_page.dart       # Main interface of the app
│   ├── widgets
│   │   └── question_widget.dart  # Widget for rendering questions
│   └── models
│       └── question.dart        # Model for question data
├── pubspec.yaml                 # Project configuration file
└── README.md                    # Documentation for the project
```

## Setup Instructions

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/shipfp.git
   ```
2. Navigate to the project directory:
   ```
   cd shipfp
   ```
3. Install the dependencies:
   ```
   flutter pub get
   ```
4. Run the application:
   ```
   flutter run
   ```

## Usage

Upon launching the app, users will be greeted with a guest login option. After logging in, they will see the main page featuring their XP and a daily question. Users can interact with the questions and track their progress through the XP system.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any suggestions or improvements.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.