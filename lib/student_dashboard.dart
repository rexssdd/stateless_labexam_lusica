
import 'package:flutter/material.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FF),

      // APP BAR
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF7FF),
        elevation: 0,
        title: const Text(
          'Student Dashboard',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.normal,
            color: Colors.black87,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Logout clicked');
            },
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),

      // BODY
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 12),

              // PROFILE HEADER
              Row(
                children: [
                  const CircleAvatar(
                    radius: 38,
                    backgroundImage: AssetImage('assets/Profile.jpg')
                  ),

                  const SizedBox(width: 16),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rexcel Jay Lusica',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'ID: 545469',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          'BSCS 4th Year',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // STUDENT INFORMATION CARD
              Card(
                elevation: 3,
                color: const Color(0xFFF8F2FA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text(
                        'r.lusica.545469@umindanao.edu.ph',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),

                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text(
                        '+63 9067898243',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),

                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text(
                        'Prk. Matibay Tawan-tawan Baguio District Davao City',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // SUBJECTS TITLE
              const Text(
                'Subjects',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12, width: 5),
              

              // SUBJECT 1
              SizedBox(
                width: double.infinity, 
                child: Card(
                  elevation: 1,
                  color: const Color(0xFFF8F2FA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CCE 106 - Mobile App Development',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Instructor: MR. Miko Velez',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          'Schedule: Mon/Fri 08:00 - 10:00 AM',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // SUBJECT 2
              SizedBox(
                width: double.infinity, 
                child: Card(
                  elevation: 1,
                  color: const Color(0xFFF8F2FA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cst 9 - Machine Learning 1',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Instructor: MR. Juvhizier Yamaguchi',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          'Schedule: Mon/Fri 01:30 - 3:30 AM',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // SUBJECT 3
              SizedBox(
                width: double.infinity, 
                child: Card(
                  elevation: 1,
                  color: const Color(0xFFF8F2FA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CS24/ Machine Learning 2',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Instructor: Mrs. Althea Owe',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          'Schedule: Mon/Fri 03:30 - 5:30 AM',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // FLOATING ACTION BUTTON
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFE8D9FF),
        foregroundColor: Colors.deepPurple,
        onPressed: () {
          debugPrint('Add Subject Clicked!');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
