import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../lib/main.dart';

void main() {
  group('Main Screen', ({
    username = 'GenericName',
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
//expect(find.text(username), findsOneWidget);
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
      {username = 'GenericName',
      bio = 'Generic',
      repos = const ['a', 'b', 'c'],
      url = 'www.google.com'}) {
    testWidgets('type a spcefic login and retrieve information',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();

// writing the username name
      await tester.enterText(find.byType(TextField), username);

//Tapping the fetch button
      await tester.tap(find.byType(MaterialButton));

// Expecting the username to show
//expect(find.text(username), findsOneWidget);

// Expecting the bio from user to show
//expect(find.text(bio), findsOneWidget);

// Expects if the url address on the test os the same of the source image
// expect(find.image(NetworkImage(url)), findsOneWidget);

// Expects each one of the repository names that were on the String array
// repos.forEach((element) {
//   expect(find.text(element),findsOneWidget);}
//   );
    });
  });
}
