int pot = A1;
int yellow = 3;
int red = 5;
int x;
int brightness;
int dim;


void setup() {
  // put your setup code here, to run once:
pinMode(pot,INPUT);
pinMode(yellow,OUTPUT);
pinMode(red,OUTPUT);
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
x=analogRead(pot);
brightness=map(x,0,1023,0,255);
dim =map(x,0,1023,255,0);
Serial.println(brightness);
analogWrite(red,brightness);
analogWrite(yellow,dim);
}
