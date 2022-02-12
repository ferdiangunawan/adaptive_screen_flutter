Hi Flutter dev, this package helps you to build UI with adaptive screen based on mobile, tab and web.

## Example

<img src= "https://raw.githubusercontent.com/ferdiangunawan/adaptive_screen_flutter/master/screen_adaptive_flutter.gif"/>

## Getting started

You can custom the brakepoint of the screen width or just use the default of 
this package for the screen width.

## Usage

The defaut brake point of tab is `600.0` and `950` for the web.

OR

If you want to custom the brake point,
you can set init brake point in main method like this
 
```dart
void main(){
    // here for setting mobile to tab brakepoint
    ScreenInit.setTabBrakePoint(650.0);
    // here for setting tab to web brakepoint
    ScreenInit.setWebBrakePoint(1000.0);
    runApp(MyApp());
}
```
Wrap your widget with `AdaptiveScreen()`
```dart
AdaptiveScreen(
    mobile: Center(
        child: Text('Ini Mobile')
    ),
    tab: Row(
        children:[
            Text('Ini tab'),
            Container()
            // ...
        ]
    ),
    web: Column(
        children:[
            Text('Ini web'),
            SizedBox(height:30),
            // ...
        ]
    )
)
```


## LICENSE

```
MIT License

Copyright (c) 2022 Ferdian Gunawan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## Additional Information
Please don't hesitate to contribute to this package.

Shout out to Abdelouahed Medjoudja that has inspired me for the default width screen `600` and `950`.