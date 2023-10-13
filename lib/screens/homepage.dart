import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      body: Center(
        child: Image.network(
          'https://static.wikia.nocookie.net/netflix/images/9/98/Welcome_to_Eden.jpg/revision/latest/scale-to-width-down/350?cb=20220506111714',
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return (const Center(
              child: CircularProgressIndicator(color: Colors.blue),
            ));
          },
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
        automaticallyImplyLeading: false,
        title: const Text("Home Page"),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
