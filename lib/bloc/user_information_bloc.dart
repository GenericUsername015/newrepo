import 'package:bloc/bloc.dart';
import 'package:teste/bloc/user_information_event.dart';
import 'package:teste/bloc/user_information_state.dart';
import 'package:teste/models/user_information_model.dart';
import 'package:teste/repository/user_repository.dart';
import 'package:teste/data/user.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';


class UserInformationBloc
    extends Bloc<UserInformationEvent, UserInformationState> {
  final _userRepo = UserRepository();

  UserInformationBloc() : super(InformationInitialState()) {
    on<IsLoadingInformationEvent>((event, emit) {
      emit(LoadingState(
          user: UserInformationModel(
              name: '', bio: '', avatarUrl: '', repositories: []),
          isLoading: true));
    });

    on<LoadUserInformationEvent>((event, emit) async {
      try {
        final HttpLink httpLink = HttpLink('https://api.github.com/graphql');
        final AuthLink authLink = AuthLink(
          getToken: () async =>
              'Bearer ',
        );

        final Link link = authLink.concat(httpLink);
        GraphQLClient qlClient = GraphQLClient(
          link: link,
         cache: GraphQLCache(
            store: HiveStore(),
          ),
        );

        QueryResult queryResultOnBloc = await qlClient.query(
          QueryOptions(
            document: gql(
              """query {
user(login: "GenericUsername015") { 
   login
avatarUrl  
bioHTML
 repositories(last: 3) {
edges {    
  node {
description
name
}
}   
}
}   
}""",
            ),
          ),
        );

        if (queryResultOnBloc.data != null) {
          final parsedData = Query$FetchUser.fromJson(
              queryResultOnBloc.data as Map<String, dynamic>);
          List<String> repos = [];

          if (queryResultOnBloc.data != null) {
            final parsedData = Query$FetchUser.fromJson(
                queryResultOnBloc.data as Map<String, dynamic>);
            parsedData?.user?.repositories?.edges?.forEach((element) {
              repos.add(element?.node?.name as String);
            });
          }

          repos.forEach((element) {
            print(element);
          });

          emit(InformationSuccessState(
              user: _userRepo.loadUserInformation(
                  user: UserInformationModel(
                      name: parsedData.user?.login as String,
                      bio: parsedData.user?.bioHTML as String,
                      avatarUrl: parsedData.user?.avatarUrl as String,
                      repositories: repos)),
              isLoading: false));
        }
      } catch (error) {
        print(error);
        emit(LoadingState(
            user: UserInformationModel(
                name: '', bio: '', avatarUrl: '', repositories: []),
            isLoading: false));
      }
    });
  }
}
