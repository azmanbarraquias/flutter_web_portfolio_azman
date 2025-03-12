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

List<ProjectUtils> workProject = [
  ProjectUtils(
    webLink: 'https://heytalk.info/',
    image: 'assets/heytalk.png',
    title: 'HeyTalk Application',
    subtitle: 'Heytalk app (https://heytalk.info), where I contributed to both the UI design and the implementation of several key functionalities, enhancing the overall user experience and app performance.',
  ),
  ProjectUtils(
    webLink: 'https://heytalk.info/',
    image: 'assets/luckyhey.png',
    title: 'LuckyDog Application',
    subtitle: 'I have been an integral part of the LuckyDog application, a Chinese app that is currently private and not yet available to the public. My contributions include implementing key elements of the user interface and fixing bugs, which significantly enhanced the overall user experience of the app.',
  ),
  ProjectUtils(
    image: 'assets/pyramid_escape.png',
    title: 'Pyramid Escape',
    subtitle: 'Pyramid Escape is an exciting discrete math practice game designed to help you sharpen your skills while having fun!',
  ),
];

List<ProjectUtils> hobbyProject = [
  ProjectUtils(
    webLink: 'https://heytalk.info/',
    image: 'assets/turo_agham.png',
    title: 'Turo Agham',
    subtitle: 'Heytalk app (https://heytalk.info), where I contributed to both the UI design and the implementation of several key functionalities, enhancing the overall user experience and app performance.',
  ),
  ProjectUtils(
    webLink: 'https://heytalk.info/',
    image: 'assets/flutter_icon_finder.png',
    title: 'Flutter Icon Finder',
    subtitle: 'Collection of flutter build in icon where you can search and copy paste the code.',
  ),
  ProjectUtils(
    webLink: 'https://heytalk.info/',
    image: 'assets/images/Gemini_Generated_Image_9dpo2f9dpo2f9dpo.jpg',
    title: 'All in one flutter learning app',
    subtitle: 'This project is still in development',
  ),
];

