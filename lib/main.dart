import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> languages = const [
    'C',
    'Java',
    'Javascript',
    'Python',
    'Dart'
  ];

  final List<String> frontEnd = const [
    'Html',
    'Css',
    'ReactJS',
    'Flutter',
    'Bootstrap',
  ];

  final List<String> backEnd = const [
    'NodeJS',
    'ExpressJS'
  ];
  final youtubeUrl =
      Uri.parse('');
  final githubUrl = Uri.parse('https://github.com/nithinmp0319');
  final instagramUrl = Uri.parse('https://www.instagram.com/_nithin__nithin___/');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 400,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/L.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black,
                              Colors.black.withOpacity(.3),
                            ]),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              "Nithin MP",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Coder ",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  "Software Developer",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "I specialize as a Backend Developer. I'm obsessed with making cool things on the internet, interested in web and mobile development and i'm starving to learn new stuff! I'm confident in my ability to create high-quality web and mobile applications.",
                          style: TextStyle(
                            color: Colors.grey,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          "Education",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "B.Tech EC,DSU",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          "Nationality",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Indian guy who writes, speaks and breathes in binary",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          "Skills",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Languages",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            itemCount: languages.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              final language = languages[index];
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Chip(
                                  label: Text(language),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Front-End",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            itemCount: frontEnd.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              final frontend = frontEnd[index];
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Chip(
                                  label: Text(frontend),
                                ),
                              );
                            },
                          ),
                        ),
                        const Text(
                          "Back-End",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            itemCount: backEnd.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              final backend = backEnd[index];
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Chip(
                                  label: Text(backend),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Projects",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              makeProject(image: 'assets/images/project-2.png'),
                              makeProject(image: 'assets/images/project-2.png'),
                              makeProject(image: 'assets/images/project-2.png'),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: const Color.fromRGBO(66, 66, 66, 1),
            gap: 8,
            padding: const EdgeInsets.all(16),
            tabs: [
              const GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: FontAwesomeIcons.github,
                text: 'Github',
                onPressed: () {
                  launchUrl(
                    githubUrl,
                    mode: LaunchMode.inAppWebView,
                  );
                },
              ),
              GButton(
                icon: FontAwesomeIcons.instagram,
                text: 'Instagram',
                onPressed: () {
                  launchUrl(
                    instagramUrl,
                    mode: LaunchMode.inAppWebView,
                  );
                },
              ),
              GButton(
                icon: FontAwesomeIcons.youtube,
                text: 'Youtube',
                onPressed: () {
                  launchUrl(
                    youtubeUrl,
                    mode: LaunchMode.inAppWebView,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  makeProject({image}) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3),
              ],
            ),
          ),
          child: Align(
            child: InkWell(
              onTap: () {
                launchUrl(
                  githubUrl,
                  mode: LaunchMode.inAppWebView,
                );
              },
              child: const Icon(
                FontAwesomeIcons.github,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
