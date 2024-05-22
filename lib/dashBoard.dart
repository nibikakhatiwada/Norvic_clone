import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180,
        backgroundColor: Color.fromARGB(255, 176, 213, 244),
        title: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 50,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Ms. Nibika Khatiwada',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.notifications,
                      size: 40, color: const Color.fromARGB(255, 3, 71, 126)),
                ],
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 50,
                child: TextFormField(
                    decoration: InputDecoration(
                  filled: true,
                  // fillColor: const Color.fromARGB(255, 164, 198, 226),
                  suffixIcon: Icon(Icons.search),
                  hintText: 'Search Specialities, Doctors',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                )),
              )
            ],
          ),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 3, 71, 126),
              ),

              // constraints: BoxConstraints(
              //   minHeight: 100,
              //   minWidth: 50,
              // ),
              height: MediaQuery.sizeOf(context).height * 0.13,
              width: MediaQuery.sizeOf(context).width * 0.95,

              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No Appointment scheduled',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 7),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Book Appointment'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Text('Your medical details'),
          ])),
    );
  }
}
