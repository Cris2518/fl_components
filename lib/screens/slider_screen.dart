import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderScreen'),
      ),
      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 600,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnable ? (value) {
              _sliderValue = value;
              setState(() {});
            }
            : null,
          ),
      
          Checkbox(
            value: _sliderEnable, 
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            },
          ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: Text('Enable Slider'),
            value: _sliderEnable, 
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            },
          ),

          Switch(
            value: _sliderEnable, 
            onChanged: (value) {
            _sliderEnable = value;
            setState(() {});
          }),

          SwitchListTile.adaptive(
            value: _sliderEnable, 
            onChanged: (value) => setState(() => _sliderEnable = value), 
            title: Text('Enable Slider')
          ),

          AboutListTile(
            icon: Icon(Icons.info),
            applicationName: 'SliderScreen',
            applicationVersion: '1.0.0',
            applicationIcon: Icon(Icons.adb),
            applicationLegalese: '© 2021 Flutter',
            child: Text('About'),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: NetworkImage('https://picsum.photos/200/300'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      )
    );
  }
}