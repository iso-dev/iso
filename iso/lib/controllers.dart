library iso;

import 'dart:async';

import 'package:iso/src/views.dart';

class IsoAppController implements AppPresenter {
  AppServices _services;

  @override
  Future init(AppView view) async {
    view.isLoading = true;

    // Load the app configuration
    var config = await _services.config.loadConfig();
    var uri = Uri.parse(config.host);

    // Create the election service
    _services.createElectionService(uri);

    // Show the Home page
    setView(view);
    goTo(Page.home);

    view.isLoading = false;
  }

  // TODO: implement isHomePage
  @override
  bool get isHomePage => null;

  @override
  void setView(AppView view) {
    // TODO: implement setView
  }

  @override
  void startOver() {
    // TODO: implement startOver
  }

}