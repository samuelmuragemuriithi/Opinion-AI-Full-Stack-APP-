import '/auth/firebase_auth/auth_util.dart';
import '/components/activities_widget.dart';
import '/components/graphline_widget.dart';
import '/components/project_details_alt/project_details_alt_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_phone_widget.dart' show HomePagePhoneWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePagePhoneModel extends FlutterFlowModel<HomePagePhoneWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webNav component.
  late WebNavModel webNavModel;
  // Model for graphline component.
  late GraphlineModel graphlineModel;
  // Model for projectDetails_alt component.
  late ProjectDetailsAltModel projectDetailsAltModel1;
  // Model for projectDetails_alt component.
  late ProjectDetailsAltModel projectDetailsAltModel2;
  // Model for Activities component.
  late ActivitiesModel activitiesModel;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    graphlineModel = createModel(context, () => GraphlineModel());
    projectDetailsAltModel1 =
        createModel(context, () => ProjectDetailsAltModel());
    projectDetailsAltModel2 =
        createModel(context, () => ProjectDetailsAltModel());
    activitiesModel = createModel(context, () => ActivitiesModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
    graphlineModel.dispose();
    projectDetailsAltModel1.dispose();
    projectDetailsAltModel2.dispose();
    activitiesModel.dispose();
  }
}
