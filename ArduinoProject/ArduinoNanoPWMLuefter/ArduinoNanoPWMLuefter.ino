const bool isDebug = true; 

// OUT
const int pinPWMOut = 6;
// IN
const int pinRPMFan1 = 2;
const int pinRPMFan2 = 4;
const int pinRPMFan3 = 7;
const int pinRPMFan4 = 8;
// ANALOG IN
const int pinTempIn = A0;

double TempDouble = 0.0;
int TempInteger = 0;
int rawTemperatur = 0;
const int MinimalTemp = 25;
const int MaximalTemp = 65;


int CounterRPMFan1 = 0;
int CounterRPMFan2 = 0;
int CounterRPMFan3 = 0;
int CounterRPMFan4 = 0;

int MillsHigh = 0;
int MillsLow = 0;
 
void setup()
{
  pinMode(pinPWMOut, OUTPUT);
  pinMode(pinTempIn, INPUT);

  if(isDebug){
    Serial.begin(9600);
    Serial.print("INIT Done");

    pinMode(pinRPMFan1, INPUT);
    digitalWrite(pinRPMFan1, HIGH);
    attachInterrupt(digitalPinToInterrupt(pinRPMFan1), interruptFan1, FALLING);

    pinMode(pinRPMFan2, INPUT);
    digitalWrite(pinRPMFan2, HIGH);
    attachInterrupt(digitalPinToInterrupt(pinRPMFan2), interruptFan2, FALLING);

    pinMode(pinRPMFan3, INPUT);
    digitalWrite(pinRPMFan3, HIGH);
    attachInterrupt(digitalPinToInterrupt(pinRPMFan3), interruptFan3, FALLING);

    pinMode(pinRPMFan4, INPUT);
    digitalWrite(pinRPMFan4, HIGH);
    attachInterrupt(digitalPinToInterrupt(pinRPMFan4), interruptFan4, FALLING);
  }
}
 
void loop(){
  rawTemperatur = analogRead(A0);
  TempDouble = convertRawToTemperature(rawTemperatur, true);
  TempInteger = (int) TempDouble;

  calculatePWM();
  doPWM();
  
  if(isDebug){
    Serial.print("Temperatur: " + TempInteger); 
    Serial.print(" MillsHigh: " + MillsHigh);
    Serial.print(" MillsLow: " + MillsLow);
    Serial.print("RPM Fan1: " + CounterRPMFan1);
    Serial.print(" RPM Fan2: " + CounterRPMFan2);
    Serial.print("\n");
    Serial.print("RPM Fan3: " + CounterRPMFan3);
    Serial.print(" RPM Fan4: " + CounterRPMFan4);
    Serial.print("\n");
    Serial.print("\n");
  }
}

void calculatePWM(){
  if(TempInteger <= MinimalTemp){ // 25%
    MillsHigh = 10;
    MillsLow =  30;
  } else if ( TempInteger >= MaximalTemp) {
    MillsHigh = 100;
    MillsLow =  0;
  } else {
    MillsLow =  10;
    int diffTemp = TempInteger - MinimalTemp;
    int percent = diffTemp * 2; // 1° = 2 % max 80%
    MillsHigh = 20 + percent;
  }
}

void doPWM(){
  digitalWrite(pinPWMOut, LOW);
  delayMicroseconds(MillsLow);
  digitalWrite(pinPWMOut, HIGH);
  delayMicroseconds(MillsHigh);

  digitalWrite(pinPWMOut, LOW);
  delayMicroseconds(MillsLow);
  digitalWrite(pinPWMOut, HIGH);
  delayMicroseconds(MillsHigh);

  digitalWrite(pinPWMOut, LOW);
  delayMicroseconds(MillsLow);
  digitalWrite(pinPWMOut, HIGH);
  delayMicroseconds(MillsHigh);

  digitalWrite(pinPWMOut, LOW);
  delayMicroseconds(MillsLow);
  digitalWrite(pinPWMOut, HIGH);
  delayMicroseconds(MillsHigh);

  digitalWrite(pinPWMOut, LOW);
  delayMicroseconds(MillsLow);
  digitalWrite(pinPWMOut, HIGH);
  delayMicroseconds(MillsHigh);
}

double convertRawToTemperature(int raw, bool celsius)
{
  double temperatureInF;

  temperatureInF = log(10000.0 * ((1024.0 / raw - 1)));
  temperatureInF = 1 / (0.001129148 + (0.000234125 + (0.0000000876741 * temperatureInF * temperatureInF )) * temperatureInF );
  temperatureInF = temperatureInF - 273.15;

  if (celsius == false) {
    temperatureInF = (temperatureInF * 9.0) / 5.0 + 32.0;

  }

  return temperatureInF;
}

void interruptFan1(){
  CounterRPMFan1++;
}

void interruptFan2(){
  CounterRPMFan2++;
}

void interruptFan3(){
  CounterRPMFan3++;
}

void interruptFan4(){
  CounterRPMFan4++;
}
