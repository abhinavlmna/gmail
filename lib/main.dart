import 'package:flutter/material.dart';
import 'package:gmail/allinbox.dart';
import 'package:gmail/allmailex.dart';
import 'package:gmail/binex.dart';
import 'package:gmail/calenderex.dart';
import 'package:gmail/contactsex.dart';
import 'package:gmail/draftsex.dart';
import 'package:gmail/helpfeedback.dart';
import 'package:gmail/importnt.dart';
import 'package:gmail/outboxex.dart';
import 'package:gmail/primaryex.dart';
import 'package:gmail/promotionsex.dart';
import 'package:gmail/scheduledex.dart';
import 'package:gmail/sentex.dart';
import 'package:gmail/settingsedx.dart';
import 'package:gmail/snoozedex.dart';
import 'package:gmail/socialex.dart';
import 'package:gmail/spamesx.dart';
import 'package:gmail/starreddex.dart';

void main() {
 runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    List<Widget>Pages=[
      Allinboxes(),
      Primary(),
      Promotions(),
      Social(),
      Starred(),
      Snoozed(),
      Important(),
      Sent(),
      Scheduled(),
      Outbox(),
      Drafts(),
      Allmail(),
      Spam(),
      Bin(),
      Calender(),
      Contacts(),
      Settings(),
      Helpandfeedback(),
    ];
  int currentpage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gmail'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.black45,
        child: ListView(
          children: [
            ListTile(title: Text('Gmail',style: TextStyle(color: Colors.white),)),
            ListTile(leading: Icon(Icons.photo_library_sharp,color: Colors.white,),title: Text('All inboxes',style: TextStyle(color: Colors.white),),),
            ListTile(leading: Icon(Icons.stay_primary_portrait_rounded,color: Colors.white),title: Text('Primary',style: TextStyle(color: Colors.white),),),
            ListTile(leading: Icon(Icons.discount_outlined,color: Colors.white),title: Text('Promotions',style: TextStyle(color: Colors.white),),),
            ListTile(leading: Icon(Icons.group,color: Colors.white),title: Text('Social',style: TextStyle(color: Colors.white),),),
            Text('All labels',style: TextStyle(fontSize: 15,color: Colors.white),),
            ListTile(leading: Icon(Icons.star_border_rounded,color: Colors.white),title: Text('Starred',style:TextStyle(color: Colors.white),),),
            ListTile(leading: Icon(Icons.access_time,color: Colors.white),title: Text('Snoozed',style: TextStyle(color: Colors.white),),),
            ListTile(leading: Icon(Icons.label_important_outline_rounded,color: Colors.white),title: Text('Important',style: TextStyle(color: Colors.white),),),
            ListTile(leading: Icon(Icons.send,color: Colors.white),title: Text('Sent',style: TextStyle(color: Colors.white),),),
            ListTile(leading: Icon(Icons.schedule_send_outlined,color: Colors.white),title: Text('Scheduled',style: TextStyle(color: Colors.white),),),
            ListTile(leading: Icon(Icons.send_time_extension_outlined,color: Colors.white),title: Text('Outbox',style: TextStyle(color: Colors.white),),),
            ListTile(leading: Icon(Icons.description_outlined,color: Colors.white),title: Text('Drafts',style: TextStyle(color: Colors.white),),),
            ListTile(leading: Icon(Icons.mail_outline_sharp,color: Colors.white),title: Text('All mail',style: TextStyle(color: Colors.white),),),
            ListTile(leading: Icon(Icons.dangerous_outlined,color: Colors.white),title: Text('Spam',style: TextStyle(color: Colors.white),),),
            ListTile(leading: Icon(Icons.delete_outline_rounded,color: Colors.white),title: Text('Bin',style: TextStyle(color: Colors.white),),),
            Text('Google apps',style: TextStyle(fontSize: 15,color: Colors.white),),
            ListTile(leading: Icon(Icons.calendar_today_rounded,color: Colors.white),title: Text('Calender',style: TextStyle(color: Colors.white),),),
            ListTile(leading: Icon(Icons.account_circle,color: Colors.white),title: Text('Contacts',style: TextStyle(color: Colors.white),),),
            ListTile(leading: Icon(Icons.settings,color: Colors.white),title: Text('Settings',style: TextStyle(color: Colors.white),),),
            ListTile(leading: Icon(Icons.help_outline,color: Colors.white),title: Text('Help and feedback',style: TextStyle(color: Colors.white),),),
          ],
        ),
      ),
      body: Pages[currentpage],
    );
  }
}
