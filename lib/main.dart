import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teste/bloc/user_information_bloc.dart';
import 'package:teste/bloc/user_information_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste/bloc/user_information_state.dart';
import 'package:teste/user_information_page.dart';

// see if it is a good practice
void main() async {
  await initHiveForFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // o que esta sendo digitado pelo usuario
  final textController = TextEditingController();
  late final UserInformationBloc bloc;

  //Parte das strings
  String? nameValue;
  String submitText = '';

  bool _loading = false;

// ele vai guardar o nome
  Future<void> setName(value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('nameData', value);
  }

  // ele vai pegar e mostrar o nome
  void getName() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    nameValue = pref.getString('nameData');
    setState(() {});
  }

  @override
  void initState() {
    getName();
    bloc = UserInformationBloc();
    var is_loading = true;
  }

  fetchData(login) async {
    setState(() {
      _loading = true;
    });
  }

  List<String> theRepository = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: BlocBuilder<UserInformationBloc, UserInformationState>(
            bloc: bloc,
            builder: (context, state) {
              print('IMPRIME STATE');
              
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // mostrar o texto

                      Container(
                        color: Colors.lightBlue,
                        child: Center(
                          child: nameValue == null
                              ? Text('Nenhum nome disponivel')
                              : (Text(nameValue!)),
                        ),
                      ),
                      //input do texto
                      TextField(
                        controller: textController,
                        decoration: InputDecoration(
                            hintText: 'Nome usuario',
                            suffixIcon: IconButton(
                                onPressed: () {
                                  // vai dar clear no text
                                  textController.clear();
                                },
                                icon: const Icon(Icons.clear)),
                            border: const OutlineInputBorder()),
                      ),
                      MaterialButton(
                          onPressed: () async {
                            bloc.add(IsLoadingInformationEvent());
                           bloc.add(LoadUserInformationEvent());
print (state.user.bio);

                           

                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => SecondRoute(
                            //           username: "GenericUsername015",
                            //           bioHTML: state.user.bio,
                            //           avatarUrl: state.user.avatarUrl,
                            //           repo: theRepository)),
                            // );
                          }, // termina o async
                          color: Colors.green,
                          child: const Text('fetch',
                              style: TextStyle(color: Colors.white))),
                    ]),
              );
            }));

    // body: );
  }
}

// SECOND ROOOOOOOOOOUTE

class SecondRoute extends StatelessWidget {
  // @override
  // void dispose() {
  //   bloc.close();
  //   super.dispose();
  // }
  final String username;
  final String bioHTML;
  final String avatarUrl;
  final List<String> repo;

  const SecondRoute(
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

//==================================================================
