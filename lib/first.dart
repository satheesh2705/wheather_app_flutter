import 'package:flutter/Material.dart';
import 'package:wheather_ui/fore_caste.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      '1.00',
      '2.00',
      '3.00',
      '4.00',
      '5.00',
      '6.00',
      '7.00',
      '8.00',
      '9.00',
      '10.00',
      '11.00',
      '12.00',
      '13.00',
      '14.00',
      '15.00',
      '16.00',
      '17.00',
      '18.00',
      '19.00',
      '20.00',
      '21.00',
      '22.00',
      '23.00',
      '24.00'
    ];
    final it = [
      '22',
      '34',
      '-12',
      '-13',
      '22',
      '34',
      '-12',
      '-13',
      '22',
      '34',
      '-12',
      '-13',
      '22',
      '34',
      '-12',
      '-13',
      '22',
      '34',
      '-12',
      '-13',
      '22',
      '34',
      '-6',
      '-12'
    ];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 38, 38, 61),
      //   appBar: AppBar(title: const Text('Whether App')),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10, left: 5, top: 20),
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(17),
                  gradient: const LinearGradient(
                      colors: [
                        //  Color.fromARGB(255, 173, 51, 92),
                        Color.fromARGB(255, 235, 45, 38),
                        Color.fromARGB(255, 228, 128, 14),
                        Color.fromARGB(255, 184, 187, 34),
                        Color.fromARGB(255, 52, 206, 73),
                        Color.fromARGB(255, 53, 140, 197),
                        Color.fromARGB(255, 124, 100, 231),
                        Color.fromARGB(255, 219, 79, 219),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.1, 0.17, 0.31, 0.45, 0.58, 0.72, 0.88]),
                ),
                child: Column(children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 70,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.location_on),
                        splashColor: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Chennai',
                        style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_vert))
                    ],
                  ),
                  const SizedBox(height: 40),
                  Container(
                    height: 200,
                    width: 200,
                    child: Image.asset(fit: BoxFit.fill, 'images/sun.jpg'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '34 c',
                    style: TextStyle(
                        fontSize: 90,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 150,
                      ),
                      Text('Most Cloudy..',
                          style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  )
                ]),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Today',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 5,
                  right: 5,
                ),
                child: SizedBox(
                  height: 130,
                  width: 1000,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 24,
                    itemBuilder: (_, index) {
                      return Card(
                        elevation: 50.0,
                        color: Color.fromARGB(255, 186, 204, 85),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              items[index],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              child: Image.asset('images/asd.jpg'),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Temprature',
                                  style: TextStyle(color: Colors.white),
                                )),
                            Text(
                              it[index],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ForeCaste()),
                        );
                      },
                      child: const Text('Check The ForeCaste',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ))),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ForeCaste()),
                        );
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                      color: Colors.white),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
