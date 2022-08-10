import 'package:first_project/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  String urlImage1 = 'https://pbs.twimg.com/media/E5ZQZh6X0AUgKAf.jpg';
  String urlImage2 =
      'https://pbs.twimg.com/media/E6l6xjiWUAEbYgX?format=jpg&name=4096x4096';
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders & Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                value: _sliderValue,
                onChanged: _sliderEnabled
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            // Checkbox(
            //     value: _sliderEnabled,
            //     onChanged: (value) {
            //       _sliderEnabled = value ?? true;
            //       setState(() {});
            //     }),
            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: Text(_sliderEnabled
                    ? 'Deshabilitar Slider'
                    : 'Habilitar Slider'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value ?? true;
                    })),
            // Switch(
            //   value: _sliderEnabled,
            //   onChanged: (value) => setState(() {
            //     _sliderEnabled = value;
            //   })),
            SwitchListTile.adaptive(
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value;
                    }),
                activeColor: AppTheme.primary,
                title: Text(_sliderEnabled
                    ? 'Deshabilitar Slider'
                    : 'Habilitar Slider')),
            
            const AboutListTile(),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                    image: NetworkImage(urlImage2),
                    fit: BoxFit.contain,
                    width: _sliderValue),
              ),
            )
          ],
        ));
  }
}
