import 'package:flutter/material.dart';

class LocalesView extends StatelessWidget {
  const LocalesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        title: Text("Langueges"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Switch(value: false, onChanged: (newValue){}),
                  Padding(
                 padding: const EdgeInsets.only(left: 10,bottom: 5),
                    child: Text("English",style: TextStyle(
                      fontSize: 20
                    ),),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                 Switch(value: false, onChanged: (newValue){}),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,bottom: 5),
                    child: Text("Urdu",style: TextStyle(
                      fontSize: 20
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}