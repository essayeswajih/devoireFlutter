import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const paysList = [
    {
      "pays": "Tunisie",
      "capitale": "Tunis",
      "population": "12 million",
      "Langue": "Arabe",
      "drapeau": "assets/images/drapeaux/tn.png",
    },
    {
      "pays": "Maroc",
      "capitale": "Rabat",
      "population": "37 million",
      "Langue": "Arabe",
      "drapeau": "assets/images/drapeaux/ma.png",
    },
    {
      "pays": "USA",
      "capitale": "Washington D.C.",
      "population": "331 million",
      "Langue": "English",
      "drapeau": "assets/images/drapeaux/us.png",
    },
    {
      "pays": "France",
      "capitale": "Paris",
      "population": "67 million",
      "Langue": "French",
      "drapeau": "assets/images/drapeaux/fr.png",
    },
    {
      "pays": "Brésil",
      "capitale": "Brasilia",
      "population": "213 million",
      "Langue": "Portugais",
      "drapeau": "assets/images/drapeaux/br.png",
    },
  ];

  Map<String, String>? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Atlas du Monde",
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: const [Icon(Icons.login_outlined)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Cliquez sur un pays",
              style: TextStyle(color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var pays in paysList)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedCountry = pays;
                          });
                        },
                        child: Text(pays["pays"]!),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            if (selectedCountry != null)
              PaysDetails(country: selectedCountry!)
            else
              const Text(
                "Sélectionnez un pays pour afficher les détails.",
                style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.ac_unit),
      ),
      drawer: const Drawer(),
    );
  }
}

class PaysDetails extends StatelessWidget {
  final Map<String, String> country;

  const PaysDetails({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Capitale: ${country['capitale']}",
          style: const TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Text(
          "Population: ${country['population']}",
          style: const TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Text(
          "Langue: ${country['Langue']}",
          style: const TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Image.asset(
          country['drapeau']!,
          height: 100,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
