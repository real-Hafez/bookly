import 'package:bookly/core/utilts/SERVER_LOCATOR.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/presentation/manager/cubit/similar_books_cubit/cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/data/presentation/views/book_detils_view.dart';
import 'package:bookly/features/home/data/presentation/views/view_model/views/home_view.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/data/repos/home_repo_imple.dart';
import 'package:bookly/features/search_feathure.dart';
import 'package:bookly/features/splash/presentation/manager/views/SplashView.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class app_routers {
  static const k_SplashView = '/';
  static const k_HomeView = '/home_view';
  static const k_Book_Detils = '/book_detils';
  static const k_Book_search = '/k_Book_search';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: k_SplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: k_HomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
          path: k_Book_Detils,
          builder: (context, state) {
            final bookModel = state.extra as BookModel;
            return BlocProvider(
              create: (context) =>
                  SimilarBooksCubit(getIt.get<HomeRepoImple>()),
              child: BookDetailsView(bookModel: bookModel),
            );
          }),
      GoRoute(
          path: k_Book_search,
          builder: (context, state) => BlocProvider(
                create: (context) =>
                    SimilarBooksCubit(getIt.get<HomeRepoImple>()),
                child: const SearchFeathure(),
              )),
    ],
  );
}
