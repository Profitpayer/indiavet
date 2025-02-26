import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

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
          appStateNotifier.loggedIn ? WelcomeWidget() : HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? WelcomeWidget() : HomePageWidget(),
        ),
        FFRoute(
          name: HomePageWidget.routeName,
          path: HomePageWidget.routePath,
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: AppointmentBookingWidget.routeName,
          path: AppointmentBookingWidget.routePath,
          builder: (context, params) => AppointmentBookingWidget(),
        ),
        FFRoute(
          name: SalesManagementWidget.routeName,
          path: SalesManagementWidget.routePath,
          builder: (context, params) => SalesManagementWidget(),
        ),
        FFRoute(
          name: OrderManagementWidget.routeName,
          path: OrderManagementWidget.routePath,
          builder: (context, params) => OrderManagementWidget(),
        ),
        FFRoute(
          name: DoctorIDWidget.routeName,
          path: DoctorIDWidget.routePath,
          builder: (context, params) => DoctorIDWidget(),
        ),
        FFRoute(
          name: VeterinaryServicesTermsandConditionsWidget.routeName,
          path: VeterinaryServicesTermsandConditionsWidget.routePath,
          builder: (context, params) =>
              VeterinaryServicesTermsandConditionsWidget(),
        ),
        FFRoute(
          name: HomeDashboardWidget.routeName,
          path: HomeDashboardWidget.routePath,
          builder: (context, params) => HomeDashboardWidget(),
        ),
        FFRoute(
          name: OnboardingWidget.routeName,
          path: OnboardingWidget.routePath,
          builder: (context, params) => OnboardingWidget(),
        ),
        FFRoute(
          name: DoctorPanelWidget.routeName,
          path: DoctorPanelWidget.routePath,
          builder: (context, params) => DoctorPanelWidget(),
        ),
        FFRoute(
          name: MyHistoryWidget.routeName,
          path: MyHistoryWidget.routePath,
          builder: (context, params) => MyHistoryWidget(),
        ),
        FFRoute(
          name: CreateAccountWidget.routeName,
          path: CreateAccountWidget.routePath,
          builder: (context, params) => CreateAccountWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: FarmerWidget.routeName,
          path: FarmerWidget.routePath,
          builder: (context, params) => FarmerWidget(),
        ),
        FFRoute(
          name: MedicalrepresentativepaneWidget.routeName,
          path: MedicalrepresentativepaneWidget.routePath,
          builder: (context, params) => MedicalrepresentativepaneWidget(),
        ),
        FFRoute(
          name: AdminhomeWidget.routeName,
          path: AdminhomeWidget.routePath,
          builder: (context, params) => AdminhomeWidget(),
        ),
        FFRoute(
          name: AdminCommissionWidget.routeName,
          path: AdminCommissionWidget.routePath,
          builder: (context, params) => AdminCommissionWidget(),
        ),
        FFRoute(
          name: GeneratePrescriptionWidget.routeName,
          path: GeneratePrescriptionWidget.routePath,
          builder: (context, params) => GeneratePrescriptionWidget(),
        ),
        FFRoute(
          name: NoticeWidget.routeName,
          path: NoticeWidget.routePath,
          builder: (context, params) => NoticeWidget(),
        ),
        FFRoute(
          name: MImsWidget.routeName,
          path: MImsWidget.routePath,
          builder: (context, params) => MImsWidget(),
        ),
        FFRoute(
          name: PrescriptionHistoryWidget.routeName,
          path: PrescriptionHistoryWidget.routePath,
          builder: (context, params) => PrescriptionHistoryWidget(),
        ),
        FFRoute(
          name: ProfileWidget.routeName,
          path: ProfileWidget.routePath,
          builder: (context, params) => ProfileWidget(),
        ),
        FFRoute(
          name: OurDoctorsWidget.routeName,
          path: OurDoctorsWidget.routePath,
          builder: (context, params) => OurDoctorsWidget(),
        ),
        FFRoute(
          name: SearchResultsWidget.routeName,
          path: SearchResultsWidget.routePath,
          builder: (context, params) => SearchResultsWidget(),
        ),
        FFRoute(
          name: JobDetailsWidget.routeName,
          path: JobDetailsWidget.routePath,
          builder: (context, params) => JobDetailsWidget(),
        ),
        FFRoute(
          name: RDashboardWidget.routeName,
          path: RDashboardWidget.routePath,
          builder: (context, params) => RDashboardWidget(),
        ),
        FFRoute(
          name: RJobDetailsWidget.routeName,
          path: RJobDetailsWidget.routePath,
          builder: (context, params) => RJobDetailsWidget(),
        ),
        FFRoute(
          name: ApplicantsWidget.routeName,
          path: ApplicantsWidget.routePath,
          builder: (context, params) => ApplicantsWidget(),
        ),
        FFRoute(
          name: ApplicantDetailsWidget.routeName,
          path: ApplicantDetailsWidget.routePath,
          builder: (context, params) => ApplicantDetailsWidget(),
        ),
        FFRoute(
          name: EditGeneratePrescriptionWidget.routeName,
          path: EditGeneratePrescriptionWidget.routePath,
          builder: (context, params) => EditGeneratePrescriptionWidget(),
        ),
        FFRoute(
          name: WelcomeWidget.routeName,
          path: WelcomeWidget.routePath,
          builder: (context, params) => WelcomeWidget(),
        ),
        FFRoute(
          name: BankkycWidget.routeName,
          path: BankkycWidget.routePath,
          builder: (context, params) => BankkycWidget(),
        ),
        FFRoute(
          name: WithdrawalEnquiryWidget.routeName,
          path: WithdrawalEnquiryWidget.routePath,
          builder: (context, params) => WithdrawalEnquiryWidget(),
        ),
        FFRoute(
          name: AppointmentHistoryWidget.routeName,
          path: AppointmentHistoryWidget.routePath,
          builder: (context, params) => AppointmentHistoryWidget(),
        ),
        FFRoute(
          name: OrderReportWidget.routeName,
          path: OrderReportWidget.routePath,
          builder: (context, params) => OrderReportWidget(),
        ),
        FFRoute(
          name: PharmacyReportWidget.routeName,
          path: PharmacyReportWidget.routePath,
          builder: (context, params) => PharmacyReportWidget(),
        ),
        FFRoute(
          name: ForgotPasswordWidget.routeName,
          path: ForgotPasswordWidget.routePath,
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: AllPrescriptionHistoryWidget.routeName,
          path: AllPrescriptionHistoryWidget.routePath,
          builder: (context, params) => AllPrescriptionHistoryWidget(),
        ),
        FFRoute(
          name: MedicalStoreWidget.routeName,
          path: MedicalStoreWidget.routePath,
          builder: (context, params) => MedicalStoreWidget(),
        ),
        FFRoute(
          name: VeterinaryMedicineWidget.routeName,
          path: VeterinaryMedicineWidget.routePath,
          builder: (context, params) => VeterinaryMedicineWidget(),
        ),
        FFRoute(
          name: NewProductWidget.routeName,
          path: NewProductWidget.routePath,
          builder: (context, params) => NewProductWidget(),
        ),
        FFRoute(
          name: SearchWidget.routeName,
          path: SearchWidget.routePath,
          builder: (context, params) => SearchWidget(),
        ),
        FFRoute(
          name: NewsOffersBroadcastingWidget.routeName,
          path: NewsOffersBroadcastingWidget.routePath,
          builder: (context, params) => NewsOffersBroadcastingWidget(),
        ),
        FFRoute(
          name: ReviewWidget.routeName,
          path: ReviewWidget.routePath,
          builder: (context, params) => ReviewWidget(),
        ),
        FFRoute(
          name: CrmpageWidget.routeName,
          path: CrmpageWidget.routePath,
          builder: (context, params) => CrmpageWidget(),
        ),
        FFRoute(
          name: Home22DashboardResponsiveWidget.routeName,
          path: Home22DashboardResponsiveWidget.routePath,
          builder: (context, params) => Home22DashboardResponsiveWidget(),
        ),
        FFRoute(
          name: EditProfileWidget.routeName,
          path: EditProfileWidget.routePath,
          builder: (context, params) => EditProfileWidget(),
        ),
        FFRoute(
          name: TestWidget.routeName,
          path: TestWidget.routePath,
          builder: (context, params) => TestWidget(),
        ),
        FFRoute(
          name: MyProductListWidget.routeName,
          path: MyProductListWidget.routePath,
          builder: (context, params) => MyProductListWidget(),
        ),
        FFRoute(
          name: AddProductWidget.routeName,
          path: AddProductWidget.routePath,
          builder: (context, params) => AddProductWidget(),
        ),
        FFRoute(
          name: FarmerlistWidget.routeName,
          path: FarmerlistWidget.routePath,
          builder: (context, params) => FarmerlistWidget(),
        ),
        FFRoute(
          name: CommissionDashboardWidget.routeName,
          path: CommissionDashboardWidget.routePath,
          builder: (context, params) => CommissionDashboardWidget(),
        ),
        FFRoute(
          name: MRListWidget.routeName,
          path: MRListWidget.routePath,
          builder: (context, params) => MRListWidget(),
        ),
        FFRoute(
          name: HomeWidget.routeName,
          path: HomeWidget.routePath,
          builder: (context, params) => HomeWidget(),
        ),
        FFRoute(
          name: Doctor111111Widget.routeName,
          path: Doctor111111Widget.routePath,
          builder: (context, params) => Doctor111111Widget(),
        ),
        FFRoute(
          name: ProductCategoryWidget.routeName,
          path: ProductCategoryWidget.routePath,
          builder: (context, params) => ProductCategoryWidget(),
        ),
        FFRoute(
          name: ProdectaddtocardWidget.routeName,
          path: ProdectaddtocardWidget.routePath,
          builder: (context, params) => ProdectaddtocardWidget(),
        ),
        FFRoute(
          name: Home09DashboardWidget.routeName,
          path: Home09DashboardWidget.routePath,
          builder: (context, params) => Home09DashboardWidget(),
        ),
        FFRoute(
          name: Details43WorkoutSummaryWidget.routeName,
          path: Details43WorkoutSummaryWidget.routePath,
          builder: (context, params) => Details43WorkoutSummaryWidget(),
        ),
        FFRoute(
          name: Home24BankFintechDashboardWidget.routeName,
          path: Home24BankFintechDashboardWidget.routePath,
          builder: (context, params) => Home24BankFintechDashboardWidget(),
        ),
        FFRoute(
          name: AppunderdevelopmentWidget.routeName,
          path: AppunderdevelopmentWidget.routePath,
          builder: (context, params) => AppunderdevelopmentWidget(),
        ),
        FFRoute(
          name: FeedbackWidget.routeName,
          path: FeedbackWidget.routePath,
          builder: (context, params) => FeedbackWidget(),
        ),
        FFRoute(
          name: OurPharmacyWidget.routeName,
          path: OurPharmacyWidget.routePath,
          builder: (context, params) => OurPharmacyWidget(),
        ),
        FFRoute(
          name: OurFarmerWidget.routeName,
          path: OurFarmerWidget.routePath,
          builder: (context, params) => OurFarmerWidget(),
        ),
        FFRoute(
          name: OurMRWidget.routeName,
          path: OurMRWidget.routePath,
          builder: (context, params) => OurMRWidget(),
        ),
        FFRoute(
          name: EditAddproductWidget.routeName,
          path: EditAddproductWidget.routePath,
          builder: (context, params) => EditAddproductWidget(),
        ),
        FFRoute(
          name: PleceOrderWidget.routeName,
          path: PleceOrderWidget.routePath,
          builder: (context, params) => PleceOrderWidget(),
        ),
        FFRoute(
          name: CheckoutorderWidget.routeName,
          path: CheckoutorderWidget.routePath,
          builder: (context, params) => CheckoutorderWidget(),
        ),
        FFRoute(
          name: ChekoutOrderWidget.routeName,
          path: ChekoutOrderWidget.routePath,
          builder: (context, params) => ChekoutOrderWidget(),
        ),
        FFRoute(
          name: Referralcode1Widget.routeName,
          path: Referralcode1Widget.routePath,
          builder: (context, params) => Referralcode1Widget(),
        ),
        FFRoute(
          name: EarnmonryWidget.routeName,
          path: EarnmonryWidget.routePath,
          builder: (context, params) => EarnmonryWidget(),
        ),
        FFRoute(
          name: PrescriptionHistoryCopyWidget.routeName,
          path: PrescriptionHistoryCopyWidget.routePath,
          builder: (context, params) => PrescriptionHistoryCopyWidget(),
        ),
        FFRoute(
          name: EditaddprodecutWidget.routeName,
          path: EditaddprodecutWidget.routePath,
          builder: (context, params) => EditaddprodecutWidget(),
        ),
        FFRoute(
          name: PurchaseOrderWidget.routeName,
          path: PurchaseOrderWidget.routePath,
          builder: (context, params) => PurchaseOrderWidget(),
        ),
        FFRoute(
          name: PrescriptionSaleOutWidget.routeName,
          path: PrescriptionSaleOutWidget.routePath,
          builder: (context, params) => PrescriptionSaleOutWidget(),
        ),
        FFRoute(
          name: OutstandingReportsWidget.routeName,
          path: OutstandingReportsWidget.routePath,
          builder: (context, params) => OutstandingReportsWidget(),
        ),
        FFRoute(
          name: VisitreportWidget.routeName,
          path: VisitreportWidget.routePath,
          builder: (context, params) => VisitreportWidget(),
        ),
        FFRoute(
          name: Create06BookAppointmentWidget.routeName,
          path: Create06BookAppointmentWidget.routePath,
          builder: (context, params) => Create06BookAppointmentWidget(),
        ),
        FFRoute(
          name: Authentication2Widget.routeName,
          path: Authentication2Widget.routePath,
          builder: (context, params) => Authentication2Widget(),
        ),
        FFRoute(
          name: PasscodeWidget.routeName,
          path: PasscodeWidget.routePath,
          builder: (context, params) => PasscodeWidget(),
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
    StructBuilder<T>? structBuilder,
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
      structBuilder: structBuilder,
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
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  child: Image.asset(
                    'assets/images/log1-removebg-preview.png',
                    fit: BoxFit.fill,
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

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
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
