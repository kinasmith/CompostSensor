Wireless Temperature Sensor Network for logging and automating medium scale composting operations.

Communication uses the HopeRF RFM12B radio modules on a custom shield designed by Andy Sigler:
https://github.com/andySigler/PatchBay/tree/master/eagle/anodeShield

The structReceiverSD is the main receiver node for the network, taking in all of the sensor data from each node and logging into an SD card and displaying onto a LCD character display. 
It uses an Adafruit Datalogger shield with a modified CS Pin to avoid conflicting with the radio.

The structSender are the sender Nodes, Two versions are provided, which are practically identical currently. One for pushing down into an ATTiny84, and one that is designed to work for a regular Arduino. 

Some documentation currently lives here: 
http://kinasmith.com/compost-sensor