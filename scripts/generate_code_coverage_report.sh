# shellcheck disable=SC2044
flutter test --coverage --coverage-exclude 'lib/main.dart,lib/src.dart'
genhtml coverage/lcov.info -o coverage/html