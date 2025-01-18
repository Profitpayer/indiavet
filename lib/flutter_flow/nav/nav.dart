import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const WelcomeWidget() : const HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const WelcomeWidget() : const HomePageWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'AppointmentBooking',
          path: '/appointmentBooking',
          builder: (context, params) => const AppointmentBookingWidget(),
        ),
        FFRoute(
          name: 'SalesManagement',
          path: '/salesManagement',
          builder: (context, params) => const SalesManagementWidget(),
        ),
        FFRoute(
          name: 'OrderManagement',
          path: '/orderManagement',
          builder: (context, params) => const OrderManagementWidget(),
        ),
        FFRoute(
          name: 'DoctorID',
          path: '/doctorID',
          builder: (context, params) => const DoctorIDWidget(),
        ),
        FFRoute(
          name: 'VeterinaryServicesTermsandConditions',
          path: '/veterinaryServicesTermsandConditions',
          builder: (context, params) =>
              const VeterinaryServicesTermsandConditionsWidget(),
        ),
        FFRoute(
          name: 'HomeDashboard',
          path: '/homeDashboard',
          builder: (context, params) => const HomeDashboardWidget(),
        ),
        FFRoute(
          name: 'DoctorList',
          path: '/doctorList',
          builder: (context, params) => const DoctorListWidget(),
        ),
        FFRoute(
          name: 'Onboarding',
          path: '/onboarding',
          builder: (context, params) => const OnboardingWidget(),
        ),
        FFRoute(
          name: 'DoctorPanel',
          path: '/doctorPanel',
          builder: (context, params) => const DoctorPanelWidget(),
        ),
        FFRoute(
          name: 'MyHistory',
          path: '/myHistory',
          builder: (context, params) => const MyHistoryWidget(),
        ),
        FFRoute(
          name: 'CreateAccount',
          path: '/createAccount',
          builder: (context, params) => const CreateAccountWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'Farmer',
          path: '/farmer',
          builder: (context, params) => const FarmerWidget(),
        ),
        FFRoute(
          name: 'Medicalrepresentativepane',
          path: '/medicalrepresentativepane',
          builder: (context, params) => const MedicalrepresentativepaneWidget(),
        ),
        FFRoute(
          name: 'Adminhome',
          path: '/adminhome',
          builder: (context, params) => const AdminhomeWidget(),
        ),
        FFRoute(
          name: 'AdminCommission',
          path: '/adminCommission',
          builder: (context, params) => const AdminCommissionWidget(),
        ),
        FFRoute(
          name: 'Generate_Prescription',
          path: '/generatePrescription',
          builder: (context, params) => const GeneratePrescriptionWidget(),
        ),
        FFRoute(
          name: 'Notice',
          path: '/notice',
          builder: (context, params) => const NoticeWidget(),
        ),
        FFRoute(
          name: 'M_IMS',
          path: '/mIms',
          builder: (context, params) => const MImsWidget(),
        ),
        FFRoute(
          name: 'PrescriptionHistory',
          path: '/prescriptionHistory',
          builder: (context, params) => const PrescriptionHistoryWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => const ProfileWidget(),
        ),
        FFRoute(
          name: 'JobDashboard',
          path: '/jobDashboard',
          builder: (context, params) => const JobDashboardWidget(),
        ),
        FFRoute(
          name: 'SearchResults',
          path: '/searchResults',
          builder: (context, params) => const SearchResultsWidget(),
        ),
        FFRoute(
          name: 'JobDetails',
          path: '/jobDetails',
          builder: (context, params) => const JobDetailsWidget(),
        ),
        FFRoute(
          name: 'RDashboard',
          path: '/rDashboard',
          builder: (context, params) => const RDashboardWidget(),
        ),
        FFRoute(
          name: 'RJobDetails',
          path: '/rJobDetails',
          builder: (context, params) => const RJobDetailsWidget(),
        ),
        FFRoute(
          name: 'Applicants',
          path: '/applicants',
          builder: (context, params) => const ApplicantsWidget(),
        ),
        FFRoute(
          name: 'ApplicantDetails',
          path: '/applicantDetails',
          builder: (context, params) => const ApplicantDetailsWidget(),
        ),
        FFRoute(
          name: 'Edit_Generate_Prescription',
          path: '/editGeneratePrescription',
          builder: (context, params) => const EditGeneratePrescriptionWidget(),
        ),
        FFRoute(
          name: 'welcome',
          path: '/welcome',
          builder: (context, params) => const WelcomeWidget(),
        ),
        FFRoute(
          name: 'bankkyc',
          path: '/bankkyc',
          builder: (context, params) => const BankkycWidget(),
        ),
        FFRoute(
          name: 'WithdrawalEnquiry',
          path: '/withdrawalEnquiry',
          builder: (context, params) => const WithdrawalEnquiryWidget(),
        ),
        FFRoute(
          name: 'AppointmentHistory',
          path: '/appointmentHistory',
          builder: (context, params) => const AppointmentHistoryWidget(),
        ),
        FFRoute(
          name: 'OrderReport',
          path: '/orderReport',
          builder: (context, params) => const OrderReportWidget(),
        ),
        FFRoute(
          name: 'PharmacyReport',
          path: '/pharmacyReport',
          builder: (context, params) => const PharmacyReportWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => const ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'AllPrescriptionHistory',
          path: '/allPrescriptionHistory',
          builder: (context, params) => const AllPrescriptionHistoryWidget(),
        ),
        FFRoute(
          name: 'MedicalStore',
          path: '/MedicalStore',
          builder: (context, params) => const MedicalStoreWidget(),
        ),
        FFRoute(
          name: 'VeterinaryMedicine',
          path: '/veterinaryMedicine',
          builder: (context, params) => const VeterinaryMedicineWidget(),
        ),
        FFRoute(
          name: 'AdminListing',
          path: '/adminListing',
          builder: (context, params) => const AdminListingWidget(),
        ),
        FFRoute(
          name: 'Thanks',
          path: '/thanks',
          builder: (context, params) => const ThanksWidget(),
        ),
        FFRoute(
          name: 'search',
          path: '/search',
          builder: (context, params) => const SearchWidget(),
        ),
        FFRoute(
          name: 'News_Offers_broadcasting',
          path: '/newsOffersBroadcasting',
          builder: (context, params) => const NewsOffersBroadcastingWidget(),
        ),
        FFRoute(
          name: 'Review',
          path: '/review',
          builder: (context, params) => const ReviewWidget(),
        ),
        FFRoute(
          name: 'crmpage',
          path: '/crmpage',
          builder: (context, params) => const CrmpageWidget(),
        ),
        FFRoute(
          name: 'Home22DashboardResponsive',
          path: '/home22DashboardResponsive',
          builder: (context, params) => const Home22DashboardResponsiveWidget(),
        ),
        FFRoute(
          name: 'EditProfile',
          path: '/editProfile',
          builder: (context, params) => const EditProfileWidget(),
        ),
        FFRoute(
          name: 'tp1',
          path: '/TP1',
          builder: (context, params) => const Tp1Widget(),
        ),
        FFRoute(
          name: 'Test',
          path: '/test',
          builder: (context, params) => const TestWidget(),
        ),
        FFRoute(
          name: 'AllAppointmentHistory',
          path: '/allAppointmentHistory',
          builder: (context, params) => const AllAppointmentHistoryWidget(),
        ),
        FFRoute(
          name: 'MyProductList',
          path: '/myProductList',
          builder: (context, params) => const MyProductListWidget(),
        ),
        FFRoute(
          name: 'Medicalshop',
          path: '/medicalshop',
          builder: (context, params) => const MedicalshopWidget(),
        ),
        FFRoute(
          name: 'AddProduct',
          path: '/addProduct',
          builder: (context, params) => const AddProductWidget(),
        ),
        FFRoute(
          name: 'Farmerlist',
          path: '/farmerlist',
          builder: (context, params) => const FarmerlistWidget(),
        ),
        FFRoute(
          name: 'CommissionDashboard',
          path: '/commissionDashboard',
          builder: (context, params) => const CommissionDashboardWidget(),
        ),
        FFRoute(
          name: 'MRList',
          path: '/mRList',
          builder: (context, params) => const MRListWidget(),
        ),
        FFRoute(
          name: 'medicalrepresentative',
          path: '/medicalrepresentative',
          builder: (context, params) => const MedicalrepresentativeWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/homePage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Inidavet_Logo.jpg',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
