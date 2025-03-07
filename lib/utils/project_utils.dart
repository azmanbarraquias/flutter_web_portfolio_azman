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

List<ProjectUtils> hobbyProject = [
  ProjectUtils(
    image: 'assets/images/Gemini_Generated_Image_8zdska8zdska8zds.jpg',
    title: 'Project 1',
    subtitle: 'Project 1 Description',
  ),
  ProjectUtils(
    image: 'assets/images/Gemini_Generated_Image_nnrt6onnrt6onnrt.jpg',
    title: 'Project 2',
    subtitle: 'Project 2 Description',
  ),
  ProjectUtils(
    image: 'assets/images/Gemini_Generated_Image_xqelm5xqelm5xqel.jpg',
    title: 'Project 3',
    subtitle: 'Project 3 Description',
  ),
  ProjectUtils(
    image: 'assets/images/Gemini_Generated_Image_9dpo2f9dpo2f9dpo.jpg',
    title: 'Project 4',
    subtitle: 'Project 4 Description',
  ),
];
