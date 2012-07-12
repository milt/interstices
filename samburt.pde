
//these variables are all used below
unsigned char p = 0;
float l = 0;
int a = 0;
float s1 = 0;
float t1 = 0;
float u1 = 0;
float s2 = 0;
float t2 = 0;
float u2 = 0;
float s3 = 0;
float t3 = 0;
float u3 = 0;

int sensor0Pin = 0;
int sensor1Pin = 1;
int sensor2Pin = 2;
int sensor3Pin = 3;// select the input pin for the potentiometer
int sensor4Pin = 4;// temp sensor. Uncalibrated, not sure if this data is useful.
//int sensor5Pin = 5;

float sensor0Value = 0;  // variable to store the value coming from the sensor
float sensor1Value = 0;
float sensor2Value = 0;
float sensor3Value = 0;
float sensor4Value = 0;
float allSensor = 0;

//if I remember correctly the buffer values are used to do comparisons 
//with previous values so we can do gradual color change

unsigned char buffer0R[65];
unsigned char buffer0G[65];
unsigned char buffer0B[65];
unsigned char buffer1R[65];
unsigned char buffer1G[65];
unsigned char buffer1B[65];
unsigned char randbuffer0R[65];
unsigned char randbuffer0G[65];
unsigned char randbuffer0B[65];
unsigned char randbuffer1R[65];
unsigned char randbuffer1G[65];
unsigned char randbuffer1B[65];
unsigned char lastbuffer0R[65];
unsigned char lastbuffer0G[65];
unsigned char lastbuffer0B[65];
unsigned char lastbuffer1R[65];
unsigned char lastbuffer1G[65];
unsigned char lastbuffer1B[65];

//sensor arrays? how are these lists used?
int sensor0[] = {
  11, 23, 24, 25, 36, 37, 38, 49, 50, 51, 62, 63, 64};
int sensor12[] = {
  6, 18, 19, 20, 31, 32, 33, 44, 45, 46, 57, 58, 59};
int sensor3[] = {
  1, 13, 14, 15, 26, 27, 28, 39, 40, 41, 52, 53, 54};

void samburt(){
  //getting some kind of values from the sensors
  sensor0Value = analogRead(sensor0Pin);
  //  Serial.print("Range0-");
  //  Serial.println(sensor0Value);
  sensor1Value = analogRead(sensor1Pin);
  //  Serial.print("Range1-");
  //  Serial.println(sensor1Value);
  sensor2Value = analogRead(sensor2Pin);
  //  Serial.print("Range2-");
  //  Serial.println(sensor2Value);
  sensor3Value = analogRead(sensor3Pin);
  //  Serial.print("Range3-");
  //  Serial.println(sensor3Value);
  allSensor = (sensor0Value + sensor1Value + sensor2Value + sensor3Value)/4;
  //Serial.println(allsensor);
  sensor4Value = analogRead(sensor4Pin);
  //  Serial.print("RawTemp-");
  //  Serial.println(sensor4Value);

  int fadecycle = 30;

  for(l=0; l<fadecycle; l++) {
    for(a=0; a<65; a++) {
      buffer0R[a] = abs(lastbuffer0R[a] - (l/fadecycle * randbuffer0R[a]));
      buffer0G[a] = abs(lastbuffer0G[a] - (l/fadecycle * randbuffer0G[a]));
      buffer0B[a] = abs(lastbuffer0B[a] - (l/fadecycle * randbuffer0B[a]));
    }
    for(a=0; a<65; a++) {
      buffer1R[a] = abs(lastbuffer1R[a] - (l/fadecycle * randbuffer1R[a]));
      buffer1G[a] = abs(lastbuffer1G[a] - (l/fadecycle * randbuffer1G[a]));
      buffer1B[a] = abs(lastbuffer1B[a] - (l/fadecycle * randbuffer1B[a]));
    }

    for(a=0; a<65; a++) {
      que(a, buffer0R[a], buffer0G[a], buffer0B[a], true);
    }
    for(a=0; a<65; a++) {
      que(a, buffer1R[a], buffer1G[a], buffer1B[a], false);
    }  


    for(a=0; a<65; a++) {
      u1 = buffer1R[a] + (85 * sq((500 - sensor0Value)/500));
      s1 = buffer1G[a] - (85 - sq((500 - sensor0Value)/500));
      t1 = buffer1B[a] + (127 * sq((500 - sensor0Value)/500)); 
      if(sensor0Value>1) {
        for(p=0;p<13;p++) {
          que(sensor0[p], u1, s1, t1, false);  
        }
      }
      u2 = buffer1R[a] + (85 * sq((500 - sensor2Value)/500));
      s2 = buffer1G[a] - (85 * sq((500 - sensor2Value)/500));
      t2 = buffer1B[a] + (127 * sq((500 - sensor2Value)/500)); 
      if(sensor2Value>1) {
        for(p=0;p<13;p++) {
          que(sensor12[p], u2, s2, t2, false);
        }
      }
      u3 = buffer1R[a] + (85 * sq((500 - sensor3Value)/500));
      s3 = buffer1G[a] - (85 * sq((500 - sensor3Value)/500));
      t3 = buffer1B[a] + (127 * sq((500 - sensor3Value)/500)); 
      if(sensor3Value>1) {
        for(p=0;p<13;p++) {
          que(sensor3[p], u3, s3, t3, false);
        }
      }
    }
    writey();

  }

  for(a=0; a<65; a++) {
    lastbuffer0R[a] = buffer0R[a];
    lastbuffer0G[a] = buffer0G[a];
    lastbuffer0B[a] = buffer0B[a];
  }
  for(a=0; a<65; a++) {
    lastbuffer1R[a] = buffer1R[a];
    lastbuffer1G[a] = buffer1G[a];
    lastbuffer1B[a] = buffer1B[a];
  }

  for(a=0; a<65; a++) {
    randbuffer0R[a] = random(255);
    randbuffer0G[a] = random(255);
    randbuffer0B[a] = random(255);
  }
  for(a=0; a<65; a++) {
    randbuffer1R[a] = random(255);
    randbuffer1G[a] = random(255);
    randbuffer1B[a] = random(255);
  }
}
