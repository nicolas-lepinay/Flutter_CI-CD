import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_app/main.dart' as app;

void main() {
  group('App Test', () {
    //final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    //binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

    testWidgets("Full App Test", (tester) async {
      // Exécuter la fonction main() de l'app
      app.main();
      // Attendre que l'app soit stabilisée (pas d'animation, etc.)
      await tester.pumpAndSettle(const Duration(seconds: 5));

      // Créer des finders pour les widgets
      final loginFormField = find.byKey(const Key('loginTextField'));
      final passwordFormField = find.byKey(const Key('passwordTextField'));
      final loginButton = find.byKey(const Key('loginButton'));

      expect(loginFormField, findsOneWidget);
      expect(passwordFormField, findsOneWidget);
      expect(loginButton, findsOneWidget);
    });
  });
}
