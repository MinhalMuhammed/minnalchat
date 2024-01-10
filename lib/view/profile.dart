import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 80,
            ),
            Text('Name',style: TextStyle(fontSize: 30),),
            Text('bio',style: TextStyle(fontSize: 20),)
    
          ],
        ),
      ),
    );
  }
}
