import 'package:flutter/Material.dart';
import 'package:wheather_ui/photo.dart';

class ForeCaste extends StatelessWidget {
  const ForeCaste({super.key});

  @override
  Widget build(BuildContext context) {
    final deg = [
      '11',
      '-12',
      '13',
      '-11',
      '14',
      '15',
      '6',
    ];
    final day = ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT'];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 35, 61),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 12, left: 9, top: 20),
                  height: 450,
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
                          Color.fromARGB(255, 51, 184, 69),
                          Color.fromARGB(255, 17, 92, 141),
                          Color.fromARGB(255, 72, 44, 199),
                          Color.fromARGB(255, 211, 7, 211),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.1, 0.17, 0.31, 0.45, 0.58, 0.72, 0.88]),
                  ),
                  child: Column(children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios)),
                        const SizedBox(
                          width: 40,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.date_range),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'FourCaste',
                          style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.more_vert))
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 150,
                              width: 150,
                              child: Image.asset('images/sat.jpg.png'),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Monday',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2,
                              width: 10,
                            ),
                            Text(
                              '34 c',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2,
                              width: 10,
                            ),
                            Text(
                              'Most Cloudly..',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children: const [
                        SizedBox(
                          width: 40,
                        ),
                        Icon(Icons.social_distance_rounded),
                        SizedBox(
                          width: 110,
                        ),
                        Icon(Icons.data_saver_on),
                        SizedBox(
                          width: 90,
                        ),
                        Icon(Icons.percent)
                      ],
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 25,
                        ),
                        Text('Distance'),
                        SizedBox(
                          width: 60,
                        ),
                        Text('Information'),
                        SizedBox(
                          width: 40,
                        ),
                        Text('persentage')
                      ],
                    )
                  ]),
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
                    height: 300,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      //  scrollDirection: Axis.vertical,
                      itemCount: day.length,
                      itemBuilder: (_, index) {
                        var i;
                        return Card(
                          elevation: 30.0,
                          color: Color.fromARGB(255, 186, 204, 85),
                          child: Row(
                            children: [
                              const SizedBox(
                                height: 3,
                                width: 20,
                              ),
                              Text(day[index]),
                              const SizedBox(
                                height: 2,
                                width: 50,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                child: Image.asset('images/sat.jpg.png'),
                                decoration: BoxDecoration(
                                    // color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Temprature',
                                    selectionColor: Colors.white,
                                    style: TextStyle(color: Colors.black),
                                  )),
                              Text(deg[index]),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
