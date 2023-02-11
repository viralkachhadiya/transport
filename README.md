## Truck Transportation

A new Flutter Mobile project.

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