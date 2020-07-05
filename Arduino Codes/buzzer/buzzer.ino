
const int buzzerPin = 9;

void setup() {
  // put your setup code here, to run once:
  pinMode(buzzerPin, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  tone(buzzerPin, 50);
  delay(500);
  noTone(buzzerPin);
  delay(500);
}