/* -------------------------------------------
/* CPU-Lüfter Steuern und messen
/* www.frag-duino.de
/* -------------------------------------------
/* Befehle:
/* 0-10 --> Länge des HIGH-Signals in ms*10
/* Langsam nach schnell: 1,2,3,4,5,6,7,8,9
/* 0 fuer STOP
 ------------------------------------------- */
 
// PINs

int pinPWMOut = 6;
int pinTempIn = A0;

double TempDouble = 0.0;
int TempInteger = 0;
int rawTemperatur = 0;
 
void setup()
{
  // Initialisieren
  Serial.begin(9600);
  pinMode(pinPWMOut, OUTPUT);
  pinMode(pinTempIn, INPUT);
}
 
void loop(){
 digitalWrite(pinPWMOut, LOW);
 delayMicroseconds(20);
 
 digitalWrite(pinPWMOut, HIGH);
 delayMicroseconds(100);


  rawTemperatur = analogRead(A0);
  TempDouble = convertRawToTemperature(rawTemperatur, true);
  TempInteger = (int) TempDouble;
 
  Serial.print(TempInteger);
  Serial.print("\n");
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
