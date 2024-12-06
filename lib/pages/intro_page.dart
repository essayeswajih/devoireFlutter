import 'package:flutter/material.dart';

import 'home_page.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text("Atlas Monde",style: TextStyle(color: Colors.amber, fontSize: 30,fontWeight: FontWeight.bold),)
                ]
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Image.asset("assets/images/drapeaux/monde.png"),
              ),
          SizedBox(
            height: 50,
          ),
          TextButton(onPressed: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage()))}, child: Text("Enter", style: TextStyle(color: Colors.blue, fontSize: 30,fontWeight: FontWeight.bold),))
            ],
          )
    );
  }
}
