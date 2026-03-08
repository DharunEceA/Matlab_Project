char data;

void setup() {
  Serial.begin(9600);
  pinMode(13, OUTPUT);
  digitalWrite(13, LOW);
  Serial.println("Arduino Ready");
}

void loop() {
  if (Serial.available()) {
    data = Serial.read();

    if (data == 'O') {
      digitalWrite(13, HIGH);
      Serial.println("LED ON");
    }
    else if (data == 'F') {
      digitalWrite(13, LOW);
      Serial.println("LED OFF");
    }
  }
}
