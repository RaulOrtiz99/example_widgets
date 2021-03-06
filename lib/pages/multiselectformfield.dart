import 'package:flutter/material.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';

class MultiselectExample extends StatefulWidget {
  MultiselectExample({Key key}) : super(key: key);

  @override
  _MultiselectExampleState createState() => _MultiselectExampleState();
}

class _MultiselectExampleState extends State<MultiselectExample> {
   List _myActivities;
  String _myActivitiesResult;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivities = [];
    _myActivitiesResult = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivitiesResult = _myActivities.toString();
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MultiSelect Formfield Example'),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                child: MultiSelectFormField(
                  autovalidate: false,
                  chipBackGroundColor: Colors.green,
                  chipLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  dialogTextStyle: TextStyle(fontWeight: FontWeight.bold),
                  checkBoxActiveColor: Colors.green,
                  checkBoxCheckColor: Colors.white,
                  dialogShapeBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  title: Text(
                    "My workoutsss",
                    style: TextStyle(fontSize: 16),
                  ),
                  validator: (value) {
                    if (value == null || value.length == 0) {
                      return 'Please select one or more options';
                    }
                    return null;
                  },
                  dataSource: [
                    {
                      "display": "Running",
                      "value": "Running",
                    },
                    {
                      "display": "Climbing",
                      "value": "Climbing",
                    },
                    {
                      "display": "Walking",
                      "value": "Walking",
                    },
                    {
                      "display": "Swimming",
                      "value": "Swimming",
                    },
                    {
                      "display": "Soccer Practice",
                      "value": "Soccer Practice",
                    },
                    {
                      "display": "Baseball Practice",
                      "value": "Baseball Practice",
                    },
                    {
                      "display": "Football Practice",
                      "value": "Football Practice",
                    },
                     {
                      "display": "aaaa",
                      "value": "aaaa",
                    },
                    {
                      "display": "aaaav",
                      "value": "aaaav",
                    },
                    {
                      "display": "aasfa",
                      "value": "aaaaasadsda",

                    },
                    {
                      "display": "aaa212a",
                      "value": "aaa21a",
                    },
                    {
                      "display": "aaa12121a",
                      "value": "aa11111aa",
                    },
                    {
                      "display": "aaaaqqq",
                      "value": "qwqwqwqaaaa",
                    },
                    {
                      "display": "aaqwqwrggaa",
                      "value": "aaasadfaasaa",
                    },
                    {
                      "display": "qqqaaaa",
                      "value": "aaaa1111",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                  okButtonLabel: 'OK',
                  cancelButtonLabel: 'CANCEL',
                  hintWidget: Text('Please choose one or more'),
                  initialValue: _myActivities,
                  onSaved: (value) {
                    if (value == null) return;
                    setState(() {
                      _myActivities = value;
                    });
                  },
                ),
              ),
              
              Container(
              //  padding: EdgeInsets.all(16),  
                child: Text(_myActivitiesResult),
              ),
              Container(
               // padding: EdgeInsets.all(8),
                child: ElevatedButton(
                  child: Text('Salvar'),
                  onPressed: _saveForm,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}