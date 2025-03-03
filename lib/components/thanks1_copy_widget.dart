import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'thanks1_copy_model.dart';
export 'thanks1_copy_model.dart';

class Thanks1CopyWidget extends StatefulWidget {
  const Thanks1CopyWidget({super.key});

  @override
  State<Thanks1CopyWidget> createState() => _Thanks1CopyWidgetState();
}

class _Thanks1CopyWidgetState extends State<Thanks1CopyWidget> {
  late Thanks1CopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Thanks1CopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(48.0, 0.0, 48.0, 0.0),
            child: Container(
              width: double.infinity,
              height: 200.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).accent4,
                    FlutterFlowTheme.of(context).accent3
                  ],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(0.0, -1.0),
                  end: AlignmentDirectional(0, 1.0),
                ),
                borderRadius: BorderRadius.circular(28.0),
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Lottie.asset(
                      'assets/jsons/Animation_-_1699331108500.json',
                      width: 150.0,
                      height: 130.0,
                      fit: BoxFit.cover,
                      repeat: false,
                      animate: true,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '2i5ei5qp' /* Booking Successful! */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Lottie.network(
                    'https://lottie.host/2498d03a-d775-4d85-8b19-bba628542fe7/Tp1aSFKrW9.json',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.contain,
                    animate: true,
                  ),
                ].divide(SizedBox(height: 12.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
