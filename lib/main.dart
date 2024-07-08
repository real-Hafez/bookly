import 'package:bookly/constatnts.dart';
import 'package:bookly/core/utilts/SERVER_LOCATOR.dart';
import 'package:bookly/core/utilts/app_utilts.dart';
import 'package:bookly/features/home/data/presentation/manager/cubit/featcherdbookcubit/featuredbook_cubit.dart';
import 'package:bookly/features/home/data/presentation/manager/cubit/newesst_books/cubit/newst_books_cubit.dart';
import 'package:bookly/features/home/data/repos/home_repo_imple.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedbookCubit(
            getIt.get<HomeRepoImple>(),
          )..featchfutchurebooks(),
        ),
        BlocProvider(
          create: (context) => NewstBooksCubit(
            getIt.get<HomeRepoImple>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: app_routers.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimarycolor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        // home: const SplashView(),
      ),
    );
  }
}
