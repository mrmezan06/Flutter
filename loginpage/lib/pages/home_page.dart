import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> logos = [
      'lib/logo/acer.png',
      'lib/logo/adidas.png',
      'lib/logo/adobe.png',
      'lib/logo/ae.png',
      'lib/logo/amazon.png',
      'lib/logo/android.png',
      'lib/logo/apple.png',
      'lib/logo/atm.png',
      'lib/logo/barbie.png',
      'lib/logo/bbc.png',
    ];
    List<String> names = [
      'Acer',
      'Adidas',
      'Adobe',
      'AE',
      'Amazon',
      'Android',
      'Apple',
      'ATM',
      'Barbie',
      'BBC',
    ];

    List<String> titles = [
      'Software Engineer',
      'General Manager',
      'Software Engineer',
      'Public Relation Officer',
      'Software Engineer',
      'Software Engineer',
      'Software Engineer',
      'Software Engineer',
      'Graphic Designer',
      'Network Engineer',
    ];

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          const SizedBox(height: 100),
          const Text(
            'Job Feed',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          // Search Bar and Filter
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    //TODO: Search
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 10),
                        Text('Search'),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.filter_list),
                      SizedBox(width: 10),
                      Text('Filter'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Main Content
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Image.asset(
                                  logos[index],
                                  height: 25,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    names[index],
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    titles[index],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis nisl sit amet urna aliquet aliquam. Nulla facilisi. Nulla facilisi. Donec euismod, nisl eget aliquet aliquam, nisl nisl aliquet nisl, vitae aliquet nisl nisl eget nisl. Donec quis nisl sit amet urna aliquet aliquam. Nulla facilisi. Nulla facilisi. Donec euismod, nisl eget aliquet aliquam, nisl nisl aliquet nisl, vitae aliquet nisl nisl eget nisl.',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text('Full Time'),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text('Remote'),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text('Apply'),
                              ),
                            ],
                          ),
                        ],
                      )),
                );
              },
            ),
          ),

          // Bottom Navigation Bar
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(61, 34, 30, 30),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.home,
                        color: Color.fromARGB(255, 92, 0, 250), size: 30),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(Icons.search, color: Colors.white, size: 30),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark,
                        color: Colors.white, size: 30),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(Icons.person, color: Colors.white, size: 30),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
