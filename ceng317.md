# CENG 317

## Table of Contents
1. [2017-2018 Capstone Project Overview](#2017-2018-capstone-project-overview)
2. [Humber Raspberry Pi Configuration](#humber-raspberry-pi-configuration)

### 2017-2018 Capstone Project Overview
- In CENG 319 Software Project students will work in groups to create an Android Application that can connect to a database.
- In CENG 317 Hardware Production Technology students will work individually to prepare working hardware that can connect to a database for a sensor or effector type relevant to their Android application.
- In CENG 355 Computer Systems Project students work in groups to integrate their mobile application with their sensors and effectors to create an IoT device that for which both it and its application can indepedently connect to the same database. (The mobile application may, in addition, also connect directly via bluetooth to the IoT device.) 
- Regarding CENG 317 Hardware Production Technology, a Broadcom development platform will be used by each student who will connect a sensor or effector unit to it. The goal is to scale the hardware to include multiple units and package it to fit in a suitable enclosure that fits within the overall project maximum dimensions of 12 13/16" x 6" x 2 7/8" (32.5cm x 15.25cm x 7.25cm) which represents the space below the tray in the parts kit. The highest AC voltage that will be used is 16Vrms from a wall adaptor from which +/- 15V or as high as 45 VDC can be obtained. Maximum power consumption will be 20 Watts.

![Network](https://raw.githubusercontent.com/six0four/MicroRover/master/images/1.2pinetworkarchitecture.jpg)
Picture to be updated with Student Sense Hat instead of Crib version. Firebase, collocated device, Amazon AWS, munro, apollo, and alternative servers acceptable.


## We work with prototypes and prototypes are not to be left powered unattended.

###### Possible sensor and effector choices to become the class expert on including calibration:
- [x] Sensor or effector has been selected by somebody.
- [ ] Sensor or effector available for selection.
- [x] nRF24L01.
- [x] MQ3.
- [ ] Bluetooth.
- [ ] Enterprise Wi-Fi.
- [ ] Ethernet remote desktop.
- [ ] Infra-red remote codes.
- [ ] Webcam.
- [ ] H-bridge.
- [ ] Opto-coupler.
- [ ] Bidirectional level shifter.
- [ ] DC motors, optical encoders, relays.
- [ ] Stepper motors (bipolar and unipolar).
- [ ] PID feedback control, fan, thermistor, thermocouple.
- [ ] Function generator.
- [ ] D to A, PWM.
- [ ] A to D, filters.
- [ ] Solar cell, photo-resistor.
- [ ] Laser time-of-flight sensor [VL6180](https://www.adafruit.com/product/3316).
- [ ] Wheatstone bridge, instrumentation amplifier.
- [ ] Displays.
- [ ] De-bouncing reed switch.
- [ ] Emulate a keyboard.
- [ ] Playback sound.
- [ ] [FM Radio Data Service and Radio Broadcast Data Service](https://www.sparkfun.com/products/12938).
- [ ] Shift register, multiplexer.
- [ ] RS232
- [ ] RS485.
- [ ] 9-DOF IMU.
- [ ] MICROCHIP I2C I/O Expander MCP23017.
- [ ] Bar/QR code scanners.
- [ ] RFID.
- [ ] Strain sensor.
- [ ] Chain power sensor.
- [ ] BACNET building automation.
- [ ] POE building automation.
- [ ] ModDUS.
- [ ] EtherCAT.
- [ ] Profinet.
- [ ] magnetic strip.
- [ ] fingerprint reader.
- [ ] SJA1000/MCP2515 for CAN.
- [ ] LIN bus.
- [ ] [Z scale](http://www.carendt.com/wp-content/uploads/jones2.jpg)[controller](http://www.searails.com/powermax.html).
- [ ] http://perso.uclouvain.be/fstandae/lightweight_ciphers/
- [ ] http://www.instructables.com/id/Optical-Mouse-Odometer-for-Arduino-Robot/?ALLSTEPS
- [ ] Choose your own to be approved.

###### Possible project choices:
- [x] Project has been selected by a group.
- [ ] Project available for selection.
- [ ] [Farmbot](https://software.farmbot.io/docs)
- [x] [Handsanitizer alcohol content and wireless heartrate](https://github.com/EugeneHasJeans/EugeneHasJeans.github.io/blob/master/README.pdf) making the heart rate sensor component wireless: [1](http://vorticityflux.blogspot.ca/2011/11/connecting-polar-wind-chest-strap-to.html)
[2](https://www.element14.com/community/community/raspberry-pi/raspberrypi2/blog/2015/04/07/raspberry-pi-2-gpio-usage-with-nrf24l01-arduino)
[3](http://hack.lenotta.com/arduino-raspberry-pi-switching-light-with-nrf24l01/)
- [ ] [Applied research project with Crystal Fountains](https://www.youtube.com/watch?v=4c5pfFmr08Q)
- [ ] [Robotic Vacuum and Floor Scrubber](https://www.irobotweb.com/~/media/MainSite/PDFs/About/STEM/Create/Create2_PrimeSense.pdf)
- [ ] [Lumi](https://www.youtube.com/watch?v=-iXq85T3K6w)
- [ ] [Small engine electronic control unit](https://search.rpxcorp.com/litigation_documents/12423597) with [solenoid effector](https://www.youtube.com/watch?v=DG4I4XH8tg4), [acrylic block](https://www.youtube.com/watch?v=toDAgcdkQyk)
- [ ] L-wing rooftop solar system (PLC knowledge helpful).
- [ ] Portable solar system.
- [ ] Rover.
- [ ] Webcam OCR with tesseract.
- [ ] [Student Sense hat tester](https://github.com/vladporcila/SenseHatTester)
- [ ] OBD-II code reader.
- [ ] Parking lot.
- [ ] Vehicle dashboard.
- [ ] Soaring logger.
- [ ] Sorting conveyor with light curtain.
- [ ] Elevator.
- [ ] Z scale train signalling.
- [ ] Pick and place.
- [ ] Xylitol candy dispenser.
- [ ] Whiteboard plotter.
- [ ] PLC (pi DIN rail) traffic light.
- [ ] Smart appliance.
- [ ] IP addressable USB power bar.
- [ ] Formula SAE telemetry.
- [ ] Surveying station.
- [ ] Payment system, POS.
- [ ] Material tension property/universal tester.
- [ ] Bridge/firewall/router/switch/access point.
- [ ] Choose your own to be approved.

### Humber Raspberry Pi Configuration

Building the Humber image for, and assembling, your Sense Hat Device:  
https://github.com/six0four/ceng317/blob/master/sensehatdevice.md  
Building the Humber image for the your group's Collocated Device:  
https://github.com/six0four/ceng317/blob/master/collocateddevice.md  

