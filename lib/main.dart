import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:minnal_chat/view/bottom.dart';
>>>>>>> shadhin
import 'package:minnal_chat/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
<<<<<<< HEAD
      
=======
>>>>>>> shadhin
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
<<<<<<< HEAD
      home:HomePage()
    );
  }
}
=======
      home:NavBarbottom()
    );
  }
}


>>>>>>> shadhin
