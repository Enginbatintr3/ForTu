import 'package:flutter_application_3/screens/support.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

sendMessage() async {
  String username = 'YOUR_MAİL';
  String password = 'YOUR_MAİL_PASSWORD';

  // ignore: deprecated_member_use
  final smtpServer = gmail(username, password);
  // Use the SmtpServer class to configure an SMTP server:
  // final smtpServer = SmtpServer('smtp.domain.com');
  // See the named arguments of SmtpServer for further configuration
  // options.

  // Create our message.
  final message = Message()
    ..from = Address(username, 'Fortune Teller')
    ..recipients.add('developer@gmail.com')
    //..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
    //..bccRecipients.add(Address('bccAddress@example.com'))
    ..subject = title.text
    ..text = messagest.text;

  try {
    final sendReport = await send(message, smtpServer);
    // ignore: avoid_print
    print('Message sent: ' + sendReport.toString());
  } on MailerException catch (e) {
    // ignore: avoid_print
    print('Message not sent.');
    for (var p in e.problems) {
      // ignore: avoid_print
      print('Problem: ${p.code}: ${p.msg}');
    }
  }
  // DONE

  // Let's send another message using a slightly different syntax:
  //
  // Addresses without a name part can be set directly.
  // For instance `..recipients.add('destination@example.com')`
  // If you want to display a name part you have to create an
  // Address object: `new Address('destination@example.com', 'Display name part')`
  // Creating and adding an Address object without a name part
  // `new Address('destination@example.com')` is equivalent to
  // adding the mail address as `String`.
  // Sending multiple messages with the same connection
  //
  // Create a smtp client that will persist the connection
  var connection = PersistentConnection(smtpServer);
  // Send the first message
  await connection.send(message);

  // close the connection
  await connection.close();
}
