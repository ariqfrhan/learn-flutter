import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  var faker = Faker();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        title: const Text("List View"),
      ),
      // body: ListView(
      //   children: [
      //     ChatItem(imageUrl: 'https://picsum.photos/id/1/200/300',
      //     title: faker.person.name(),
      //     subtitle: faker.lorem.sentence()),
      //     ChatItem(imageUrl: 'https://picsum.photos/id/1/200/300',
      //     title: faker.person.name(),
      //     subtitle: faker.lorem.sentence()),
      //     ChatItem(imageUrl: 'https://picsum.photos/id/1/200/300',
      //     title: faker.person.name(),
      //     subtitle: faker.lorem.sentence()),
      //     ChatItem(imageUrl: 'https://picsum.photos/id/1/200/300',
      //     title: faker.person.name(),
      //     subtitle: faker.lorem.sentence())
      //   ],
      // )
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index){
          return ChatItem(imageUrl: 'https://picsum.photos/id/1/200/300', title: faker.person.name(), subtitle: faker.lorem.sentence());
        }
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatItem({
    super.key,
    required this.imageUrl, required this.title, required this.subtitle
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      title: Text(title),
      subtitle: Text(subtitle,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Text('10.00'),
      onTap: (){
        return;
      },
    );
  }
}
