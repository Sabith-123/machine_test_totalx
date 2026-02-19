import 'package:flutter/material.dart';


// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  String? sortvalueradiobutton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.white,
                  title: Text(
                    'Add A New User',
                    style: TextStyle(
                      fontFamily: 'montserrat',
                      fontWeight: FontWeight(600),
                      fontSize: 13,
                    ),
                  ),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(
                                'assets/images/user.png',
                              ),
                            ),
                            Positioned(
                              bottom: -6,
                              right: -4,
                              left: -4,
                              child: Container(
                                width: 25,
                                height: 45,
                                decoration: BoxDecoration(
                                  // ignore: deprecated_member_use
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(200),
                                    bottomRight: Radius.circular(200),
                                  ),
                                ),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Name',
                          style: TextStyle(
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight(400),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(169, 101, 101, 132),

                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(169, 101, 101, 132),

                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(169, 101, 101, 132),
                              width: 1,
                            ),

                            borderRadius: BorderRadius.circular(8),
                          ),
                          hint: Row(
                            children: [
                              Text(
                                'Enter Your Name',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'montserrat',
                                  fontWeight: FontWeight(400),
                                  color: Color(0xFF333333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Age',
                          style: TextStyle(
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight(400),
                            fontSize: 18,
                            color: Color(0xFF333333),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(169, 101, 101, 132),

                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(169, 101, 101, 132),

                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(169, 101, 101, 132),
                              width: 1,
                            ),

                            borderRadius: BorderRadius.circular(8),
                          ),
                          hint: Row(
                            children: [
                              Text(
                                'Enter Your Age',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'montserrat',
                                  fontWeight: FontWeight(400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 95,
                            height: 28,
                            decoration: BoxDecoration(
                              color: Color(0xFFCCCCCC),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'montserrat',
                                  fontWeight: FontWeight(500),
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 95,
                            height: 28,
                            decoration: BoxDecoration(
                              color: Color(0xFF1782FF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Save',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'montserrat',
                                  fontWeight: FontWeight(500),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            );
          },
          shape: CircleBorder(),
          elevation: 0,
          backgroundColor: Color(0xFF100E09),
          child: Icon(Icons.add, color: Colors.white, size: 45),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color(0xFF100E09),
        title: Row(
          children: [
            Icon(Icons.location_on_sharp, color: Colors.white, size: 16),
            SizedBox(width: 5),
            Text(
              'Nilambur',
              style: TextStyle(
                fontFamily: 'montserrat',
                fontWeight: FontWeight(500),
                color: Color(0xFFFAFAFA),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFFEBEBEB),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: Colors.black,
                          ),

                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(169, 101, 101, 132),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(169, 101, 101, 132),

                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(169, 101, 101, 132),
                              width: 1,
                            ),

                            borderRadius: BorderRadius.circular(36),
                          ),
                          hint: Row(
                            children: [
                              Text(
                                'search by name',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'montserrat',
                                  fontWeight: FontWeight(400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.white,
                          context: context,
                          builder: (context) {
                            return Container(
                             
                              width: double.infinity,
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Sort",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'montserrat',
                                      fontWeight: FontWeight(600),
                                    ),
                                  ),

                                  SizedBox(height: 20),
                                  RadioListTile(
                                    value: 'All',
                                    groupValue: sortvalueradiobutton,
                                    onChanged: (value) {
                                      sortvalueradiobutton = value;
                                    },
                                    title: Text(
                                      'All',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight(500),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),

                                  RadioListTile(
                                    
                                    value: 'Age: Elder',
                                    groupValue: sortvalueradiobutton,
                                    onChanged: (value) {
                                      sortvalueradiobutton = value;
                                    },
                                    title: Text(
                                      'Age: Elder',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight(500),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  RadioListTile(
                                    value: 'Age: Younger',
                                    groupValue: sortvalueradiobutton,
                                    onChanged: (value) {
                                      sortvalueradiobutton = value;
                                    },
                                    title: Text(
                                      'Age: Younger',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight(500),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF100E09),
                        ),
                        child: Icon(
                          Icons.filter_list_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: EdgeInsets.only(right: 16, left: 16),
                child: Text(
                  'users Lists',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'montserrat',
                    fontWeight: FontWeight(600),
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 8, left: 16, right: 16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            // ignore: deprecated_member_use
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            offset: Offset(0, 0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage(
                                'assets/images/OBJECTS.png',
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Name'),
                                Row(children: [Text('Age :'), Text('32')]),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
