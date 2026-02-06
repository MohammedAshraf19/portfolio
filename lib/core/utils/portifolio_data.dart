import 'package:portfolio/core/utils/icons.dart';
import 'package:portfolio/core/utils/image.dart';
import 'package:portfolio/features/about/models/skill_item_model.dart';
import 'package:portfolio/features/projects/models/project_model.dart';

class PortifolioData {
  // User Data
  static const name = 'Mohammed Ashraf';
  static const jobTitle = 'Flutter Developer';
  static const description =
      'I\'m a dedicated Flutter Developer passionate about building innovative, visually stunning, and highly functional mobile apps. With a blend of creativity, technical expertise, and a user-centered approach, I transform ideas into seamless digital experiences';
  static const contactDescription =
      'I\'m always open to new opportunities and collaborations.\nIf you have a project in mind or just want to connect, feel free to reach out to me!';
  static const about =
      'I\'m a motivated and detail-oriented Flutter Developer with a solid foundation in mobile app development, object-oriented programming, and problem-solving. Recently graduated with a B.Tech in Information Technology from the University of Zagazig.';

  // User Contacts
  static const linkedIn =
      'https://www.linkedin.com/in/mohammed-ashraf-928619393';
  static const gitHub = 'https://github.com/MohammedAshraf19';
  static const gmail = 'mohamedasharf55@gmail.com';
  static const resume =
      'https://drive.google.com/file/d/1BJ8IyYkpW-bW1ep5ifA6UkZqcXWOwyqI/view?usp=sharing';

  // User Skills
  static final List<SkillItemModel> skills = [
    SkillItemModel(skillImage: IconLinks.flutter, skillName: 'Flutter'),
    SkillItemModel(skillImage: IconLinks.dart, skillName: 'Dart'),
    SkillItemModel(skillImage: IconLinks.java, skillName: 'Java'),
    SkillItemModel(skillImage: IconLinks.git, skillName: 'GitHub'),
    SkillItemModel(skillImage: IconLinks.firebase, skillName: 'Firebase'),
    SkillItemModel(skillImage: IconLinks.sqflite, skillName: 'SQflite'),
    SkillItemModel(skillImage: IconLinks.figma, skillName: 'Figma'),
  ];

  // Projects Data
  static List<ProjectModel> projects = [
    ProjectModel(
        link: 'https://github.com/MohammedAshraf19/NASA_Farmers',
        image: ImageLinks.nasa,
        name: 'NASA Farmers',
        descriptio:
            'mobile application developed to help farmers make data-driven decisions for better agricultural outcomes. Leveraging NASA Earth Observation Data, the app provides farmers with critical insights such as soil moisture, wind speed, and temperature to optimize crop selection and predict potential agricultural risks.',
        tools: ['Figma', 'RESTful API', 'Cubit', 'Map', 'Animations']),
    ProjectModel(
        link: 'https://github.com/MohammedAshraf19/Human_Activity_Recognition',
        image: ImageLinks.har,
        name: 'Human Activity Recognition',
        descriptio:
            'a comprehensive mobile application designed for detecting activities and falls among elderly individuals, providing timely notifications to mentors for immediate assistance. The app utilizes mobile sensors and machine learning models to achieve this functionality',
        tools: [
          'Figma',
          'RESTful API',
          'Cubit',
          'Socket',
          'Sensors',
          'Map',
          'Responsive'
        ]),
    ProjectModel(
        link: 'https://github.com/MohammedAshraf19/Book-App',
        image: ImageLinks.bookApp,
        name: 'Book App',
        descriptio:
            'A Flutter application where users can read books, search for books, view author information, and get suggestions for similar books. The app integrates user profiles and directs users to web-based PDFs for reading.',
        tools: [
          'Firebase',
          'RESTful API',
          'Google Auth',
          'Cubit',
          'Animations'
        ]),
    ProjectModel(
        link: 'https://github.com/MohammedAshraf19/MovieApp',
        image: ImageLinks.movieApp2,
        name: 'Movie App',
        descriptio:
            'A movie app that lets users explore films, watch trailers, view details, and search for their favorites.',
        tools: ['Firebase', 'API', 'Cubit', 'Animation']),
    ProjectModel(
        link: 'https://github.com/MohammedAshraf19/in_media',
        image: ImageLinks.social,
        name: 'InMedia',
        descriptio:
            'A social app enabling users to register, log in, create posts, and chat. It supports dark/light mode, uses Cubit for state management, Firebase for authentication, and Lottie for animations.',
        tools: ['Firebase', 'Cubit', 'Animation']),
  ];
}
