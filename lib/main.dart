import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:usb_serial/usb_serial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  late UsbPort _port;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(child: FlatButton(child: Text('press me'),onPressed: _onPressed,),),),
      
    );
  }

  _onPressed() async {
	List<UsbDevice> devices = await UsbSerial.listDevices();
	print(devices);

	UsbPort port;
	if (devices.length == 0) {
		return;
	}
	port = await devices[0].create();

	bool openResult = await _port.open();
	if ( !openResult ) {
		print("Failed to open");
		return;
	}
	
	await port.setDTR(true);
	await port.setRTS(true);

	port.setPortParameters(115200, UsbPort.DATABITS_8,
	  UsbPort.STOPBITS_1, UsbPort.PARITY_NONE);

	// print first result and close port.
	port.inputStream.listen((Uint8List event) {
		print(event);
		port.close();
	});

	await port.write(Uint8List.fromList([0x10, 0x00]));
}
}