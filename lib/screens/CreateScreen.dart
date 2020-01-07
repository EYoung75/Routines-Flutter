import "package:flutter/material.dart";

class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  Map<String, String> _authData = {"email": "", "password": ""};
  String _name;
  bool _isLoading = false;

  Future<void> _submit() async {
    if(!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    setState(() {
      _isLoading = true;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(50),
        height: double.infinity,
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Text(
                "Welcome to Horizons! Create an account to start ",
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                },
                decoration: InputDecoration(
                    hintText: "My name is...", hintMaxLines: 32),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    _authData["email"] = value;
                  });
                },
                decoration:
                    InputDecoration(hintText: "Email:", hintMaxLines: 32),
              ),
              TextFormField(
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    _authData["password"] = value;
                  });
                },
                decoration:
                    InputDecoration(hintText: "Password:", hintMaxLines: 32),
              ),
              TextFormField(
                obscureText: true,
                validator: (value) {
                  if (value != _authData["password"]) {
                    return "Passwords do not match";
                  } else return "";
                },
                decoration: InputDecoration(
                    hintText: "Confirm password:", hintMaxLines: 32),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.bottomRight,
                child: RaisedButton(
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {
                    _submit();
                  },
                  child: Text("Create"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
