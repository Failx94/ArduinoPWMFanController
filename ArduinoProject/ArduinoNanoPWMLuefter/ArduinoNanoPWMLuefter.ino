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
#define PIN_BLAU 6
#define PIN_YELLOW 2
#define INTERRUPT_GELB 0  // Interrupt 0 == Pin 2
#define UPDATE_ZYKLUS 1000 // Jede Sekunde 1 ms Ausgabe der Geschwindigkeit.
const int ANZAHL_INTERRUPTS = 1; // Anzahl der Interrupts pro Umdrehung (1 oder 2)
 
// Variablen
int counter_rpm = 0;
int rpm = 0;
unsigned long letzte_ausgabe = 0;
char eingabe;
int dauer_low = 1;
int dauer_high = 9;
int baseTime = 10; // Insgesamt 10 ms
 
void setup()
{
  // Initialisieren
  Serial.begin(9600);
  pinMode(PIN_BLAU, OUTPUT);
  pinMode(PIN_YELLOW, INPUT);
  digitalWrite(PIN_YELLOW, HIGH);
}
 
void loop(){
 digitalWrite(PIN_BLAU, LOW);
 delayMicroseconds(20);
 
 digitalWrite(PIN_BLAU, HIGH);
 delayMicroseconds(10);
 
 
  
}
