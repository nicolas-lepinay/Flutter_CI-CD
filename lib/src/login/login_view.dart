import 'package:flutter/material.dart';
import 'package:flutter_app/src/sample_feature/sample_item_list_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            const TextField(
              key: Key('loginTextField'),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Identifiant',
              ),
            ),
            const SizedBox(height: 50),
            const TextField(
              key: Key('passwordTextField'),
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mot de passe',
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
                key: const Key('loginButton'),
                onPressed: () {
                  Navigator.restorablePushNamed(context, SampleItemListView.routeName);
                },
                child: const Text('Connexion'))
          ],
        ),
      ),
    );
  }
}
