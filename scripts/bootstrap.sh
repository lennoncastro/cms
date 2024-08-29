# shellcheck disable=SC2044
for dir in $(find ./ -type d -name "cms_*" -not -path "*/.dart_tool/build/generated/*");
do
  echo $dir
  cd $dir
  rm -rf *.lock
  flutter pub get
  flutter pub run build_runner build --delete-conflicting-outputs
  cd ..
done
rm -rf *.lock
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
