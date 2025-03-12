List<DevIcon> platformItem = [
  DevIcon(title: 'Flutter', svgIcon: 'assets/svg/flutter-original.svg'),
  DevIcon(
    title: 'Android Studio',
    svgIcon: 'assets/svg/androidstudio-original.svg',
  ),
  DevIcon(
    title: 'Unity',
    svgIcon: 'assets/svg/unity-original.svg',
  ),
  DevIcon(
    title: 'VS Code',
    svgIcon: 'assets/svg/vscode-original.svg',
  ),
  DevIcon(
    title: 'Visual Studio',
    svgIcon: 'assets/svg/visualstudio-original.svg',
  ),
  DevIcon(title: 'Xcode', svgIcon: 'assets/svg/xcode-original.svg'),

];

List<DevIcon> programmingLang = [
  DevIcon(title: 'Dart', svgIcon: 'assets/svg/dart-original.svg'),
  DevIcon(title: 'Java', svgIcon: 'assets/svg/java-original.svg'),
  DevIcon(
    title: 'C#',
    svgIcon: 'assets/svg/csharp-original.svg',
    unlock: false,
  ),
  DevIcon(title: 'Kotlin', svgIcon: 'assets/svg/kotlin-original.svg'),
  DevIcon(
    title: 'Swift',
    svgIcon: 'assets/svg/swift-original.svg',
    unlock: false,
  ),
  DevIcon(
    title: 'HTML5',
    svgIcon: 'assets/svg/html5-original.svg',
    unlock: false,
  ),
  DevIcon(
    title: 'CSS3',
    svgIcon: 'assets/svg/css3-original.svg',
    unlock: false,
  ),
  DevIcon(
    title: 'Godot',
    svgIcon: 'assets/svg/godot-original.svg',
    unlock: false,
  ),
  DevIcon(
    title: '3D/2D',
    svgIcon: 'assets/svg/unity-original.svg',
    unlock: false,
  ),
  DevIcon(
    title: 'AR/VR/XR',
    svgIcon: 'assets/svg/unity-original.svg',
    unlock: false,
  ),
];

class DevIcon {
  final String title;
  final String svgIcon;
  final bool? unlock;

  DevIcon({required this.svgIcon, required this.title, this.unlock = true});
}
