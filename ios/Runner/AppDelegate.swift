import UIKit

import Flutter
import TensorFlowLite

typealias FileInfo = (name: String, extension: String)

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    

    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let channel = FlutterMethodChannel(name: "ondeviceML",
                                              binaryMessenger: controller.binaryMessenger)
    channel.setMethodCallHandler({
      (call: FlutterMethodCall, result: FlutterResult) -> Void in
      switch call.method {
      case "predictData":
        self.predictData(call: call, result: result)
      default:
        result(FlutterMethodNotImplemented)
      }
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
    let modelFile = FileInfo(name: model, extension: "tflite")
    // Construct the path to the model file.
    guard let modelPath = Bundle.main.path(
      forResource: modelFile.name,
      ofType: modelFile.extension
    ) else {
      print("Failed to load the model file with name: \(modelFile.name).")
    }
    do {
      // Initialize an interpreter with the model.
      let interpreter = try Interpreter(modelPath: modelPath)

      // Allocate memory for the model's input `Tensor`s.
      try interpreter.allocateTensors()

      // input data preparation...

      // Copy the input data to the input `Tensor`.
      try interpreter.copy(inputData, toInputAt: 0)

      // Run inference by invoking the `Interpreter`.
      try interpreter.invoke()

      // Get the output `Tensor`
      let outputTensor = try interpreter.output(at: 0)

      // Copy output to `Data` to process the inference results.
      let outputSize = outputTensor.shape.dimensions.reduce(1, {x, y in x * y})
      let outputData = UnsafeMutableBufferPointer<Float32>.allocate(capacity: outputSize)
      outputTensor.data.copyBytes(to: outputData)
      print(outputData)
      result(outputData)
    } catch let error {
      result(FlutterError.init(code: "invoke", message: "Failed to invoke the interpreter with error: \(error.localizedDescription)", details: nil))
      
    }
  } else {
    result(FlutterError.init(code: "bad args", message: nil, details: nil))
  }
}

}


