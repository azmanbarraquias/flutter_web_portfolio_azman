class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

const webpURL = "https://azmanbarraquias.github.io/assets/assets/webp";

List<ProjectUtils> workProject = [
  ProjectUtils(
    webLink: 'https://heytalk.info/',
    image: '$webpURL/heytalk.webp',
    title: 'HeyTalk Application',
    subtitle:
        'Heytalk app (https://heytalk.info), where I contributed to both the UI design and the implementation of several key functionalities, enhancing the overall user experience and app performance.',
  ),
  ProjectUtils(
    webLink: 'https://heytalk.info/',
    image: '$webpURL/luckyheytalk.webp',
    title: 'LuckyDog Application',
    subtitle:
        'I have been an integral part of the LuckyDog application, a Chinese app that is currently private and not yet available to the public. My contributions include implementing key elements of the user interface and fixing bugs, which significantly enhanced the overall user experience of the app.',
  ),
  ProjectUtils(
    webLink: 'https://github.com/azmanbarraquias/pyramid-escape-dm',
    image: '$webpURL/pyramid_escape.webp',
    title: 'Pyramid Escape',
    subtitle:
        'Pyramid Escape is an exciting discrete math practice game designed to help you sharpen your skills while having fun!',
  ),
];

List<ProjectUtils> hobbyProject = [
  ProjectUtils(
    webLink: 'https://github.com/azmanbarraquias/Turo-Agham-AR',
    image: '$webpURL/turo_agham.webp',
    title: 'Turo Agham',
    subtitle:
        'Heytalk app (https://heytalk.info), where I contributed to both the UI design and the implementation of several key functionalities, enhancing the overall user experience and app performance.',
  ),
  ProjectUtils(
    webLink: 'https://github.com/azmanbarraquias/flutter_reviewer_2025v1',
    image: '$webpURL/flutter_icon_finder.webp',
    title: 'Flutter Icon Finder',
    subtitle:
        'Collection of flutter build in icon where you can search and copy paste the code.',
  ),
  ProjectUtils(
    webLink: 'https://github.com/azmanbarraquias/flutter_reviewer_2025v1',
    image: '$webpURL/flutter_all.webp',
    title: 'All in one flutter learning app',
    subtitle: 'This project is still in development',
  ),
];
