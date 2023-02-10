import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:transport/core/app/app.dart';

void bootstrap() {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(const TransportApp()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
