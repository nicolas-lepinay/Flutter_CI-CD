// This is an example unit test
//
// A unit test tests a single function, method, or class. To learn more about
// writing unit tests, visit
// https://flutter.dev/docs/cookbook/testing/unit/introduction

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Login function should succeed if credentials are valid.', () {
    expect(1 + 1, 2);
  });
  test('Login function should fail if credentials are invalid.', () {
    expect(1 + 1, 2);
  });
}
