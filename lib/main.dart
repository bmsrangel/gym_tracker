import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:realm/realm.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() {
  Realm.logger.level = RealmLogLevel.trace;
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
