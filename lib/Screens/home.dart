import "package:flutter/material.dart";

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 249, 255),
      appBar: AppBar(
        title: Text(
          "Profile Card",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 236, 174, 247),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 145, 209, 238),
              border: Border.all(
                width: 1,
                color: Colors.black,
                style: BorderStyle.solid,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/me.jpg'),
                  radius: 50,
                ),
                Text(
                  'ZQK DEV',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                const Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.red),
                    title: Text('+92 123 4567890'),
                  ),
                ),
                SizedBox(height: 20),
                const Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: ListTile(
                    leading: Icon(Icons.mail, color: Colors.red),
                    title: Text('mail@zqk.com'),
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
