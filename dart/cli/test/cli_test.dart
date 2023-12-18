import 'package:test/test.dart';
import 'dart:io';
import 'dart:async';
import '../bin/rice_cooker.dart' as main_file;


var log = [];
main() {
  test('override print', overridePrint(() {
    main_file.displayMenu();
    expect(log, [ '\nWelcome to the Rice Cooker Simulator!',
                               '1. Add rice',
                               '2. Cook rice',
                               '3. Steam',
                               '4. Keep warm',
                               '5. Remove rice',
                               '6. Quit'
]);
  }));
}
void Function() overridePrint(void testFn()) => () {
  var spec = new ZoneSpecification(
    print: (_, __, ___, String msg) {
      log.add(msg);
    }
  );
  return Zone.current.fork(specification: spec).run(testFn);
};



