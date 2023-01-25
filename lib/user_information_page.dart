import 'package:flutter/material.dart';

class UserInformationPage extends StatelessWidget {
  // @override
  // void dispose() {
  //   bloc.close();
  //   super.dispose();
  // }
  final String username;
  final String bioHTML;
  final String avatarUrl;
  final List<String> repo;

  const UserInformationPage(
      {Key? key,
      required this.username,
      required this.bioHTML,
      required this.avatarUrl,
      required this.repo})
      : super(key: key);

// se tivesse um botao aqui seria no onPressed: () { bloc.inputCliuent.add(AddClientEvent(client etc etc))}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Image.network(avatarUrl, height: 200),
              padding: const EdgeInsets.all(35),
            ),
            (Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Username:',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      wordSpacing: 5),
                ),
                Text(
                  username,
                  style: const TextStyle(fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  'Bio:',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  bioHTML,
                  style: const TextStyle(fontSize: 15),
                )
              ],
            )),
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemCount: repo.length,
            //   prototypeItem: ListTile(
            //     title: Text(repo.first),
            //   ),
            //   itemBuilder: (context, index) {
            //     return Card(
            //         child: ListTile(
            //       hoverColor: Colors.lightBlue,
            //       title: Text(repo[index]),
            //     ));
            //   },
            // ),
          ],
        ),
      ),
      //
    );
  }
}