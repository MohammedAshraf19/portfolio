class ProjectModel {
  final String image;
  final String name;
  final String descriptio;
  final String? link;
  final List<String> tools;

  ProjectModel(
      {required this.image,
      required this.name,
      required this.descriptio,
      required this.tools,
      required this.link});
}
