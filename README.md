# The temperature triggered stepper motor

![Image of Pi with BME280](https://raw.githubusercontent.com/Bojan-sensei/CENG317/master/images/bme280.jpg)


### Specifications

The raspberry pi will use a standard raspian image.


The components consist of:

1.  An operational student sense hat provided for the course

2.  BME280 temperature sensor <https://www.sparkfun.com/products/13676>

3.  One bipolar 5V stepper motor

4.  Raspberry Pi 3

5.  L293D Driver chip
	

### Custom Stepper Driver Board Electronic Design Files

1.  The Gerber files are available here: https://github.com/Bojan-sensei/CENG317/tree/master/electronics/GerberStepper
2.  It has a breadboard view:
![Image of breadboard view](https://raw.githubusercontent.com/Bojan-sensei/CENG317/master/images/StepperGuage.jpg)
3.  The Fritzing file can be found at: https://github.com/Bojan-sensei/CENG317/tree/master/electronics/StepperPCBV2.fzz


### Temperature Triggered Stepper Motor Assembly

Any of the GPIO pins can be used except for the GPIO pins used by the student sense hat. For the sake of testing, it is best to use the 
GPIO pins as mentioned here.

It is also highly recommended to use the printed circuit board intended to drive the motor, rather than wiring the entire thing on the breadboard.

As it will need to be tested however, here is a pinout of the L293D Driver chip that will be needed to drive the stepper motor.
![Image of Pinout]https://i.stack.imgur.com/xg8gz.png

To breadboard: 
Be sure to have the sense hat attached to the pi, as the wiring will be using the extra pins from that sense hat.

Attach all four wires (excluding the red common power wire, this will not be used) to the output pins of the L293D.
The input pins must be wired to the GPIO pins as per choice, but preferably pins 35 (GPIO19), 37 (GPIO26), 38 (GPIO20) and 40 (GPIO21)

Attach the enable pin from the chip (pin 1) to pin 33 of the raspberry pi (GPIO13) and attach the that enable pin from the chip to pin 9 of the chip, which is the enable
pin for the other two input and output pins of the driver chip. Attach the ground pin of the driver chip to pin 39 of the raspberry pi as this is a ground pin.

The vss and vs pins of the chip must be wired to each other and wired to the 5V pin on the raspberry pi (pin 2)

Be sure that the modules are plugged into the sense hat. The BME280 will be sensing the temperature.

This will complete the wiring of the stepper motor. A diagram of the breadboarding can be seen below.

![Image of breadboard view](https://raw.githubusercontent.com/Bojan-sensei/CENG317/master/images/StepperGuage.jpg)

Now add the BME280.py code and correct any GPIO inputs if need be. It is important to note that the GPIO pins will be executed in a certain order to rotate the stepper motor.
View the code itself to see what GPIO pins must be called by looking at the forward and backward rotation functions.

Once this is complete, running the code will activate the device. As the temperature that hits the BME280 changes, so will the rotation of the motor.


### Temperature Stepper Code:

This can be found at: https://github.com/Bojan-sensei/CENG317/blob/master/firmware/BME280.py
This is code revised by Austin Tian and edited with the implementation of stepper motor functionality.

There is also simple code to move the stepper motor found here: https://github.com/Bojan-sensei/CENG317/blob/master/firmware/stepper.py
This was simply made to show how to operate the motor in python, which can be implemented in other code.
