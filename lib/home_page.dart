import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextWithPadding('Basic toggle switch:'),
                  ToggleSwitch(
                    totalSwitches: 3,
                    labels: const ['America', 'Canada', 'Mexico'],
                    initialLabelIndex: 0,
                    fontSize: 13,
                    onToggle: (index) => debugPrint(
                      'Basic toggle switch => switched to: $index',
                    ),
                  ),
                  const TextWithPadding(
                    'Basic toggle switch with custom height and font size:',
                  ),
                  ToggleSwitch(
                    totalSwitches: 3,
                    labels: const ['Tall', 'Grande', 'Venti'],
                    initialLabelIndex: 1,
                    fontSize: 20,
                    minWidth: 90,
                    minHeight: 90,
                    activeBgColor: const [Colors.green],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.grey[900],
                    onToggle: (index) => debugPrint(
                      'Basic toggle switch with custom height and font size => switched to: $index',
                    ),
                  ),
                  const TextWithPadding('With text or icon and custom widths:'),
                  ToggleSwitch(
                    totalSwitches: 2,
                    labels: const ['YES', ''],
                    icons: const [null, FontAwesomeIcons.xmark],
                    customWidths: const [90, 50],
                    cornerRadius: 20,
                    activeBgColors: const [
                      [Colors.cyan],
                      [Colors.redAccent],
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    onToggle: (index) => debugPrint(
                      'With text or icon and custom widths => switched to: $index',
                    ),
                  ),
                  const TextWithPadding(
                    'With icons, text and different active background colors:',
                  ),
                  ToggleSwitch(
                    totalSwitches: 2,
                    labels: const ['Male', 'Female'],
                    icons: const [
                      FontAwesomeIcons.mars,
                      FontAwesomeIcons.venus,
                    ],
                    initialLabelIndex: 1,
                    cornerRadius: 20,
                    minWidth: 90,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    activeBgColors: const [
                      [Colors.blue],
                      [Colors.pink],
                    ],
                    onToggle: (index) => debugPrint(
                      'With icons, text and different active background colors => switched to: $index',
                    ),
                  ),
                  const TextWithPadding(
                    'With border color, border width, icons, custom height and different active background colors',
                  ),
                  ToggleSwitch(
                    totalSwitches: 3,
                    icons: const [
                      FontAwesomeIcons.mars,
                      FontAwesomeIcons.venus,
                      FontAwesomeIcons.transgender,
                    ],
                    initialLabelIndex: 2,
                    minWidth: 90,
                    minHeight: 70,
                    cornerRadius: 20,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    iconSize: 30,
                    borderWidth: 3,
                    borderColor: const [Colors.blueGrey],
                    activeBgColors: const [
                      [Colors.blue],
                      [Colors.pink],
                      [Colors.purple],
                    ],
                    onToggle: (index) => debugPrint(
                      'With border color, border width, icons, custom height and different active background colors',
                    ),
                  ),
                  const TextWithPadding(
                    'With gradient border color, divider color and gradient active background colors',
                  ),
                  ToggleSwitch(
                    totalSwitches: 3,
                    icons: const [
                      FontAwesomeIcons.facebook,
                      FontAwesomeIcons.twitter,
                      FontAwesomeIcons.instagram,
                    ],
                    minWidth: 90,
                    minHeight: 70,
                    initialLabelIndex: 1,
                    cornerRadius: 20,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    iconSize: 20,
                    borderColor: const [
                      Color(0xff3b5998),
                      Color(0xff8b9dc3),
                      Color(0xff00aeff),
                      Color(0xff0077f2),
                      Color(0xff962fbf),
                      Color(0xff4f5bd5),
                    ],
                    dividerColor: Colors.blueGrey,
                    activeBgColors: const [
                      [Color(0xff3b5998), Color(0xff8b9dc3)],
                      [Color(0xff00aeff), Color(0xff0077f2)],
                      [
                        Color(0xfffeda75),
                        Color(0xfffa7e1e),
                        Color(0xffd62976),
                        Color(0xff962fbf),
                        Color(0xff4f5bd5),
                      ],
                    ],
                    onToggle: (index) => debugPrint(
                      'With gradient border color, divider color and gradient active background colors => switched to: $index',
                    ),
                  ),
                  const TextWithPadding('With bounceInOut animation'),
                  ToggleSwitch(
                    totalSwitches: 2,
                    icons: const [
                      FontAwesomeIcons.lightbulb,
                      FontAwesomeIcons.solidLightbulb,
                    ],
                    minWidth: 90.0,
                    minHeight: 70.0,
                    initialLabelIndex: 1,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    iconSize: 30.0,
                    activeBgColors: const [
                      [Colors.black45, Colors.black26],
                      [Colors.yellow, Colors.orange],
                    ],
                    animate: true,
                    // animate must be set to true when using custom curve
                    curve: Curves.bounceInOut,
                    onToggle: (index) => debugPrint(
                      'With bounceInOut animation => switched to: $index',
                    ),
                  ),
                  const TextWithPadding('With radius style'),
                  ToggleSwitch(
                    totalSwitches: 2,
                    labels: const ['True', 'False'],
                    initialLabelIndex: 1,
                    minWidth: 90.0,
                    cornerRadius: 20.0,
                    radiusStyle: true,
                    activeBgColors: [
                      [Colors.green[800]!],
                      [Colors.red[800]!],
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    onToggle: (index) => debugPrint(
                      'With radius style => switched to: $index',
                    ),
                  ),
                  const TextWithPadding(
                    'With custom text styles, null initial label, double tap to de-activate',
                  ),
                  ToggleSwitch(
                    totalSwitches: 3,
                    labels: const ['Normal', 'Bold', 'Italic'],
                    minWidth: 90.0,
                    cornerRadius: 20.0,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: null,
                    doubleTapDisable: true,
                    // re-tap active widget to deactivate
                    customTextStyles: const [
                      null,
                      TextStyle(
                        color: Colors.brown,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w900,
                      ),
                      TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ],
                    onToggle: (index) => debugPrint(
                      'With custom text styles, null initial label, double tap to de-activate => switched to: $index',
                    ),
                  ),
                  const TextWithPadding('With custom icons'),
                  ToggleSwitch(
                    totalSwitches: 3,
                    initialLabelIndex: 2,
                    customIcons: const [
                      Icon(
                        FontAwesomeIcons.ccVisa,
                        color: Color(0xff1a1f71),
                        size: 55.0,
                      ),
                      Icon(
                        FontAwesomeIcons.ccMastercard,
                        color: Color(0xffF79E1B),
                        size: 55.0,
                      ),
                      Icon(
                        FontAwesomeIcons.ccAmex,
                        color: Color(0xff27AEE3),
                        size: 55.0,
                      ),
                    ],
                    minWidth: 90.0,
                    minHeight: 90.0,
                    cornerRadius: 20.0,
                    activeBgColors: const [
                      [Color(0xfffdbb0a)],
                      [Colors.black54],
                      [Colors.white54]
                    ],
                    inactiveFgColor: Colors.white,
                    onToggle: (index) => debugPrint(
                      'With custom icons => switched to: $index',
                    ),
                  ),
                  const TextWithPadding(
                    'Vertical toggle switch with active border',
                  ),
                  ToggleSwitch(
                    labels: const ['Spring', 'Summer', 'Fall', 'Winter'],
                    initialLabelIndex: 2,
                    activeBorders: [
                      Border.all(color: Colors.purple, width: 3.0),
                      Border.all(color: Colors.yellow.shade700, width: 3.0),
                      Border.all(color: Colors.deepOrangeAccent, width: 3.0),
                      Border.all(color: Colors.blue.shade500, width: 3.0),
                    ],
                    activeFgColor: Colors.black54,
                    isVertical: true,
                    minWidth: 150.0,
                    radiusStyle: true,
                    cornerRadius: 20.0,
                    activeBgColors: const [
                      [Colors.purpleAccent],
                      [Colors.yellow],
                      [Colors.orange],
                      [Colors.lightBlueAccent],
                    ],
                    onToggle: (index) => debugPrint(
                      'Vertical toggle switch with active border => switched to: $index',
                    ),
                  ),
                  const TextWithPadding(
                    'Custom widths greater than device width',
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Scrollbar(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ToggleSwitch(
                          labels: const [
                            'Yes, the statement above is true',
                            'False',
                            'Other',
                          ],
                          customWidths: const [300.0, 100.0, 100.0],
                          cornerRadius: 20.0,
                          activeBgColors: const [
                            [Colors.green],
                            [Colors.redAccent],
                            [Colors.blue],
                          ],
                          activeFgColor: Colors.white,
                          inactiveBgColor: Colors.grey,
                          inactiveFgColor: Colors.white,
                          onToggle: (index) => debugPrint(
                            'Custom widths greater than device width => switched to: $index',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

class TextWithPadding extends StatelessWidget {
  const TextWithPadding(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(text),
      );
}
