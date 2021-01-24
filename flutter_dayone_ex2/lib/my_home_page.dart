import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid view exercise"),
      ),
      body: Stack(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.lightBlueAccent,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.orange,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.pink,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        color: Colors.lightBlueAccent,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        color: Colors.lightBlueAccent,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.yellow,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.yellow,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
                Container(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 220,
            left: 60,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
