import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guidance/cubit/app_cubit/cubit.dart';
import 'package:guidance/cubit/app_cubit/stastes.dart';
import 'package:guidance/modules/web_view_screen/web_view_screen.dart';
import 'package:guidance/styles/colors/colors.dart';
// import 'package:maps_launcher/maps_launcher.dart';

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
                      'University',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      const ListTile(title: Text('Name: Yonsei University')),
                      const ListTile(
                          title: Text('Address: 50 Yonsei-ro, South Korea')),
                      const ListTile(title: Text('Phone: 82 221 223 84 ')),
                      const ListTile(title: Text('Open hours: 9AM-5PM')),
                      ListTile(
                        title: MaterialButton(
                          onPressed: () {
                            // open location in webview
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WebViewScreen(
                                  url: 'https://goo.gl/maps/uCx5H978oymsKQH78',
                                ),
                              ),
                            );

                            // MapsLauncher.launchCoordinates(
                            //     -22.823170, -43.178980);
                          },
                          color: appColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'location',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
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
                      'Hospital',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      const ListTile(title: Text('Name: Severance Hospital')),
                      const ListTile(
                          title: Text('Address: 50-1 Yonsei-ro, South Korea')),
                      const ListTile(title: Text('Phone: 82 159 910 06')),
                      ListTile(
                        title: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WebViewScreen(
                                  url: 'https://goo.gl/maps/zmhvXMJ9RaA6Gj4CA',
                                ),
                              ),
                            );
                            // MapsLauncher.launchCoordinates(
                            //     -22.823170, -43.178980);
                          },
                          color: appColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'location',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
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
                      cubit.changeCustomTileExpanded3(value);
                    },
                    trailing: Icon(
                      cubit.customTileExpanded3 ? Icons.remove : Icons.add,
                      color: appColor,
                    ),
                    title: const Text(
                      'Bus Station',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      const ListTile(title: Text('Name: Myeongmul Street')),
                      const ListTile(
                          title: Text('Address: Myeongmul Street, Seoul')),
                      const ListTile(title: Text('Phone: 752, 770, 771, SA08')),
                      ListTile(
                        title: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WebViewScreen(
                                  url: 'https://goo.gl/maps/3vguSiysMoczFWs18',
                                ),
                              ),
                            );
                            // MapsLauncher.launchCoordinates(
                            //     -22.823170, -43.178980);
                          },
                          color: appColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'location',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
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
                      cubit.changeCustomTileExpanded4(value);
                    },
                    trailing: Icon(
                      cubit.customTileExpanded4 ? Icons.remove : Icons.add,
                      color: appColor,
                    ),
                    title: const Text(
                      'Metro station',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      const ListTile(
                          title: Text('Name: Shinchon metro station')),
                      const ListTile(
                          title: Text(
                              'Address: Gajeong 3(sam)-dong, Seo-gu, South Korea')),
                      const ListTile(title: Text('Phone: 2')),
                      ListTile(
                        title: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WebViewScreen(
                                  url: 'https://goo.gl/maps/nJm5zbNFNk2scSgx9',
                                ),
                              ),
                            );
                            // MapsLauncher.launchCoordinates(
                            //     -22.823170, -43.178980);
                          },
                          color: appColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'location',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
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
                      cubit.changeCustomTileExpanded5(value);
                    },
                    trailing: Icon(
                      cubit.customTileExpanded5 ? Icons.remove : Icons.add,
                      color: appColor,
                    ),
                    title: const Text(
                      'Restaurants',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      const ListTile(title: Text('Name: AAngan')),
                      const ListTile(
                          title:
                              Text('Address: 63 Ewhayeodae-gil, South Korea')),
                      const ListTile(title: Text('Phone: 82 236 487 71')),
                      const ListTile(title: Text('open hours: 10:30AM-10PM')),
                      const ListTile(
                          title: Text(
                              'Menu: Indian, Asian, Korean, and Halal food')),
                      const ListTile(title: Text('Prices: 4,000Won-6000WON')),
                      ListTile(
                        title: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WebViewScreen(
                                  url: 'https://g.page/aangan-seul?share',
                                ),
                              ),
                            );
                            // MapsLauncher.launchCoordinates(
                            //     -20.519480, -54.646760);
                          },
                          color: appColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'location',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
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
                      cubit.changeCustomTileExpanded6(value);
                    },
                    trailing: Icon(
                      cubit.customTileExpanded6 ? Icons.remove : Icons.add,
                      color: appColor,
                    ),
                    title: const Text(
                      'Expatriating housing',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      const ListTile(
                          title: Text(
                              'Name: New Village Boutique Duplex Building')),
                      const ListTile(
                          title: Text(
                              'Address:107호, 62-50 Changcheon-dong, Seoul, South Korea')),
                      const ListTile(title: Text('Phone: 82 143 654 09')),
                      const ListTile(title: Text('Reviews: 5 Stars')),
                      const ListTile(title: Text('Prices: 500,000Won')),
                      const ListTile(title: Text('Building Number: 107')),
                      ListTile(
                        title: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WebViewScreen(
                                  url: 'https://goo.gl/maps/aUY3jNQS98MRNpKJA',
                                ),
                              ),
                            );
                            // MapsLauncher.launchCoordinates(
                            //     -20.519480, -54.646760);
                          },
                          color: appColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'location',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
