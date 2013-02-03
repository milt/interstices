int sensor0P = 0;  //Rightmost Distance Sensor
int sensor1P = 1;  //Seemingly nothing
int sensor2P = 2;  //2nd from the left Distance Sensor
int sensor3P = 3;  //Leftmost Distance Sensor
int sensor4P = 4;  // temp sensor. Uncalibrated, not sure if this data is useful.;

int sensor0V = 0;  // variable to store the value coming from the sensor
int sensor1V = 0;
int sensor2V = 0;
int sensor3V = 0;
int sensor4V = 0;

void getData()
{
  sensor0V = analogRead(sensor0P);
  sensor1V = analogRead(sensor1P);
  sensor2V = analogRead(sensor2P);
  sensor3V = analogRead(sensor3P);
  sensor4V = analogRead(sensor4P);
}

int getRightDistance()
{
  //Serial.print("Right: ");
  //Serial.println(analogRead(sensor0P));
  return analogRead(sensor0P);
}

int getLeftDistance()
{
  //Serial.print("Middle: ");
  //Serial.println(analogRead(sensor3P));
  return analogRead(sensor3P);
}

int getMiddleDistance()
{
  //Serial.print("Left: ");
  //Serial.println(analogRead(sensor2P));
  return analogRead(sensor2P);
}

void printData()
{  
  Serial.print("Left = ");
  Serial.print(sensor0V);
  Serial.print(", Middle = ");
  Serial.print(sensor2V);
  Serial.print(", Right = ");
  Serial.println(sensor3V);
  //Serial.print("Range 4 = ");
  //Serial.println(sensor4V);
}
