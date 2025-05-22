import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Flag Cards',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FlagCardsScreen(),
    );
  }
}

class FlagCardsScreen extends StatelessWidget {
  const FlagCardsScreen({super.key});

  // Sample data for flags (you can expand this with more countries)
  final List<Map<String, String>> countries = const [
    {
      'name': 'Bangladesh',
      'flagUrl': 'https://flagcdn.com/w320/bd.png',
      'population': '169.8 million'
    },
    {
      'name': 'United States',
      'flagUrl': 'https://flagcdn.com/w320/us.png',
      'population': '331.9 million'
    },
    {
      'name': 'Japan',
      'flagUrl': 'https://flagcdn.com/w320/jp.png',
      'population': '125.7 million'
    },
    {
      'name': 'Germany',
      'flagUrl': 'https://flagcdn.com/w320/de.png',
      'population': '83.2 million'
    },
    {
      'name': 'Brazil',
      'flagUrl': 'https://flagcdn.com/w320/br.png',
      'population': '215.3 million'
    },
    {
      'name': 'Australia',
      'flagUrl': 'https://flagcdn.com/w320/au.png',
      'population': '26.0 million'
    },
    {
      'name': 'Canada',
      'flagUrl': 'https://flagcdn.com/w320/ca.png',
      'population': '38.2 million'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Flag Cards'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount;
          // Determine crossAxisCount based on screen width
          if (constraints.maxWidth < 768) {
            // Mobile size
            crossAxisCount = 2;
          } else if (constraints.maxWidth >= 768 &&
              constraints.maxWidth <= 1024) {
            // Tablet size
            crossAxisCount = 3;
          } else {
            // Desktop/Web size
            crossAxisCount = 4;
          }

          return GridView.builder(
            padding: const EdgeInsets.all(16.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.8, // Adjust as needed to fit content
            ),
            itemCount: countries.length,
            itemBuilder: (context, index) {
              return FlagCard(
                countryName: countries[index]['name']!,
                flagUrl: countries[index]['flagUrl']!,
                population: countries[index]['population']!,
              );
            },
          );
        },
      ),
    );
  }
}

class FlagCard extends StatelessWidget {
  final String countryName;
  final String flagUrl;
  final String population;

  const FlagCard({
    super.key,
    required this.countryName,
    required this.flagUrl,
    required this.population,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Similar to box-shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8.0)),
            child: Image.network(
              flagUrl,
              height: 120, // Adjust height as per your design
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.broken_image, size: 80); // Placeholder for error
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Center text content
              children: [
                Text(
                  countryName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'Population: $population',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

