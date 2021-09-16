import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masters/presentation/router/route_generator.dart';

import 'logic/gst_details/cubit/gst_details_cubit.dart';
import 'repositories/gst_repository/gst_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final gstDetailsRepository = GstDetailsRepository();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return RepositoryProvider.value(
      value: gstDetailsRepository,
      child: BlocProvider(
        create: (context) =>
            GstDetailsCubit(gstDetailsRepository: gstDetailsRepository),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Masters Assignment',
          theme: ThemeData(
            primaryColor: const Color(0xff2DA05E),
            secondaryHeaderColor: const Color(0xff1A884B),
          ),
          initialRoute: '/',
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
    );
  }
}
