int inputPin = 2;               // choose the input pin (for PIR sensor)
int val = 0;                    // variable for reading the pin status
 
void setup() {
  pinMode(inputPin, INPUT);     // declare sensor as input
  Serial.begin(9600);
}
 
void loop(){
  if (digitalRead(inputPin) == HIGH) 
    Serial.println("Motion detected!");
  else 
  {
    Serial.println("Motion ended!");
   }
}

// OR USING LED AND STUFF TO PRINT ONLY WHEN THE MOTION STARTS OR STOPS

int inputPin = 2;               // choose the input pin (for PIR sensor)
int pirState = LOW;             // we start, assuming no motion detected
 
void setup() {
  pinMode(inputPin, INPUT);     // declare sensor as input
  Serial.begin(9600);
}
 
void loop(){
  if (digitalRead(inputPin) == HIGH) 
    if (pirState == LOW) 
    {
      // This prints the change in state and then 
      // waits for the state to change again to print
      Serial.println("Motion detected!");
      pirState = HIGH;
    }
     
  else 
  {
    if (pirState == HIGH)
    {
      Serial.println("Motion ended!");
      pirState = LOW;
      // Print the change in state once only
    }
  }
}