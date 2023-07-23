import 'package:get/instance_manager.dart';
import 'package:my_app/controller/controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Controller());
  }
}
