import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guidance/cubit/app_cubit/cubit.dart';
import 'package:guidance/cubit/app_cubit/stastes.dart';
import 'package:guidance/styles/colors/colors.dart';
import 'package:maps_launcher/maps_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: appColor,
                      width: 1.2,
                    ),
                  ),
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      cubit.changeCustomTileExpanded1(value);
                    },
                    trailing: Icon(
                      cubit.customTileExpanded1 ? Icons.remove : Icons.add,
                      color: appColor,
                    ),
                    title: const Text(
                      'Hospital',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      const ListTile(title: Text('Name:')),
                      const ListTile(title: Text('Address:')),
                      const ListTile(title: Text('Phone:')),
                      const ListTile(title: Text('Open hours:')),
                      ListTile(
                        title: TextButton(
                          onPressed: () {
                            //       Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const WebViewScreen(url: 'https://goo.gl/maps/4EwUu8MqSdCcAZrM7'),
                            //   ),
                            // );
                            MapsLauncher.launchCoordinates(
                                29.984181019412308, 31.315734173425678);
                          },
                          child: const Text('location'),
                        ),
                      ),
                      // ListTile(
                      // title: Text('Location: ${cubit.onTapLink('url')}')),
                      TextButton(
                        onPressed: () {
                          //       Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const WebViewScreen(url: 'https://goo.gl/maps/4EwUu8MqSdCcAZrM7'),
                          //   ),
                          // );
                          MapsLauncher.launchCoordinates(
                              29.984181019412308, 31.315734173425678);
                        },
                        child: const Text('location'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: appColor,
                      width: 1.2,
                    ),
                  ),
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      cubit.changeCustomTileExpanded2(value);
                    },
                    trailing: Icon(
                      // add and remove icon
                      cubit.customTileExpanded2 ? Icons.remove : Icons.add,
                      color: appColor,
                    ),
                    title: const Text(
                      'restaurant',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    children: const <Widget>[
                      ListTile(title: Text('Name:')),
                      ListTile(title: Text('Address:')),
                      ListTile(title: Text('Phone:')),
                      ListTile(title: Text('Email:')),
                      ListTile(title: Text('location:')),
                    ],
                  ),
                ),
                const SizedBox(height: 12.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: appColor,
                      width: 1.2,
                    ),
                  ),
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      cubit.changeCustomTileExpanded3(value);
                    },
                    trailing: Icon(
                      cubit.customTileExpanded3 ? Icons.remove : Icons.add,
                      color: appColor,
                    ),
                    title: const Text(
                      'library',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    children: const <Widget>[
                      ListTile(title: Text('Name:')),
                      ListTile(title: Text('Address:')),
                      ListTile(title: Text('Phone:')),
                      ListTile(title: Text('Email:')),
                      ListTile(title: Text('location:')),
                    ],
                  ),
                ),
                const SizedBox(height: 12.0),
              ],
            ),
          ),
        );
      },
    );
  }
}
