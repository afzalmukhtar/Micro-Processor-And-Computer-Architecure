#include <Servo.h>             //Servo library
 
Servo servo_test;        //initialize a servo object for the connected servo  
                
int angle = 0;    
void setup() 
{ 
  servo_test.attach(9);
  // attach the signal pin of servo to pin9 of arduino
} 
  
void loop() 
{
  for(angle = 0; angle < 180; angle += 1) //Clockwise
  {
    servo_test.write(angle);//rotate the servo
    delay(15);
  }
  
  delay(1000);

  for(angle = 180; angle>=1; angle-=5)//Anti-Clockwise
  {
    servo_test.write(angle);
    delay(5);                       
  }
    delay(1000);
}