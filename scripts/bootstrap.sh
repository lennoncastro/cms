for dir in cms_linter cms_network
do
  cd $dir
  rm -rf *.lock
  flutter pub get
  cd ..
done
echo $(pwd)
rm -rf *.lock
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
