const int irSensorPin = A0; // Infrarotsensor Pin
const int motorEnableFeeder = 5; // ENA Pin vom Motortreiber
const int motorEnableLabler = 10; // ENA Pin vom Motortreiber
const int motorIn1Feeder = 7; // IN1 Pin vom Motortreiber
const int motorIn2Feeder = 6; // IN2 Pin vom Motortreiber
const int motorIn1Labler = 9; // IN1 Pin vom Motortreiber
const int motorIn2Labler = 8; // IN2 Pin vom Motortreiber

const int feederspeed = 200; // IN2 Pin vom Motortreiber
const int lablerspeed = 200; // IN2 Pin vom Motortreiber

const int potPin = A1; // Einstellen der Labelzeit

const int buttonPin = 4; // Pin für den Button (D4)


int thresholdValue = 800; // Schwellenwert für den Infrarotsensor
long labelingtime = 5000;
long labelfinishtime;
int feedertime = 2000; // wie lange wird zugefördert?

void setup() {
  pinMode(irSensorPin, INPUT);
  pinMode(motorEnableFeeder, OUTPUT);
  pinMode(motorEnableLabler, OUTPUT);
  pinMode(motorIn1Feeder, OUTPUT);
  pinMode(motorIn2Feeder, OUTPUT);
  pinMode(motorIn1Labler, OUTPUT);
  pinMode(motorIn2Labler, OUTPUT);
  pinMode(buttonPin, INPUT);
  
  Serial.begin(9600); // Serielle Kommunikation starten
}

void loop() {
  int irValue = analogRead(irSensorPin); // Lese den Wert des Infrarotsensors
  Serial.print("IR Wert: ");
  Serial.println(irValue); // Ausgabe des IR-Werts

  int potValue = analogRead(potPin); // Lese den Wert des Potentiometers
  labelingtime = map(potValue, 0, 1023, 1000, 10000);
  Serial.println(labelingtime);
  
  check_seriellen_empfang();//für Testzwecke
  
  if (irValue > thresholdValue) { // Wenn der Wert den Schwellenwert überschreitet und der Motor nicht läuft
    startMotorFeeder(); // Motor einschalten
    Serial.println("Motor gestartet");
  } else if (irValue <= thresholdValue) { // Wenn der Wert den Schwellenwert unterschreitet und der Motor läuft
    stopMotorFeeder(); // Motor ausschalten
    Serial.println("Motor gestoppt");
  }

  if (millis() >= labelfinishtime){
    stopMotorLabler();
  }

  
  //delay(50); // Kleine Verzögerung zur Stabilisierung des seriellen Monitors
}

void startMotorFeeder() {
  analogWrite(motorEnableFeeder, feederspeed); // Motor einschalten
  digitalWrite(motorIn1Feeder, LOW); // Richtung des Motors einstellen (je nach Verkabelung anpassen)
  digitalWrite(motorIn2Feeder, HIGH);
}
void stopMotorFeeder() {
  digitalWrite(motorEnableFeeder, LOW); // Motor ausschalten
  digitalWrite(motorIn1Feeder, LOW); 
  digitalWrite(motorIn2Feeder, LOW);
}

void startMotorLabler() {
  analogWrite(motorEnableLabler, lablerspeed); // Motor einschalten
  digitalWrite(motorIn1Labler, HIGH); // Richtung des Motors einstellen (je nach Verkabelung anpassen)
  digitalWrite(motorIn2Labler, LOW);
}
void stopMotorLabler() {
  digitalWrite(motorEnableLabler, LOW); // Motor ausschalten
  digitalWrite(motorIn1Labler, LOW); 
  digitalWrite(motorIn2Labler, LOW);
}

void labeling(){
  labelfinishtime = millis() + labelingtime;
  startMotorLabler();
  startMotorFeeder();
  delay(feedertime);
  stopMotorFeeder();
  
}

//--------------------------------------------------------------------------------------
void check_seriellen_empfang() {
if (Serial.available() > 0) { // Überprüfe, ob Daten über die serielle Schnittstelle verfügbar sind
    char receivedChar = Serial.read(); // Lese das empfangene Zeichen
    if (receivedChar == '1') { // Wenn das empfangene Zeichen eine '1' ist
      labeling();
    }
    if (receivedChar == '0') { // Wenn das empfangene Zeichen eine '1' ist
      stopMotorLabler();
    }
  }
}
