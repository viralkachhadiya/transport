## Truck Transportation

A new Clean Architecture Flutter Mobile project.

### Project Structure
Every feature is very well separated from each other and inside the feature, the UI code and business logic is separated as per 'Clean Architecture + Domain driven architecture' thereby providing the separation of concern.

    transport-app

        │
        ├─ lib
        │   ├── core
        │   │   ├── app
        │   │   |     ├── app.dart
        │   │   |     └── app_bloc_observer.dart
        │   │   ├── constants
        │   │   │     ├── colors_constants.dart
        |   |   |     └── string_constants.dart
        │   │   ├── di
        │   │   |     └── injection_container.dart
        │   │   ├── router
        │   │   |     └── auth_guard.dart
        │   │   |     └── route_management.dart
        │   │   |     └── route_management.gr.dart
        │   │   |     └── router_path.dart
        │   │   ├── theme
        │   │   |     └── app_text_theme.dart
        │   │   └── widgets
        │   │         └── stepper.dart
        │   ├── features
        |   │      ├── account
        |   │      │    ├── data
        |   │      |    |      ├── models
        |   │      |    |      └── repository
        |   │      |    ├── domain
        |   │      |    |      └── repository
        |   │      |    ├── presentation
        |   │      |    |     ├── bloc   
        |   │      |    |     ├── view
        |   │      |    |     |     └── account_view.dart      
        |   │      |    |     └── widgets   
        |   │      |    └── account.dart(export file) 
        |   │      ├── dashboard
        |   │      │    ├── data
        |   │      |    |      ├── models
        |   │      |    |      └── repository
        |   │      |    ├── domain
        |   │      |    |      └── repository
        |   │      |    ├── presentation
        |   │      |    |     ├── bloc   
        |   │      |    |     ├── view
        |   │      |    |     |     └── dashboard_view.dart     
        |   │      |    |     └── widgets   
        |   │      |    └── dashboard.dart(export file)
        |   |      ├── home
        |   │      │    ├── data
        |   │      |    |      ├── models
        |   │      |    |      └── repository
        |   │      |    ├── domain
        |   │      |    |      └── repository
        |   │      |    ├── presentation
        |   │      |    |     ├── bloc   
        |   │      |    |     ├── view
        |   │      |    |     |     └── home_view.dart     
        |   │      |    |     └── widgets   
        |   │      |    └── home.dart(export file)
        |   |      ├── my_loads
        |   │      │    ├── data
        |   │      |    |      ├── models
        |   │      |    |      └── repository
        |   │      |    ├── domain
        |   │      |    |      └── repository
        |   │      |    ├── presentation
        |   │      |    |     ├── bloc   
        |   │      |    |     ├── view
        |   │      |    |     |     ├── my_load_view.dart
        |   |      |    |     |     ├── my_order_view.dart
        |   |      |    |     |     ├── truck_details_view.dart
        |   │      |    |     └── widgets
        |   │      |    |           └── my_load_card.dart 
        |   |      |    |
        |   │      |    └── my_loads.dart(export file)
        |   |── bootstrap.dart
        │   └── main.dart
        │   
        ├─- packages
        │   ├── transport_mock_library
        │   │       ├── src
        │   │       |    ├── models
        │   │       |    |    └── my_load.dart
        │   │       |    |    └── order_details.dart
        │   │       |    |    └── truck_details.dart
        │   │       |    |    └── model.dart (export file) 
        │   │       |    ├── repository
        │   │       |    |    └── my_load_repository_impl.dart
        │   │       |    |    └── my_load_repository_mock.dart
        │   │       |    |    └── my_load_repository.dart
        │   │       |    |    └── order_details_repository_impl.dart
        │   │       |    |    └── order_details_repository_mock.dart
        │   │       |    |    └── order_details_repository.dart   
        │   │       |    |    └── truck_details_repository_impl.dart
        │   │       |    |    └── truck_details_repository_mock.dart
        │   │       |    |    └── truck_details_repository.dart         
        │   │       |    |    └── repository.dart (export file) 
        │   │       |    └── src.dart (export file) 
        │   │       └── transport_mock_library.dart (export file)
        |   ├── pubspec.lock
        |   └── pubspec.yaml
        ├─- test (includes unit tests)
        ├── pubspec.lock
        └── pubspec.yaml

### How to run the mobile application
You need to write this command line on terminal.

### Installation
```yaml
dependencies:        
  auto_route: ^5.0.4
        
dev_dependencies:        
  auto_route_generator: ^5.0.3
  build_runner: 
```

### Setup And Usage

The router class will be in `lib/core/router/route_management.dart`

This cmd run the build process
```
flutter clean
flutter pub get
# https://flutter.dev/docs/development/data-and-backend/json#generating-code-continuously
flutter pub run build_runner watch --delete-conflicting-outputs
```

### Check App Photos

The screen shorts will be in `assets/*`
