import 'package:flutter/material.dart';

class Composant extends StatelessWidget {
  const Composant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () { print("Menu"); },),
        actions: [IconButton(icon: const Icon(Icons.add_circle), onPressed: () { print("Menu"); },),],
      ),
      body: const SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            ShowTexts(),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Image",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            ShowImageAndText(),
            SizedBox(height: 50,),
            Text("Icon",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),
              textAlign: TextAlign.center,
            ),
            ShowIcons(),
            SizedBox(height: 10,),
            ShowEmailsInput(),
            SizedBox(height: 10,),
            Text("Button",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),
              textAlign: TextAlign.center,
            ),
            ShowButton(),
          ],
        ),
      )
    );
  }
}

class ShowTexts extends StatelessWidget {
  const ShowTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My first text",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.amber,
            ),),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My second text"),
          ],
        )
      ],
    );
  }
}

class ShowImageAndText extends StatelessWidget {
  const ShowImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/website.png",
                  width: 200,),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 100,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text("e à la largeur du conteneur."),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

class ShowIcons extends StatelessWidget {
  const ShowIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Icon(
              Icons.local_hospital_rounded,
              color: Colors.red,
            ),
            Text(
              "Hospital",
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            )
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.airplanemode_on,
              color: Colors.blue,
            ),
            Text(
              "Plane",
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic
              ),
            )
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.car_crash,
              color: Colors.greenAccent,
            ),
            Text(
              "Car",
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic
              ),
            )
          ],
        )
      ],
    );
  }
}

class ShowEmailsInput extends StatelessWidget {
  const ShowEmailsInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Email",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue
          ),
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("Email 1 : ")
              ],
            ),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Email 1",
                        border: OutlineInputBorder()
                    ),
                  ),
                )
            )
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Column(
              children: [
                Text("Email 1 : ")
              ],
            ),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Email 1",
                        border: OutlineInputBorder()
                    ),
                  ),
                )
            )
          ],
        ),
      ]
    );
  }
}

class ShowButton extends StatelessWidget {
  const ShowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text(
              "Voir plus",
          ))
      ],
    );
  }
}

