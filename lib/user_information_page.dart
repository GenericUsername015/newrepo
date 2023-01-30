// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:teste/bloc/user_information_bloc.dart';
import 'package:teste/bloc/user_information_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste/bloc/user_information_state.dart';
import 'package:teste/user_information_page.dart';

class UserInformationPage extends StatelessWidget {
  final String login;

  const UserInformationPage({required this.login});

  @override
  void initState() {
    late final UserInformationBloc bloc;
    bloc = UserInformationBloc(login);
  }

// se tivesse um botao aqui seria no onPressed: () { bloc.inputCliuent.add(AddClientEvent(client etc etc))}
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserInformationBloc>(
      create: (context) =>
          UserInformationBloc(login)..add(LoadUserInformationEvent()),
      child: BlocBuilder<UserInformationBloc, UserInformationState>(
        builder: (context, state) {
          if (state is LoadingState) {
            // return  (Column(children: [Text('Carregando'), CircularProgressIndicator(color: Colors.greenAccent)]));
            return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center( child: Column ( 
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        
        children:[Text('Carregando'), CircularProgressIndicator()]),
      )
    );
          }
          ;
          if (state is ErrorState) {
            return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center( child: Column ( 
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        
        children:[Text('Usuario vazio'), 
        Icon(
      Icons.error_outline,
      color: Colors.pink,
      size: 20.0,
    ),
        
       ]),
      )
    );
          }
          return Scaffold(
            appBar: AppBar(
              title: const Text('Second Route'),
            ),
            body: Container(
                child: SingleChildScrollView(
                    child: Center(
              child: (Column(
                children: [
                  Container(
                    child: Image.network(state.user.avatarUrl, height: 200),
                    padding: const EdgeInsets.all(30),
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
                        state.user.name,
                        style: const TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Bio:',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        state.user.bio,
                        style: const TextStyle(fontSize: 15),
                      )
                    ],
                  )),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.user.repositories.length,
                    prototypeItem: ListTile(
                        //  title: Text(repo.first),
                        ),
                    itemBuilder: (context, index) {
                      return Card(
                          child: ListTile(
                        hoverColor: Colors.lightBlue,
                        title: Text(state.user.repositories[index]),
                      ));
                    },
                  ),
                ],
              )),
            ))),
            //
          );
        },
      ),
    );
  }
}
