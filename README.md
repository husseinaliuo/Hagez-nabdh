<div align="center">

# 🏥 نبض

### _رفيقك الصحي_

[![Flutter](https://img.shields.io/badge/Flutter-3.9.2+-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.9.2+-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![License](https://img.shields.io/badge/License-Private-red?style=for-the-badge)](LICENSE)

**تطبيق حديث ومتكامل لحجز المواعيد الطبية، يربط المرضى بمقدمي الرعاية الصحية بسلاسة وسهولة.**

[Features](#-features) • [Tech Stack](#-tech-stack) • [Installation](#-installation) • [Architecture](#-architecture) • [Contributing](#-contributing)

### 📸 App Screenshots

<div align="right">
  <img src="assets/images-git/splash.png" alt="Splash Screen" width="200"/>
  <img src="assets/images-git/home.png" alt="Home Dashboard" width="200"/>
  <img src="assets/images-git/specilaity_detail.png" alt="Specialty Detail" width="200"/>
  <br/>
  <img src="assets/images-git/filter.png" alt="Advanced Filters" width="200"/>
  <img src="assets/images-git/doctor_detail.png" alt="Doctor Detail" width="200"/>
  <img src="assets/images-git/appointment.png" alt="Appointment Booking" width="200"/>
</div>

---

## 📺 Video Tutorial Series

<div align="center">

### 🎬 Learn to Build نبض from Scratch!

[![Watch on YouTube](https://img.shields.io/badge/▶_WATCH_FULL_PLAYLIST-FF0000?style=for-the-badge&logo=youtube&logoColor=white&labelColor=282828)](https://www.youtube.com/playlist?list=PLGwhLIITEIB_u-pBiiUxAf3Kz3Nu9VAY8)

<br/>

**📚 Complete Step-by-Step Tutorial Series**

✨ Flutter Development from Basics to Advanced  
✨ Supabase Database Integration  
✨ Real-time Appointment System  
✨ Authentication & Security Implementation  
✨ UI/UX Best Practices

[🔗 Access the Playlist Here](https://www.youtube.com/playlist?list=PLGwhLIITEIB_u-pBiiUxAf3Kz3Nu9VAY8)

</div>

</div>

---

## 📱 About

**نبض** هو تطبيق صحي متكامل مبني بتقنية Flutter وSupabase، صُمم ليحدث نقلة في طريقة تواصل المرضى مع الأطباء. بواجهة سهلة الاستخدام وميزات قوية، يضع نبض الرعاية الصحية في متناول يدك.

### 🎯 أبرز المميزات

- 🔐 **تسجيل دخول آمن** عبر Supabase
- 📅 **إدارة المواعيد في الوقت الفعلي**
- 👨‍⚕️ **ملفات أطباء شاملة**
- 🔍 **بحث وتصفية متقدم**
- 📊 **لوحة تحكم للمريض**
- 🌍 **دعم كامل للغة العربية (RTL)**

---

## ✨ Features

### 🎨 User Experience

- **Splash Screen**: Eye-catching animated splash screen
- **Onboarding Flow**: Interactive introduction for first-time users
- **Smooth Navigation**: Intuitive user interface with seamless transitions

### 🔐 Authentication & Security

- **User Registration**: Secure sign-up with validation
- **Login System**: Email-based authentication with Supabase
- **Session Management**: Persistent login with secure token storage
- **Middleware Protection**: Route guards for authenticated pages

### 👨‍⚕️ Doctor Discovery

- **Browse by Specialty**: 8+ medical specialties (Dentist, Cardiologist, Neurologist, etc.)
- **Doctor Profiles**: Detailed information including:
  - Professional experience
  - Patient ratings & reviews
  - Consultation fees
  - Total patients treated
  - Specialization details
- **Search Functionality**: Find doctors by name or specialty
- **Advanced Filters**: Filter by experience, rating, price range

### 📅 Appointment Management

- **Book Appointments**: Schedule appointments with preferred doctors
- **Calendar View**: Interactive timeline for appointment selection
- **Appointment History**: Track all past, pending, and cancelled appointments
- **Status Management**: View appointments by status (Pending, Completed, Cancelled)
- **Cancel Appointments**: Cancel scheduled appointments with confirmation
- **Success Confirmation**: Appointment booking confirmation screen

### 📊 Patient Dashboard

- **Personal Profile**: Manage patient information
- **Appointment Overview**: Quick glance at upcoming appointments
- **Medical History**: Track consultation history
- **Favorite Doctors**: Save preferred healthcare providers

### 🎨 UI/UX Features

- **Modern Design**: Clean and intuitive interface
- **Custom Components**: Reusable widgets for consistency
- **Loading States**: Beautiful spinners and animations
- **Responsive Layout**: Adaptive design for all screen sizes
- **Custom Range Slider**: Interactive price/experience filters
- **Expansion Tiles**: Collapsible sections for better organization

---

## 🛠️ Tech Stack & Packages

### Core Framework

```yaml
flutter: SDK # Google's UI toolkit
dart: ^3.9.2 # Programming language
```

### 🎯 State Management & Architecture

| Package | Version | Purpose                                             |
| ------- | ------- | --------------------------------------------------- |
| **get** | ^4.7.3  | State management, dependency injection, and routing |

### 🔐 Backend & Database

| Package              | Version | Purpose                                                         |
| -------------------- | ------- | --------------------------------------------------------------- |
| **supabase_flutter** | ^2.12.0 | Backend as a Service (BaaS), authentication, real-time database |
| **flutter_dotenv**   | ^6.0.0  | Environment variable management for API keys                    |

### 💾 Local Storage

| Package                | Version | Purpose                                           |
| ---------------------- | ------- | ------------------------------------------------- |
| **shared_preferences** | ^2.5.3  | Persistent key-value storage for user preferences |

### 🎨 UI Components & Animations

| Package                | Version | Purpose                                    |
| ---------------------- | ------- | ------------------------------------------ |
| **flutter_svg**        | ^2.2.3  | SVG rendering for scalable vector graphics |
| **flutter_spinkit**    | ^5.2.2  | Beautiful loading animations               |
| **another_xlider**     | ^3.0.2  | Customizable range slider widgets          |
| **easy_date_timeline** | ^2.0.9  | Interactive date/time selection            |

### 🔧 Utilities

| Package             | Version | Purpose                                  |
| ------------------- | ------- | ---------------------------------------- |
| **intl**            | ^0.20.2 | Internationalization and date formatting |
| **cupertino_icons** | ^1.0.8  | iOS-style icons                          |

### 🧪 Development Dependencies

| Package           | Version | Purpose                   |
| ----------------- | ------- | ------------------------- |
| **flutter_lints** | ^5.0.0  | Recommended linting rules |
| **flutter_test**  | SDK     | Testing framework         |

---

## 🎨 Design System

### Typography

- **Arabic Font Family**: Tajawal (Regular, Medium, Bold, ExtraBold)
- **Latin Font Family**: Inter (Regular, Medium, SemiBold, Bold)
- Weights: 400, 500, 700, 800

### Assets

- **Images**: Categorized by type (doctors, icons, logos, specialties)
- **Fonts**: Custom Tajawal (Arabic) and Inter (Latin) font families
- **Icons**: SVG icons for scalability

---

## 📂 Project Structure

```
nabth/
├── android/                     # Android native configuration
├── ios/                         # iOS native configuration
├── web/                         # Web platform files
├── windows/                     # Windows native configuration
├── linux/                       # Linux native configuration
├── macos/                       # macOS native configuration
├── assets/
│   ├── fonts/                   # Custom fonts (Inter family)
│   └── images/                  # App images and icons
│       ├── doctor/              # Doctor profile images
│       ├── icones/              # UI icons
│       ├── logo/                # App branding
│       └── speciality/          # Medical specialty icons
├── lib/
│   ├── main.dart               # Application entry point
│   ├── main.dart               # Application entry point & Supabase initialization
│   │
│   ├── controllers/            # 🎮 GetX Controllers (Business Logic)
│   │   ├── appointment_controller.dart      # Appointment booking logic
│   │   ├── calendar_controller.dart         # Calendar & appointment status
│   │   ├── doctor_detail_controller.dart    # Doctor profile details
│   │   ├── home_controller.dart             # Home screen logic
│   │   ├── initial_controller.dart          # Initial screen setup
│   │   ├── login_controller.dart            # Login authentication
│   │   ├── onboarding_controller.dart       # Onboarding flow
│   │   ├── patient_controller.dart          # Patient profile management
│   │   ├── register_controller.dart         # User registration
│   │   ├── speciality_controller.dart       # Specialty browsing & filtering
│   │   ├── splash_controller.dart           # Splash screen logic
│   │   └── success_appointment_controller.dart # Booking confirmation
│   │
│   ├── core/                   # 🔧 Core Configuration & Utilities
│   │   ├── config.dart         # App-wide configuration constants
│   │   ├── constant/           # Constants (colors, fonts, images, routes)
│   │   │   ├── app_color.dart
│   │   │   ├── app_font.dart
│   │   │   ├── app_image.dart
│   │   │   └── app_route.dart
│   │   ├── functions/          # Utility functions
│   │   │   ├── validation.dart
│   │   │   └── helpers.dart
│   │   ├── services/           # Infrastructure services
│   │   │   └── storage_service.dart
│   │   └── theme/              # App theming
│   │       └── app_theme.dart
│   │
│   ├── data/                   # 💾 Data Layer
│   │   ├── model/              # Data models & entities
│   │   │   ├── appointment_model.dart
│   │   │   ├── doctor_model.dart
│   │   │   ├── speciality_model.dart
│   │   │   └── user_model.dart
│   │   └── repositories/       # Repository pattern for data access
│   │       ├── filter_repository.dart
│   │       ├── navigation_repository.dart
│   │       ├── onboarding_repository.dart
│   │       └── speciality_repository.dart
│   │
│   ├── middleware/             # 🛡️ Route Guards & Middleware
│   │   ├── auth_middleware.dart          # Authentication protection
│   │   └── onboarding_middleware.dart    # First-launch handling
│   │
│   ├── router/                 # 🗺️ App Navigation
│   │   └── index.dart          # Centralized route configuration
│   │
│   ├── shared/                 # 🎨 Reusable Widgets & Components
│   │   ├── buttons/            # Custom button widgets
│   │   ├── custom_expansion_tile.dart
│   │   ├── custom_range_slider.dart
│   │   ├── popular_doctor_card.dart
│   │   ├── doctor_card.dart
│   │   ├── specialty_card.dart
│   │   └── ...more widgets
│   │
│   └── views/                  # 📱 UI Screens & Pages
│       ├── splash_screen.dart
│       ├── initial/            # Welcome/initial screen
│       ├── onboarding/         # Onboarding flow screens
│       ├── authentification/   # Login & registration
│       ├── home/               # Home dashboard
│       ├── speciality/         # Specialty browsing & doctor list
│       ├── doctor_detail/      # Doctor profile page
│       ├── appointment/        # Appointment booking
│       ├── calendar/           # Appointment calendar & history
│       ├── patient/            # Patient profile
│       └── success-appointment/ # Booking confirmation
│
├── test/                       # 🧪 Unit & Widget Tests
│   └── widget_test.dart
│
├── .env                        # 🔐 Environment variables (Supabase keys)
├── pubspec.yaml                # 📦 Dependencies & assets
├── analysis_options.yaml       # 📋 Linting rules
└── README.md                   # 📖 This file
```

### 📁 Directory Breakdown

#### **Controllers**

State management and business logic using GetX pattern. Each controller manages a specific feature's state and operations.

#### **Core**

Foundation of the app with constants, configurations, utilities, and services that are used throughout the application.

#### **Data**

Contains all data-related code including models (data structures) and repositories (data access layer).

#### **Middleware**

Route protection and conditional navigation logic (e.g., redirect to login if not authenticated).

#### **Router**

Centralized routing configuration using GetX navigation with named routes.

#### **Shared**

Reusable UI components and widgets that are used across multiple screens.

#### **Views**

All UI screens organized by feature, each containing the presentation layer code.

```

---

## 🏗️ Architecture & Design Patterns

نبض follows **Clean Architecture** principles with clear separation of concerns for maintainability and scalability.

### Architecture Layers

```

┌─────────────────────────────────────────────────────┐
│ Presentation Layer (Views) │
│ │
│ • UI Screens & Widgets │
│ • User Interactions │
└──────────────────┬──────────────────────────────────┘
│
┌──────────────────▼──────────────────────────────────┐
│ Business Logic Layer (Controllers) │
│ │
│ • GetX Controllers │
│ • State Management │
│ • Business Rules │
└──────────────────┬──────────────────────────────────┘
│
┌──────────────────▼──────────────────────────────────┐
│ Data Layer (Repositories & Models) │
│ │
│ • Data Models │
│ • Repository Pattern │
│ • Data Source Abstraction │
└──────────────────┬──────────────────────────────────┘
│
┌──────────────────▼──────────────────────────────────┐
│ Infrastructure Layer (Services & Core) │
│ │
│ • Supabase Integration │
│ • Local Storage │
│ • Utilities & Helpers │
└─────────────────────────────────────────────────────┘

````

### Design Patterns Implemented

#### 1️⃣ **Repository Pattern**
Abstracts data sources and provides a clean API for data access.
```dart
// Example: SpecialityRepository
class SpecialityRepository {
  Future<List<Speciality>> getAllSpecialities();
  Future<List<Doctor>> getDoctorsBySpeciality(int specialityId);
}
````

#### 2️⃣ **MVC Pattern with GetX**

- **Model**: Data structures in `data/model/`
- **View**: UI screens in `views/`
- **Controller**: Business logic in `controllers/`

#### 3️⃣ **Dependency Injection**

Using GetX for service and controller injection:

```dart
Get.lazyPut(() => HomeController());
Get.find<StorageService>();
```

#### 4️⃣ **Middleware Pattern**

Route guards for authentication and onboarding:

```dart
GetMiddleware: AuthMiddleware, OnboardingMiddleware
```

#### 5️⃣ **Service Layer**

Centralized services for infrastructure concerns:

- `StorageService`: Local data persistence
- Supabase client: Backend operations

### Key Architectural Benefits

✅ **Separation of Concerns**: Each layer has a distinct responsibility  
✅ **Testability**: Easy to unit test controllers and repositories  
✅ **Maintainability**: Changes in one layer don't affect others  
✅ **Scalability**: Easy to add new features without refactoring  
✅ **Reusability**: Shared widgets and utilities promote code reuse  
✅ **Type Safety**: Strong typing with Dart throughout the codebase

---

## 🚀 Getting Started

### 📋 Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter SDK** (3.9.2 or higher) - [Install Flutter](https://flutter.dev/docs/get-started/install)
- **Dart SDK** (3.9.2 or higher) - Included with Flutter
- **Git** - [Install Git](https://git-scm.com/downloads)
- **IDE**:
  - [Android Studio](https://developer.android.com/studio) (recommended)
  - [VS Code](https://code.visualstudio.com/) with Flutter extensions
- **Mobile Emulator** or **Physical Device**:
  - Android: Android Studio AVD
  - iOS: Xcode Simulator (macOS only)

### 📥 Installation

#### 1️⃣ Clone the Repository

```bash
git clone https://github.com/LaithMahdi/nabth.git
cd nabth
```

#### 2️⃣ Install Dependencies

```bash
flutter pub get
```

#### 3️⃣ Configure Environment Variables

Create a `.env` file in the root directory:

```env
SUPABASE_URL=your_supabase_project_url
SUPABASE_ANON_KEY=your_supabase_anon_key
```

> 📝 **Note**: Get your Supabase credentials from [Supabase Dashboard](https://app.supabase.com/)

#### 4️⃣ Verify Installation

```bash
flutter doctor
```

Fix any issues reported by Flutter Doctor.

### ▶️ Running the App

#### Development Mode

```bash
# Run on connected device/emulator
flutter run

# Run on specific platform
flutter run -d android
flutter run -d ios
flutter run -d chrome    # For web
flutter run -d windows   # For Windows desktop
```

#### Hot Reload & Hot Restart

While the app is running:

- Press `r` for hot reload
- Press `R` for hot restart
- Press `q` to quit

### 🗄️ Database Setup (Supabase)

> **ملاحظة:** يتضمّن المشروع ملف `supabase/schema.sql` جاهزاً يحتوي على جميع الجداول، سياسات الأمان (RLS) وبيانات تجريبية. افتح محرر SQL في لوحة Supabase الخاصة بمشروعك والصق محتوى الملف ثم نفّذه مباشرة.

#### Create Tables in Supabase

##### 1. **Speciality Table**

```sql
CREATE TABLE speciality (
  id BIGSERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  icon TEXT,
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

##### 2. **Doctor Table**

```sql
CREATE TABLE doctor (
  id BIGSERIAL PRIMARY KEY,
  full_name TEXT NOT NULL,
  description TEXT,
  image TEXT,
  price DECIMAL(10, 2),
  experience_number INTEGER,
  rating_number INTEGER,
  patient_number INTEGER,
  speciality INTEGER REFERENCES speciality(id),
  availability TEXT,
  status TEXT DEFAULT 'offline',
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

##### 3. **Patient Table**

```sql
CREATE TABLE patient (
  id BIGSERIAL PRIMARY KEY,
  full_name TEXT NOT NULL,
  email TEXT,
  phone_number BIGINT,
  gender TEXT,
  age INTEGER,
  detail TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

##### 4. **Appointment Table**

```sql
CREATE TABLE appointment (
  id BIGSERIAL PRIMARY KEY,
  user_id UUID REFERENCES auth.users(id),
  doctor_id BIGINT REFERENCES doctor(id),
  patient_id BIGINT REFERENCES patient(id),
  consultation_type TEXT,
  consultation_fee TEXT,
  date TEXT,
  time TEXT,
  status TEXT DEFAULT 'pending',
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

#### Insert Sample Data

##### Insert Specialities:

```sql
INSERT INTO speciality (name, icon, is_active) VALUES
('Dentist', 'dentist_icon', true),
('Ophthalmologist', 'eye_icon', true),
('ENT Specialist', 'ent_icon', true),
('Otologist', 'ear_icon', true),
('Gynecologist', 'gynecologist_icon', true),
('Cardiologist', 'heart_icon', true),
('Gastroenterologist', 'gastro_icon', true),
('Neurologist', 'neuro_icon', true);
```

##### Insert Sample Doctors:

```sql
INSERT INTO doctor (full_name, description, image, price, experience_number, rating_number, patient_number, speciality) VALUES
('Dr. Sarah Johnson', 'Experienced dentist with 10+ years in cosmetic and general dentistry', 'doctor_1.jpg', 120.50, 10, 4, 2500, 1),
('Dr. Michael Chen', 'Specialized in cataract surgery and laser eye treatments', 'doctor_2.jpg', 180.75, 15, 5, 3200, 2),
('Dr. James Wilson', 'Expert in ear, nose and throat disorders with focus on pediatric ENT', 'doctor_3.jpg', 155.00, 12, 4, 1800, 3),
('Dr. Emma Rodriguez', 'Otology specialist with expertise in hearing disorders and implants', 'doctor_4.jpg', 165.25, 8, 4, 1200, 4),
('Dr. Lisa Thompson', 'Gynecology and obstetrics specialist with focus on women''s health', 'doctor_5.jpg', 135.00, 14, 5, 2800, 5),
('Dr. Robert Davis', 'Cardiologist specializing in interventional cardiology and heart failure', 'doctor_6.jpg', 220.00, 20, 5, 4500, 6),
('Dr. Amanda Lee', 'Gastroenterologist expert in endoscopic procedures and digestive health', 'doctor_7.jpg', 175.50, 11, 4, 1900, 7),
('Dr. Thomas Brown', 'Neurologist with specialization in movement disorders and epilepsy', 'doctor_8.jpg', 195.75, 16, 5, 3100, 8);
```

#### Enable Row Level Security (RLS)

```sql
-- Enable RLS on tables
ALTER TABLE appointment ENABLE ROW LEVEL SECURITY;

-- Policy: Users can only see their own appointments
CREATE POLICY "Users can view own appointments" ON appointment
  FOR SELECT USING (auth.uid() = user_id);

-- Policy: Users can create their own appointments
CREATE POLICY "Users can create appointments" ON appointment
  FOR INSERT WITH CHECK (auth.uid() = user_id);

-- Policy: Users can update their own appointments
CREATE POLICY "Users can update own appointments" ON appointment
  FOR UPDATE USING (auth.uid() = user_id);
```

### 🏗️ Build for Production

#### Android

```bash
# Build APK
flutter build apk --release

# Build App Bundle (for Google Play Store)
flutter build appbundle --release

# Output: build/app/outputs/flutter-apk/app-release.apk
```

#### iOS

```bash
# Build iOS app (requires macOS)
flutter build ios --release

# Build for App Store
flutter build ipa --release
```

#### Web

```bash
flutter build web --release

# Output: build/web/
```

#### Desktop

```bash
# Windows
flutter build windows --release

# macOS
flutter build macos --release

# Linux
flutter build linux --release
```

---

## 🧪 Testing

### Run All Tests

```bash
flutter test
```

### Run Specific Test

```bash
flutter test test/widget_test.dart
```

### Generate Coverage Report

```bash
flutter test --coverage
```

---

## 📱 Platform Support

| Platform   | Status       | Notes                  |
| ---------- | ------------ | ---------------------- |
| 🤖 Android | ✅ Supported | API 21+ (Android 5.0+) |
| 🍎 iOS     | ✅ Supported | iOS 12.0+              |
| 🌐 Web     | ✅ Supported | Modern browsers        |
| 🪟 Windows | ✅ Supported | Windows 10+            |
| 🐧 Linux   | ✅ Supported | Ubuntu, Debian, Fedora |
| 🍏 macOS   | ✅ Supported | macOS 10.14+           |

---

## 🤝 Contributing

We welcome contributions! Here's how you can help:

### Development Workflow

1. **Clone the Repository**

   ```bash
   git clone https://github.com/LaithMahdi/nabth.git
   cd nabth
   ```

2. **Create a Feature Branch**

   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make Your Changes**

   - Follow the existing code style
   - Write meaningful commit messages
   - Add tests if applicable
   - Test your changes thoroughly

4. **Commit Your Changes**

   ```bash
   git add .
   git commit -m "feat: add new feature"
   ```

5. **Push Your Branch**

   ```bash
   git push origin feature/your-feature-name
   ```

6. **Create a Pull Request**

   - Go to the repository on GitHub
   - Click on "Pull Requests" and then "New Pull Request"
   - Select your feature branch and create the PR

### Coding Standards

- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
- Use meaningful variable and function names
- Write comments for complex logic
- Keep functions small and focused
- Run `flutter analyze` before committing

### Commit Message Format

```
<type>: <subject>

<body>

<footer>
```

**Types**: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`

---

## 📄 License

This project is private and not published to any package repository.  
© 2025 نبض. All rights reserved.

---

## 👨‍💻 Author & Contact

**Developed by**: [LaithMahdi](https://github.com/LaithMahdi)

- 📧 Email: [Contact via GitHub](https://github.com/LaithMahdi)
- 🐙 GitHub: [@LaithMahdi](https://github.com/LaithMahdi)
- 📺 YouTube: [Tutorial Playlist](https://www.youtube.com/playlist?list=PLGwhLIITEIB_u-pBiiUxAf3Kz3Nu9VAY8)

---

## 🙏 Acknowledgments

- [Flutter](https://flutter.dev) - Google's UI toolkit
- [Supabase](https://supabase.com) - Open source Firebase alternative
- [GetX](https://pub.dev/packages/get) - State management solution
- All open-source package contributors

---

## 📊 Project Stats

![Version](https://img.shields.io/badge/version-1.0.0+1-blue)
![Flutter](https://img.shields.io/badge/flutter-3.9.2+-02569B)
![Dart](https://img.shields.io/badge/dart-3.9.2+-0175C2)

---

## 🗺️ Roadmap

### Planned Features

- [ ] 💬 In-app chat with doctors
- [ ] 📞 Video consultation integration
- [ ] 💳 Payment gateway integration
- [ ] 📝 Medical records management
- [ ] 🔔 Push notifications for appointments
- [ ] 🌍 Multi-language support
- [ ] 🌙 Dark mode theme
- [ ] 📊 Analytics dashboard for doctors
- [ ] ⭐ Doctor reviews and ratings system
- [ ] 🏥 Hospital/clinic location integration

---

<div align="center">

### Made with ❤️ using Flutter

**نبض** - _Connecting Patients with Healthcare Professionals_

[⬆ Back to Top](#-nabth)

</div>
