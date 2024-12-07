import 'package:flutter/material.dart';

class Onbordscreen extends StatefulWidget {
  const Onbordscreen({super.key});

  @override
  State<Onbordscreen> createState() => _OnbordscreenState();
}

class _OnbordscreenState extends State<Onbordscreen> {
  final PageController pageController = PageController();

  int currentPage = 0;

  final List<OnboardingContent> contents = [
    OnboardingContent(
      title: 'Find your Favorite Food',
      description: 'Discover the best foods from over 1,000 restaurants',
      image: 'restaurant_menu',
    ),
    OnboardingContent(
      title: 'Thejas',
      image: 'delivery_dining',
      description: 'Discover the best foods from over 1,000 restaurants',
    ),
    OnboardingContent(
      title: 'Thejas',
      image: 'location_on',
      description: 'Discover the best foods from over 1,000 restaurants',
    ),
  ];

  @override
  void dispose() {
    // TODO: implement dispose
    pageController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(onPressed: () {}, child: Text('Skip')),
            ),
            Expanded(
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange.shade50,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          _gerIconData(contents[index].image),
                          size: 100,
                          color: Colors.deepOrange,
                        ),
                      ),
                      SizedBox(height: 35),
                      Text(
                        contents[index].title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 35),
                      Text(
                        contents[index].description,
                      ),
                    ],
                  );
                },
                itemCount: contents.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _gerIconData(String iconName) {
    switch (iconName) {
      case 'restaurant_menu':
        return Icons.restaurant_menu;
      case 'delivery_dining':
        return Icons.delivery_dining;
      case 'location_on':
        return Icons.location_on;
      default:
        return Icons.error;
    }
  }
}

class OnboardingContent {
  final String title;
  final String description;
  final String image;

  OnboardingContent({
    required this.title,
    required this.description,
    required this.image,
  });
}
