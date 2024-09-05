const int sensor_MQ2 = A0; // Porta do Sensor MQ2
const int sensor_LM35 = A1; // Porta do Sensor LM35

const int min = 100; // Valores para conversão das informações do MQ2
const int max = 1000; // Valores para conversão das informações do MQ2
float valor_MQ2 = 0; // Variável onde iremos atribuir as informações vindas do sensor de Gás
float valor_LM35 = 0; // Variável onde iremos atribuir as informações vindas do sensor de Temperatura

void setup() {
  Serial.begin(9600); // Iniciando o Monitor Serial
}

void loop() {
  valor_MQ2 = analogRead(sensor_MQ2); // Atribuindo os valores do sensor de Gás
  valor_LM35 = analogRead(sensor_LM35); // Atribuindo os valores do sensor de Temperatura

  // Convertendo os valores do sensor de Gás para porcentagem
  float porcentagem_gas = valor_MQ2/10000;

  // Verificando se o sensor MQ2 está funcionando corretamente
  if (porcentagem_gas < 0) {
    porcentagem_gas = 0;
  } else if (porcentagem_gas > 100) {
    porcentagem_gas = 100;
  }

  // Verificando se o sensor LM35 está funcionando corretamente
  if (valor_LM35 < 0){
    valor_M35 = 0
  }

  // Exibindo valores no Monitor Serial
  Serial.print("Valor informado pelo MQ2: ");
  Serial.print(valor_MQ2);
  Serial.print(" -> Convetido em porcentagem: ");
  Serial.print(porcentagem_gas);
  Serial.println("%");
  // Valor informado pelo MQ@: 110 -> Convertido em porcentagem: 30%
  
  Serial.print("Temperatura informada pelo LM35: ");
  Serial.print(valor_LM35);
  Serial.println("°C");

  // Determinando que o Loop ocorerrá a cada 1 segundo
  delay(1000); 
}

