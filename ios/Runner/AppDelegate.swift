import UIKit

import Flutter
import TensorFlowLite

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    

    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let batteryChannel = FlutterMethodChannel(name: "samples.flutter.dev/battery",
                                              binaryMessenger: controller.binaryMessenger)
    batteryChannel.setMethodCallHandler({
      [weak self] (call: FlutterMethodCall, result: FlutterResult) -> Void in
      // Note: this method is invoked on the UI thread.
      guard call.method == "getBatteryLevel" else {
        result(FlutterMethodNotImplemented)
        return
      }
      self.predictData(call: call, result: result)
    })

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func predictData(call: FlutterMethodCall, result: FlutterResult) {
  if let args = call.arguments as? Dictionary<String, Any>,
    let model = args["model"] as? String,
    let inputData = args["arg"] as? [Double] {
    // use number and times as required, for example....
    /// Model files
    let modelFile = FileInfo(name: model, ext: "tflite")
    // Construct the path to the model file.
    guard let modelPath = Bundle.main.path(
      forResource: modelFile.name,
      ofType: modelFile.ext
    ) else {
      print("Failed to load the model file with name: \(modelFile.name).")
      return nil
    }
    do {
      // Initialize an interpreter with the model.
      let interpreter = try Interpreter(modelPath: modelPath)

      // Allocate memory for the model's input `Tensor`s.
      try interpreter.allocateTensors()

      // input data preparation...

      // Copy the input data to the input `Tensor`.
      try self.interpreter.copy(inputData, toInputAt: 0)

      // Run inference by invoking the `Interpreter`.
      try self.interpreter.invoke()

      // Get the output `Tensor`
      let outputTensor = try self.interpreter.output(at: 0)

      // Copy output to `Data` to process the inference results.
      let outputData = Float(unsafeData: outputTensor.data)
      result(outputData)
    } catch let error {
      result(FlutterError.init(code: "invoke", message: "Failed to invoke the interpreter with error: \(error.localizedDescription)", details: nil))
      return nil
    }
    result(number * times) // or your syntax
  } else {
    result(FlutterError.init(code: "bad args", message: nil, details: nil))
  }
}

}


