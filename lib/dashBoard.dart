import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:norvic_care_clone/widgets/customBox.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              Text('Your medical details',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
              SizedBox(height: 15),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomBox(
                          color: Color.fromARGB(255, 178, 218, 236),
                          text: 'Medications',
                          icon: FontAwesomeIcons.capsules,
                          iconColor: Colors.blue,
                          onTap: () {},
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: CustomBox(
                              color: const Color.fromARGB(255, 242, 238, 199),
                              text: 'Investigation Report',
                              icon: FontAwesomeIcons.magnifyingGlass,
                              iconColor: Colors.black,
                              onTap: () {}))
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: CustomBox(
                          color: const Color.fromARGB(255, 222, 158, 154),
                          text: 'Vitals',
                          icon: FontAwesomeIcons.heartPulse,
                          iconColor: Colors.red,
                          onTap: () {},
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: CustomBox(
                          color: Color.fromARGB(255, 178, 218, 236),
                          text: 'Wellness Plan',
                          icon: FontAwesomeIcons.stethoscope,
                          iconColor: Colors.blue,
                          onTap: () {},
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8),
              Container(
                width: double.infinity,
                child: CustomBox(
                    color: Color.fromARGB(255, 212, 233, 249),
                    text: 'Prescriptions',
                    icon: FontAwesomeIcons.prescriptionBottleMedical,
                    iconColor: Colors.orangeAccent,
                    onTap: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
