import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:guidance/cubit/app_cubit/cubit.dart';
import 'package:guidance/cubit/app_cubit/stastes.dart';
import 'package:guidance/models/model.dart';
import 'package:guidance/modules/web_view_screen/web_view_screen.dart';
import 'package:guidance/styles/colors/colors.dart';
// import 'package:maps_launcher/maps_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..getData(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);

          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Conditional.single(
                context: context,
                conditionBuilder: (BuildContext context) =>
                    cubit.model.isNotEmpty,
                widgetBuilder: (BuildContext context) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 8),
                        Expanded(
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return builder(
                                cubit.model[index],
                                context,
                              );
                            },
                            separatorBuilder: (context, index) =>
                                SizedBox(height: 12),
                            itemCount: cubit.model.length,
                          ),
                        ),
                      ],
                    ),
                fallbackBuilder: (BuildContext context) =>
                    const Center(child: CircularProgressIndicator())),
          );

        },
      ),
    );
  }
}

Widget builder(
  Model model,
  BuildContext context,

  // Function onTap,
  // Widget icon,
) =>
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
          // cubit.changeCustomTileExpanded1(value);
        },

        trailing: const Icon(Icons.add),
        // Icon(
        //   cubit.customTileExpanded1 ? Icons.remove : Icons.add,
        //   color: appColor,
        // ),
        title: Text(
          '${model.title}',
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        children: <Widget>[
          ListTile(title: Text('${model.name}')),
          ListTile(title: Text('${model.address}')),
          ListTile(title: Text('${model.phone}')),
          ListTile(title: Text('${model.openhours}')),
          ListTile(title: Text('${model.prices}')),
          ListTile(
            title: MaterialButton(
              onPressed: () {
                // open location in webview
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebViewScreen(
                      url: '${model.url}',
                    ),
                  ),
                );
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
    );
