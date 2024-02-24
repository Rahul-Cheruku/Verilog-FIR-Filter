# Verilog-FIR-Filter

THEORY:
In signal processing, a finite impulse response (FIR) filter is a filter whose impulse response (or response to any finite length input) is of finite duration, because it settles to zero in finite time. 

The impulse response (that is, the output in response to a Kronecker delta input) of an Nth-order discrete-time FIR filter lasts exactly N+1 samples (from first nonzero element through last nonzero element) before it then settles to zero.

FIR filters can be discrete-time or continuous-time, and digital or analog.

 ![image](https://github.com/Rahul-Cheruku/Verilog-FIR-Filter/assets/77064752/3a993787-d230-47b7-b1f4-eaf1ba0309f9)
 
FILTER DESIGN:
	
We used Window method to design filter having following characteristics:
Here, the specification used for low pass filter design is as follow,
1. Hamming window FIR filter of order 9 (10 tap)
2. Sampling frequency Fs=400KHz
3. Low pass cutoff frequency Fc= 30KHz 


(A)	FIR FILTER USING CUSTOM MAC UNIT

FILTERDESIGNER TOOL MATLAB (fdatool):

FDA TOOL Configuration

![image](https://github.com/Rahul-Cheruku/Verilog-FIR-Filter/assets/77064752/45f36b2d-baaa-48ed-99e4-b43adefce343)


FILTER COEFFICIENTS:
0.00738725709614209
0.0260440884281871
0.0828682442651863
0.162473986369705
0.221226423840779
0.221226423840779
0.162473986369705
0.0828682442651863
0.0260440884281871
0.00738725709614209

## Custom MAC:

![image](https://github.com/Rahul-Cheruku/Verilog-FIR-Filter/assets/77064752/fad02950-2351-4913-8f94-520753843096)


## Block Design:

![image](https://github.com/Rahul-Cheruku/Verilog-FIR-Filter/assets/77064752/f7ea1cbe-8b07-47d9-b1b2-47a9fd3eaf13)


![image](https://github.com/Rahul-Cheruku/Verilog-FIR-Filter/assets/77064752/509a06d2-b913-4107-9367-a7ba8698b283)

## Filtered (Bottom) Output 
![image](https://github.com/Rahul-Cheruku/Verilog-FIR-Filter/assets/77064752/c3a49613-3f17-4d5a-bc9a-0b1c62830af6)

