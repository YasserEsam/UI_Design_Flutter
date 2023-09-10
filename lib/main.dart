import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: Center(
            child: Text(
              "Layouts",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.cloud,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                child: Expanded(
                  child: Image.asset("images/gift.jpg", fit: BoxFit.fill),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "My Birthday",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Card(
                elevation: 0,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 110.0),
                    child: Text(
                        "Its going to be agreat birthday. We are going out for \ndinner at my favorite place,then watch a movie after we \ngo to the gelateria for ice cream and espresso."),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.sunny,
                    color: Colors.orange,
                  ),
                  title: Text(
                    "81 Clear",
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  subtitle:
                      Text("4500 san Alpho Drive, Dallas,TX United States"),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2.5,
                  ),
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Colors.white54,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.card_giftcard,
                              color: Colors.blue[900],
                              size: 24,
                            ),
                            Text(
                              'Gift ${index + 1}',
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/1.jpg"),
                          radius: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/3.jpg"),
                          radius: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/2.jpg"),
                          radius: 40,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      children: [
                        Icon(Icons.cake),
                        Icon(Icons.star),
                        Icon(Icons.music_note),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
