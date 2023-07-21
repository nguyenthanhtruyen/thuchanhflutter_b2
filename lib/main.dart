import 'package:flutter/material.dart';
void main()
{
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app',
      home: MyHomeScreen(),
    ),
  );

}

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang chủ'),
      ),
      body:SafeArea(child:  Container(
        alignment: Alignment.center,
        width: 390,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Home Screen',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 20,),
            buildRowLayout(),
            const SizedBox(height: 20,),
            Image.network(
              'https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png',
              width: 120,
            ),
            const SizedBox(height: 20,),
            //Image.asset(
            Image.asset('assets/dart.png',width: 200,),
            const SizedBox(height: 20,),
            // ImageImage.asset(
            Image.asset('assets/anhflutter.png',width: 200,),
            const SizedBox(height: 20,),
            Image.asset('assets/android.png',width: 200,),
             ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Button has click!')));
                },
                child: const Text('Click here!')),
          ],
        ),
      ),),
    );
  }
}
Widget buildRowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.orange,
        height: 100,
        width: 100,
      )
    ],
  );
}

