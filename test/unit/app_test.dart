import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../lib/main.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'app_test.mocks.dart';

@GenerateMocks([GraphQLClient])
void main() {
  group('Main Screen', ({
    username = 'GenericNameUsername015',
    bio = 'Generic',
  }) {
    testWidgets('type a spcefic login and retrieve information',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();

// writing the username name
      await tester.enterText(find.byType(TextField), username);

//Tapping the fetch button
      await tester.tap(find.byType(MaterialButton));

// when it works again the loading should be inserted again in between fetch and second screen
//expect(find.byWidget(CircularProgressIndicator()), findsOneWidget);

// after tapping it should be on the second screen, then the username text should be found.
      expect(find.text(username), findsOneWidget);
//expect(find.text(bio), findsOneWidget);
//expect(find.text(username), findsOneWidget);
    });
  }

// tester.enterText(find.byType(TextInput), username);
//
// await tester.pumpAndSettle();

//

      );

  group('Second Screen', (
      {login = 'GenericUsername015',
      bio = '<div>Generic</div>',
      repos = const ['test', 'somaisum', 'newrepo'],
      url = 'https://avatars.githubusercontent.com/u/122535315?v=4'}) {
    testWidgets('type a spcefic login and retrieve information',
        (WidgetTester tester) async {
      final client = MockGraphQLClient();
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();

// writing the username nameflutte
      await tester.enterText(find.byType(TextField), login);

      when(client.query(
        QueryOptions(
          document: gql(
            '''query {
user(login: "$login") { 
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
}''',
          ),
        ),
      )).thenAnswer((_) async => QueryResult(
          options: QueryOptions(
            document: gql(
              '''query {
user(login: "$login") { 
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
}''',
            ),
          ),
          source: QueryResultSource.network,
          data:
              "{__typename: Query, user: {__typename: User, login: GenericUsername015, avatarUrl: https://avatars.githubusercontent.com/u/122535315?v=4, bioHTML: <div>Generic</div>, repositories: {__typename: RepositoryConnection, edges: [{__typename: RepositoryEdge, node: {__typename: Repository, description: null, name: test}}, {__typename: RepositoryEdge, node: {__typename: Repository, description: swdecvdsecfv, name: somaisum}}, {__typename: RepositoryEdge, node: {__typename: Repository, description: null, name: newrepo}}]}}}"
                  as Map<String, dynamic>));

//Tapping the fetch button
      await tester.tap(find.byType(MaterialButton));

// Expect the loading screen out\
// expect(("Carregando"), findsOneWidget);

// Expecting the username to show
await tester.pump(new Duration(milliseconds: 1000));

      expect(find.text(login), findsOneWidget);
      expect(find.text(repos[1]), findsOneWidget);

// // Expecting the bio from user to show
// expect(find.text(bio), findsOneWidget);

// Expects the image to show
      // expect(find.image(NetworkImage(url)), findsOneWidget);

// Expects each one of the repository names that were on the String array
// repos.forEach((element) {
//   expect(find.text(element),findsOneWidget);}
//   );
    });
  });
}
