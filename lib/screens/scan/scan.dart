import 'dart:io';
import 'dart:convert';
import 'package:camera/camera.dart';
import 'package:e_cycle/screens/scan/widgets/estimasi.dart';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class Scan extends StatefulWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> with SingleTickerProviderStateMixin {
  CameraController? _cameraController;
  List<CameraDescription>? cameras;

  bool _isCameraInitialized = false;
  bool showInfo = false;
  String result = 'Unknown';

  /* --------------------------------- animasi -------------------------------- */
  late final AnimationController _animationController;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _initializeCamera();

    /* ------------------------------ animasi start ----------------------------- */
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<double>(begin: 20, end: 40).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _animationController.repeat(reverse: true);
    /* ------------------------------- animasi end ------------------------------ */
  }

  /* ------------------------------ mulai kamera ------------------------------ */
  Future<void> _initializeCamera() async {
    try {
      cameras = await availableCameras();

      if (cameras != null && cameras!.isNotEmpty) {
        _cameraController = CameraController(
          cameras![0],
          ResolutionPreset.high,
        );

        await _cameraController?.initialize();
        setState(() {
          _isCameraInitialized = true;
        });
      } else {
        print("Tidak ada kamera yang tersedia.");
      }
    } catch (e) {
      print("Error saat menginisialisasi kamera: $e");
    }
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    _animationController.dispose();
    super.dispose();
  }

/* -------------------------- Image classification Start -------------------------- */
  Future<void> _classifyImage(File imageFile) async {
    try {
      const apiKey = 'AIzaSyD8blGqOYS86v0zV50BW4csSp2tI4n_sZg';

      if (apiKey == null) {
        stderr.writeln('No API key provided');
        exit(1);
      }

      const prompt =
          'Classify this electronic image. Provide a “name” output for the brand name if present(“<Electronic Type> - <Full Brand>”), if not present(<Electronic Type>)';

      final imageBytes = await imageFile.readAsBytes();

      final content = [
        Content.multi([
          TextPart(prompt),
          DataPart('image/jpg', imageBytes),
        ])
      ];

      final model = GenerativeModel(
        model: 'gemini-1.5-pro',
        apiKey: apiKey,
        generationConfig: GenerationConfig(
          temperature: 1,
          topK: 40,
          topP: 0.95,
          maxOutputTokens: 8192,
          responseMimeType: 'application/json',
          responseSchema: Schema(
            SchemaType.object,
            properties: {
              "name": Schema(
                SchemaType.string,
              ),
            },
          ),
        ),
      );

      final response = await model.generateContent(content);

      setState(() {
        result = response.text != null
            ? jsonDecode(response.text!)['name'] ?? 'No result available'
            : 'No result available';
      });
    } catch (e, stackTrace) {
      print("Error classifying image: $e");
      print("Stack trace: $stackTrace");
    }
  }
/* ------------------------ image classification end ------------------------ */

/* -------------------- tangkap dan klasifikasikan gambar ------------------- */
  Future<void> _captureAndClassifyImage() async {
    if (_cameraController != null && _cameraController!.value.isInitialized) {
      try {
        // Take a picture and get the file path
        final XFile imageFile = await _cameraController!.takePicture();

        // Compress and classify the image
        await _classifyImage(File(imageFile.path));

        setState(() {
          showInfo = true;
        });
      } catch (e) {
        print("Error capturing and classifying image: $e");
      }
    }
  }

  /* ---------------------------- fungsi tap kamera --------------------------- */
  void _onCameraTap() async {
    await _captureAndClassifyImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _onCameraTap,
        child: Stack(
          children: [
            _isCameraInitialized
                ? CameraPreview(_cameraController!)
                : const Center(child: CircularProgressIndicator()),
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.3),
                child: Stack(
                  children: [
                    const Positioned(
                      top: 40,
                      left: 0,
                      right: 0,
                      child: Text(
                        "Sesuaikan elektronik dengan bingkai",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/scan.png",
                        width: 260,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (showInfo)
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Positioned(
                    bottom: _animation.value,
                    left: 20,
                    right: 20,
                    child: GestureDetector(
                      onVerticalDragEnd: (DragEndDetails details) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Estimasi()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Elektronik",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(Icons.phone_android,
                                    color: Colors.green),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      result,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      "Taruh di tempat drop-off e-cycle \nuntuk diremanufaktur",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[700]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
