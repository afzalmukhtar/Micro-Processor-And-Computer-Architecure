
int brightness = 0;
int LED = 13;
int fading = 5;

void setup() {
  // put your setup code here, to run once:
  pinMode(LED, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  analogWrite(LED, brightness);
  brightness += fading;
  delay(25);
  if(brightness == 0 || brightness == 255)
    fading = -fading;

}