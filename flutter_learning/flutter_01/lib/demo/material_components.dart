import 'package:flutter/material.dart';
import '../demo/form_demo.dart';
import 'checkbox_demo.dart';
import 'radio_demo.dart';
import 'switch_demo.dart';
import 'slider_demo.dart';
import 'dateTimeDemo.dart';
import 'simpleDialog_demo.dart';
import 'alertDialog_demo.dart';
import 'bottomSheet_demo.dart';
import 'snackBar_demo.dart';
import 'expansionPanel_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material componets'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'ExpansionPanelDemo',page: ExpansionPanelDemo()),
          ListItem(title: 'SnackBarDemo',page: SnackBarDemo()),
          ListItem(title: 'BottomSheetDemo',page: BottomSheetDemo()),
          ListItem(title: 'AlertDialogDemo',page: AlertDialogDemo()),
          ListItem(title: 'SimpleDialogDemo',page: SimpleDialogDemo()),
          ListItem(title: 'DateTimeDemo',page: DateTimeDemo()),
          ListItem(title: 'SliderDemo',page: SliderDemo()),
          ListItem(title: 'SwitchDemo',page: SwitchDemo()),
          ListItem(title: 'RadioDemo',page: RadioDemo()),
          ListItem(title: 'CheckboxDemo',page: CheckboxDemo()),
          ListItem(title: 'FormDemo',page: FormDemo()),
          ListItem(title: 'FloatingActionButton',page: FloatingActionButtonDemo()),
          ListItem(title: 'Button',page: ButtonDemo()),
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('FlatButton'),
          onPressed: (){},
          splashColor: Colors.red,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton.icon(
          elevation: 5.0,
          icon: Icon(Icons.add),
          label: Text('FlatButton'),
          onPressed: (){},
          splashColor: Colors.red,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('FlatButton'),
          onPressed: (){},
          splashColor: Colors.red,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );


    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
          ],
        ),
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            ),
          ],
        ),
      ),
    );
  }
}



class FloatingActionButtonDemo extends StatelessWidget {

  final Widget _floatingActionButton = FloatingActionButton (
    onPressed: () {},
    child: Icon(Icons.add),
    elevation: 0.0,
    backgroundColor: Colors.black87,
//    shape: BeveledRectangleBorder(
//      borderRadius: BorderRadius.circular(12),
//    ),
  );

  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {
        debugPrint('button tap');
      },
      icon: Icon(Icons.add),
      label: Text('haha'),

  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}


class ListItem extends StatelessWidget {

  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      }
    );
  }
}
