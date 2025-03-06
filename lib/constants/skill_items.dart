List<DevIcon> platformItem = [
  DevIcon(
    title: 'Android Studio',
    svgIcon: 'assets/svg/androidstudio-original.svg',
  ),
  DevIcon(
    title: 'Visual Code',
    svgIcon: 'assets/svg/visualstudio-original.svg',
  ),
  DevIcon(title: 'Xcode', svgIcon: 'assets/svg/xcode-original.svg'),
  DevIcon(title: 'Flutter', svgIcon: 'assets/svg/flutter-original.svg'),
];

List<DevIcon> programmingLang = [
  DevIcon(title: 'Dart', svgIcon: 'assets/svg/dart-original.svg'),
  DevIcon(title: 'Java', svgIcon: 'assets/svg/java-original.svg'),
  DevIcon(title: 'C#', svgIcon: 'assets/svg/csharp-original.svg', unlock: false),
  DevIcon(title: 'Swift', svgIcon: 'assets/svg/swift-original.svg'),
  DevIcon(title: 'Dart', svgIcon: 'assets/svg/dart-original.svg'),
  DevIcon(title: 'C#', svgIcon: 'assets/svg/csharp-original.svg'),
  DevIcon(title: 'Swift', svgIcon: 'assets/svg/swift-original.svg', unlock: false),
];

class DevIcon {
  final String title;
  final String svgIcon;
  final bool? unlock;

  DevIcon({required this.svgIcon, required this.title, this.unlock = true});
}
