import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Emis Ntwiga';
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false, // Set this to false to remove the debug banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image: 'images/dp.jpg',
              ),
              TitleSection(
                name: 'Emis Ntwiga',
                location: 'Mombasa, Kenya',
              ),
              ButtonSection(),
              TextSection(
                description: 'I\'m Emis, a dedicated professional with a Bachelor\'s degree in Business and Information Technology.My expertise lies in developing robust and user-friendly applications. Currently, I am developing TideTrade, a service based e-commerce platform to connect service providers with customers seamlessly. In addition to my technical skills, I am deeply committed to empowering the next generation of tech enthuasiasts. ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
    required this.name,
    required this.location,
  }) : super(key: key);

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('5'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
            url: 'tel:+1234567890',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
            url: 'https://www.google.com/maps/place/Nairobi,+Kenya',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
            url: 'https://example.com',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    Key? key,
    required this.color,
    required this.icon,
    required this.label,
    required this.url,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String label;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }

}

class TextSection extends StatelessWidget {
  const TextSection({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 300,
      height: 300,
      fit: BoxFit.cover,
    );
  }
}