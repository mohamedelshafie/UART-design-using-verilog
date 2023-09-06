# UART-design-using-verilog
First for the UART_TX, the modules are:
  #1- Serializer: 
		Used to convert the data from parallel to serial.
		Inputs: data bus, enable signal, clock signal and reset signal. 
		Outputs: serial data line and serializer done signal.
		The enable signal is used to initiate the serializer, once it is asserted the data is converted from parallel to serial.
		The serializer done signal is used to indicate that all the parallel data was converted to serial data.
	2- Parity calculation:
 		Used to calculate the parity bit of each frame according to the configurations.
	 	Inputs: data bus, parity type signal.
	 	Output: parity bit signal.
	 	parity type signal is used to choose the type of parity to be calculated, 0:even parity, 1:odd parity.
	3- Multiplexer: 4-to-1 multiplexer.
	4- FSM:
 		Used to generate the control signals and organize the frame to be transmitted.
	 	Inputs: data bus, valid singal, parity enable signal, serializer done signal, clock signal and reset signal.
	 	Outputs: busy signal, serializer enable signal and multiplexer select line signal.
	 	The valid signal is used to indicate to UART that the data on the bus is valid.
	 	The parity enable signal is used to configure the frame weather it will contain parity bit or not.
	 	The busy signal is an output from the UART_TX which indicates that it is transmitting data.
	 	The multiplexer select line signal is used to organize the frame.
