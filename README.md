# 🚀 Architecture Implementation in Flutter

![Flutter](https://img.shields.io/badge/Flutter-3.19.2-blue?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.3.0-blue?logo=dart)
![Clean Architecture](https://img.shields.io/badge/Architecture-Clean-orange)
![CI/CD](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-blue)
![FVM](https://img.shields.io/badge/Flutter%20Version%20Management-FVM-brightgreen)

A **scalable and maintainable** Flutter project structure implementing **Clean Architecture** principles with **Bloc**, **Dio**, and **Freezed**.

## 🏗️ Project Structure

```sh
lib/
│── core/
│   ├── di/                # Dependency Injection (GetIt)
│   ├── networking/        # Networking (Dio + Retrofit)
│   ├── routing/           # App Routing
│   ├── helpers/           # Helper Classes
│   ├── theming/           # Theme & Styles
│   ├── widgets/           # Reusable Widgets
│
│── features/
│   ├── home/
│   │   ├── data/
│   │   │   ├── models/      # Data Models
│   │   │   ├── repositories/ # Repository Implementations
│   │   │   ├── api_service/  # API Service for Network Calls
│   │   ├── domain/
│   │   │   ├── entities/    # Business Entities
│   │   │   ├── usecases/    # Use Cases (Business Logic)
│   │   ├── presentation/
│   │   │   ├── bloc/        # Bloc / Cubit for State Management
│   │   │   ├── screens/     # Screens / UI
│
│── utils/                  # Utility Functions & Constants

```

## 🔥 Tech Stack

- **State Management:** `flutter_bloc`
- **Networking:** `Dio` + `Retrofit`
- **Code Generation:** `Freezed`, `JsonSerializable`
- **Dependency Injection:** `GetIt`
- **Data Persistence:** `SharedPreferences`, `Hive` (optional)
- **Routing:** `GoRouter`
- **CI/CD:** `GitHub Actions` + `Fastlane`
- **Flutter Version Management:** `FVM`

## 🚀 Installation & Setup

- **1️⃣ Install Flutter Version Management (FVM)**
This project uses **FVM** for managing Flutter versions.
```sh
dart pub global activate fvm
```

- **2️⃣ Clone the Repository**
```sh
git clone https://github.com/MohamedAhmedHassan894/architecture-impl.git
cd architecture-impl
```

- **3️⃣ Install Flutter SDK (Project Version)**
```sh
fvm install
fvm use --force
```

- **4️⃣ Get Dependencies**
```sh
fvm flutter pub get
```

- **5️⃣ Generate Code (Freezed, Retrofit, etc.)**
```sh
fvm flutter pub run build_runner build --delete-conflicting-outputs
```

- **6️⃣ Run the App**
```sh
fvm flutter run
```


# 🚀 CI/CD - Automated Deployment with GitHub Actions & Fastlane
This project includes GitHub Actions for automating builds and distributing to TestFlight.

🔹 Workflow Steps
- **✅ Runs on push to feature branches (feature/ci-cd_github-actions)**
- **✅ Builds and signs the iOS app**
- **✅ Uploads the app to TestFlight using Fastlane**
- **✅ Uses Fastlane Match for code signing**
- **✅ Ensures correct Flutter version using FVM**

🔹 Key CI/CD Steps
- **1️⃣ Checkout Repository**
- **2️⃣ Setup SSH for Fastlane Match**
- **3️⃣ Install Flutter & Dependencies (via FVM)**
- **4️⃣ Set up Fastlane & Xcode**
- **5️⃣ Decode Certificates & Provisioning Profiles**
- **6️⃣ Build & Upload to TestFlight 🚀**

🔐 Environment Variables & Secrets
The following secrets must be configured in GitHub Secrets for the CI/CD pipeline:

#### PROVISIONING_PROFILE_SPECIFIER
#### SIGNING_KEY_PASSWORD
#### FASTLANE_USER
#### MATCH_PASSWORD
#### APP_STORE_CONNECT_API_KEY_ID
#### APP_STORE_CONNECT_ISSUER_ID
#### APP_STORE_CONNECT_API_KEY_CONTENT
🔧 To configure CI/CD, update these secrets in your GitHub Repository Settings.


🛠 Key Features
- **✅ Scalable Architecture — Clean, modular structure for easy expansion**
- **✅ BLoC for State Management — Ensures predictable state transitions**
- **✅ Dio + Retrofit for API Calls — Efficient network management**
- **✅ Error Handling — Centralized exception handling for robustness**
- **✅ Reusable Widgets & Constants — Reduces code duplication**
- **✅ FVM Support — Ensures consistent Flutter versions across environments**
- **✅ Automated CI/CD — No manual uploads, fully automated deployment**

🌍 Contributing
To contribute, follow these steps:

- **1️⃣ Fork the repo**
- **2️⃣ Create a feature branch**
```sh
git checkout -b feature-name
```

- **3️⃣ Commit your changes**
```sh
git commit -m "Add feature"
```

- **4️⃣ Push the branch**
```sh
git push origin feature-name
```

- **5️⃣ Open a Pull Request**

📜 License
This project is MIT Licensed. Feel free to use and modify it.

 ### 👨‍💻 Developed by [Mohamed Ahmed Hassan](https://www.linkedin.com/in/mohamed-hassaan-0b7590145)  
💡 Stay tuned for more updates! 🚀  
