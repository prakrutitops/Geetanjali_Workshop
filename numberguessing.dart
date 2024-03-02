import 'dart:math';
import 'package:flutter/material.dart';

class NumberGuessing extends StatefulWidget {
  const NumberGuessing({super.key});

  @override
  State<NumberGuessing> createState() => _NumberGuessingState();
}

class _NumberGuessingState extends State<NumberGuessing> {

  TextEditingController _guessController = TextEditingController();
  late int _randomNumber;
  String _message = '';
  bool _showResult = false;


    @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _generateRandomNumber();


  }



  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Guessing Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_showResult)
              Text(
               _message,
               style: TextStyle(fontSize: 20.0),
              ),
            SizedBox(height: 20.0),
            TextField(
             controller: _guessController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter your guess',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: ()
              {
                _checkGuess();
              },
              child: Text('Check Guess'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: ()
              {
                _resetGame();
              },
              child: Text('Reset Game'),
            ),
          ],
        ),
      ),
    );
  }

  void _generateRandomNumber()
  {

    final random = Random();
    _randomNumber = random.nextInt(10) + 1;


  }

  void _checkGuess() {
    int? guess = int.tryParse(_guessController.text);

    if(guess!=null)
      {

          setState(() {


            if (guess == _randomNumber) {
              _message = 'Congratulations! You guessed the number $_randomNumber!';
            } else if (guess < _randomNumber) {
              _message = 'Try higher!';
            } else {
              _message = 'Try lower!';
            }
            _showResult = true;



          });

      }


  }

  void _resetGame() {

    setState(() {
      _guessController.clear();
      _generateRandomNumber();
      _message = '';
      _showResult = false;
    });
  }
}
