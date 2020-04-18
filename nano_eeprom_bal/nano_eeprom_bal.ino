#include <LiquidCrystal_PCF8574.h>
#include <EEPROM.h>
#include <Wire.h>

LiquidCrystal_PCF8574 lcd(0x27); // set the LCD address to 0x27 for a 16 chars and 2 line display

//NANO EEPROM
//each byte hold a value from 0 to 255
#define EEPROM_CHANNEL 0 //1 to 4
#define EEPROM_MUTE 1    //0 or 1
#define EEPROM_VOLUME 2  //1 to 254  <-> 31.5dB to -95dB,default = 64
#define EEPROM_BALANCE 3 //0 to 80   <-> -20dB to 20dB,  default = 40
#define EEPROM_BYPASS 4  //0 or 1
#define EEPROM_TREBLE 5  //0 to 20   <-> -10dB to 10dB,  default = 10
#define EEPROM_BASS 6    //0 to 20   <-> -10dB to 10dB

//NANO GPIO
//pin keys
#define PIN_CHANNEL 9
#define PIN_MUTE 8
#define PIN_UP 7
#define PIN_DOWN 6
#define PIN_SELECT 5 //Volume,Treble,Bass,Balance
#define PIN_BYPASS 4
//pin njw1194
#define PIN_LATCH A1
#define PIN_CLK A2
#define PIN_DATA A3
//pin rotary encoder
#define PIN_CLK2 10
#define PIN_DT 11

//
#define PINBTN(pinname)    \
  pinMode(pinname, INPUT); \
  digitalWrite(pinname, HIGH);

//
#define BTN_EVENT(pinname, pinx, event, longpush)               \
  static boolean lock_##pinname = false;                        \
  static int count_##pinname = 0;                               \
  if (digitalRead(pinx) == LOW && lock_##pinname == false)      \
  {                                                             \
    lock_##pinname = true;                                      \
    count_##pinname = 0;                                        \
    event();                                                    \
    evt_btn_common();                                           \
  }                                                             \
  else if (digitalRead(pinx) == HIGH && lock_##pinname == true) \
  {                                                             \
    lock_##pinname = false;                                     \
  }                                                             \
  else if (digitalRead(pinx) == LOW && longpush)                \
  {                                                             \
    if (count_##pinname < 500)                                  \
      count_##pinname++;                                        \
    else                                                        \
    {                                                           \
      event();                                                  \
      evt_btn_common();                                         \
    }                                                           \
  }

//
struct Config
{
  byte channel, mute, volume, balance, bypass, treble, bass;
};

Config myConfig = {0, 1, 64, 40, 0, 10, 10};

byte select = 0; //0:Vol,1:Tre,2:Bass,3:Bal;

void evt_btn_ch()
{
  myConfig.channel = (myConfig.channel + 1) % 4;
}
void evt_btn_mu()
{
  if (myConfig.mute == 0)
  {
    myConfig.mute = 1;
  }
  else
  {
    myConfig.mute = 0;
  }
}
void evt_btn_vu()
{
  switch (select)
  {
  case 0:
    if (myConfig.volume >= 4 && myConfig.volume <= 32)
      myConfig.volume -= 2; //16 to 31
    if (myConfig.volume >= 33 && myConfig.volume <= 96)
      myConfig.volume--; //-16 to 16  step 0.5db
    if (myConfig.volume >= 98 && myConfig.volume <= 128)
      myConfig.volume -= 2; //-32 to -16 step 1db
    if (myConfig.volume > 128)
      myConfig.volume -= 8;
    break;

  case 1:
    if (myConfig.treble < 20)
      myConfig.treble++;
    break;

  case 2:
    if (myConfig.bass < 20)
      myConfig.bass++;
    break;

  case 3:
    if (myConfig.balance < 80)
      myConfig.balance++;
    break;

  default:
    break;
  }
}
void evt_btn_vd()
{
  switch (select)
  {
  case 0:
    if (myConfig.volume >= 128 && myConfig.volume < 248)
      myConfig.volume += 8;
    if (myConfig.volume >= 96 && myConfig.volume < 128)
      myConfig.volume += 2; //-32 to -16 step 1db
    if (myConfig.volume >= 32 && myConfig.volume < 96)
      myConfig.volume++; //-16 to 16  step 0.5db
    if (myConfig.volume >= 2 && myConfig.volume < 32)
      myConfig.volume += 2; //16 to 31
    break;

  case 1:
    if (myConfig.treble > 0)
      myConfig.treble--;
    break;

  case 2:
    if (myConfig.bass > 0)
      myConfig.bass--;
    break;

  case 3:
    if (myConfig.balance > 0)
      myConfig.balance--;
    break;

  default:
    break;
  }
}
void evt_btn_sl()
{
  select = (select + 1) % 4; //4 modes;
}
void evt_btn_bp()
{
  if (myConfig.bypass == 0)
  {
    myConfig.bypass = 1;
  }
  else
  {
    myConfig.bypass = 0;
  }
}

void evt_btn_common()
{
  //serial print
  Serial.println("==============================");
  Serial.print("Current Select:");
  switch (select)
  {
  case 0:
    Serial.println("VOL");
    break;
  case 1:
    Serial.println("TRE");
    break;
  case 2:
    Serial.println("BAS");
    break;
  case 3:
    Serial.println("BAL");
    break;
  default:
    break;
  }
  Serial.print("Ch: ");
  Serial.print(myConfig.channel);
  Serial.print(", Mute: ");
  Serial.print(myConfig.mute);
  Serial.print(", Vol: ");
  Serial.print((64 - myConfig.volume) / 2.0);
  Serial.println("dB.");
  Serial.print("Bal: ");
  Serial.print((myConfig.balance - 40) / 2.0);
  Serial.println("dB.");
  Serial.print("Bypass: ");
  Serial.print(myConfig.bypass);
  Serial.print(" Treble: ");
  Serial.print((myConfig.treble - 10));
  Serial.print("dB. ");
  Serial.print(" Bass: ");
  Serial.print((myConfig.bass - 10));
  Serial.println("dB. ");

  //lcd print
  lcd.setCursor(2, 0);
  lcd.print(myConfig.channel);
  lcd.setCursor(8, 0);
  lcd.print(myConfig.mute);
  lcd.setCursor(14, 0);
  lcd.print(myConfig.bypass);
  lcd.setCursor(1, 1);
  switch (select)
  {
  case 0:
    lcd.print("VOL :       dB");
    lcd.setCursor(7, 1);
    if ((64 - myConfig.volume) / 2.0 > -16)
    {
      lcd.print((64 - myConfig.volume) / 2.0, 1);
    }
    else
    {
      lcd.print((64 - myConfig.volume) / 2.0, 0);
    }
    break;
  case 1:
    lcd.print("TREB :      dB");
    lcd.setCursor(8, 1);
    lcd.print(myConfig.treble - 10);
    break;
  case 2:
    lcd.print("BASS :      dB");
    lcd.setCursor(8, 1);
    lcd.print(myConfig.bass - 10);
    break;
  case 3:
    lcd.print("BAL :       dB");
    lcd.setCursor(7, 1);
    lcd.print((myConfig.balance - 40) / 2.0, 1);
    break;
  default:
    break;
  }

  //send to njw
  if (myConfig.mute == 0)
  {

    sendVol();
    sendSelect();
    if (myConfig.bypass == 0)
    {
      sendTre();
      sendBass();
    }
    else
    {
      sendBypass();
    }
  }
  else
  {
    sendMute();
  }
}

//encoder type1
void encoderEvent()
{
  byte clkValue = digitalRead(PIN_CLK2); //读取CLK引脚的电平
  byte dtValue = digitalRead(PIN_DT);    //读取DT引脚的电平
  static byte lastCLK = 1;
  if (lastCLK != clkValue)
  {
    lastCLK = clkValue;
    if (clkValue != dtValue)
    {
      evt_btn_vu();
    }
    else
    {
      evt_btn_vd();
    }
    evt_btn_common();
    Serial.print(clkValue != dtValue ? '+' : '-');
  }
}

//encoder type2
void encoderEvent2()
{
  static boolean b = true;               //一个step
  byte clkValue = digitalRead(PIN_CLK2); //读取CLK引脚的电平
  byte dtValue = digitalRead(PIN_DT);    //读取DT引脚的电平
  if (b && clkValue == 0 && dtValue == 1)
  {
    evt_btn_vu();
    b = false;
    Serial.print('+');
  }
  if (b && clkValue == 1 && dtValue == 0)
  {
    evt_btn_vd();
    b = false;
    Serial.print('-');
  }
  if (!b && clkValue == 1 && dtValue == 1)
  {
    b = true;
    evt_btn_common();
  }
}

void updateROM()
{
  EEPROM.update(EEPROM_CHANNEL, myConfig.channel);
  EEPROM.update(EEPROM_MUTE, myConfig.mute);
  EEPROM.update(EEPROM_VOLUME, myConfig.volume);
  EEPROM.update(EEPROM_BALANCE, myConfig.balance);
  EEPROM.update(EEPROM_BYPASS, myConfig.bypass);
  EEPROM.update(EEPROM_TREBLE, myConfig.treble);
  EEPROM.update(EEPROM_BASS, myConfig.bass);

  Serial.println("ROM saved!");
}

void sendRaw(byte data, byte add)
{
  digitalWrite(PIN_LATCH, LOW); //LATCH
  //15-8
  for (byte i = 8; i >= 1; i--)
  {
    digitalWrite(PIN_CLK, HIGH);
    digitalWrite(PIN_DATA, (data >> (i - 1)) % 2);
    Serial.print((data >> (i - 1)) % 2);
    delay(0.01);
    digitalWrite(PIN_CLK, LOW);
    delay(0.01);
  }
  Serial.print("|");
  //7-4
  for (byte i = 4; i >= 1; i--)
  {
    digitalWrite(PIN_CLK, HIGH);
    digitalWrite(PIN_DATA, (add >> (i - 1)) % 2);
    Serial.print((add >> (i - 1)) % 2);
    delay(0.01);
    digitalWrite(PIN_CLK, LOW);
    delay(0.01);
  }
  Serial.print("|");
  //3-0
  for (byte i = 4; i >= 1; i--)
  {
    digitalWrite(PIN_CLK, HIGH);
    digitalWrite(PIN_DATA, LOW);
    Serial.print(0);
    delay(0.01);
    digitalWrite(PIN_CLK, LOW);
    delay(0.01);
  }
  //empty
  digitalWrite(PIN_LATCH, HIGH);
  digitalWrite(PIN_CLK, HIGH);
  digitalWrite(PIN_DATA, LOW);
  delay(0.01);
  Serial.println();
}

void sendVol()
{
  if (myConfig.balance == 40 || myConfig.volume >= 208)
  {
    sendRaw(myConfig.volume, 0);
    sendRaw(myConfig.volume, 1);
  }
  else if (myConfig.balance > 40)
  {
    sendRaw(myConfig.volume + (myConfig.balance - 40), 0);
    sendRaw(myConfig.volume, 1);
  }
  else if (myConfig.balance < 40)
  {
    sendRaw(myConfig.volume, 0);
    sendRaw(myConfig.volume + (40 - myConfig.balance), 1);
  }
}
void sendMute()
{
  sendRaw(255, 0);
  sendRaw(255, 1);
  sendRaw(0, 2);
}
void sendSelect()
{
  sendRaw((myConfig.channel + 1) << 2, 2);
}
void sendTre()
{
  byte tmp = 0;
  if (myConfig.treble > 10)
    tmp = (1 << 7) | ((myConfig.treble - 10) << 3) | 1 << 2;
  else
    tmp = (0 << 7) | ((10 - myConfig.treble) << 3) | 1 << 2;
  sendRaw(tmp, 3);
}
void sendBass()
{
  byte tmp = 0;
  if (myConfig.bass > 10)
    tmp = (1 << 7) | ((myConfig.bass - 10) << 3) | 1 << 2;
  else
    tmp = (0 << 7) | ((10 - myConfig.bass) << 3) | 1 << 2;
  sendRaw(tmp, 4);
}
void sendBypass()
{
  sendRaw(0, 3);
}

void setup()
{
  //serial
  Serial.begin(115200);
  Serial.println("Hello!");
  //lcd
  lcd.begin(16, 2);
  lcd.setBacklight(0);
  lcd.clear();
  delay(500);

  //hello
  lcd.setBacklight(1);
  lcd.home();
  lcd.setCursor(1, 0);
  lcd.print("NJW1194 Volume");
  lcd.setCursor(3, 1);
  lcd.print("Controller");
  delay(500);

  //pin init
  PINBTN(PIN_CHANNEL);
  PINBTN(PIN_MUTE);
  PINBTN(PIN_UP);
  PINBTN(PIN_DOWN);
  PINBTN(PIN_SELECT);
  PINBTN(PIN_BYPASS);
  pinMode(PIN_CLK2, INPUT);
  //digitalWrite(PIN_CLK2, HIGH);
  pinMode(PIN_DT, INPUT);
  //digitalWrite(PIN_DT, HIGH);

  //3-wire njw
  pinMode(PIN_LATCH, OUTPUT);
  digitalWrite(PIN_LATCH, HIGH);
  pinMode(PIN_CLK, OUTPUT);
  digitalWrite(PIN_CLK, HIGH);
  pinMode(PIN_DATA, OUTPUT);
  digitalWrite(PIN_DATA, HIGH);

  if (digitalRead(PIN_CHANNEL) == LOW)
  {
    //reset config
    updateROM();
    Serial.print("RESETED!");
    lcd.clear();
    lcd.setCursor(2, 1);
    lcd.print("RESET CONFIG");
  }
  else
  {
    //load config from eeprom
    myConfig.channel = EEPROM.read(EEPROM_CHANNEL);
    myConfig.mute = EEPROM.read(EEPROM_MUTE);
    myConfig.volume = EEPROM.read(EEPROM_VOLUME);
    myConfig.balance = EEPROM.read(EEPROM_BALANCE);
    myConfig.bypass = EEPROM.read(EEPROM_BYPASS);
    myConfig.treble = EEPROM.read(EEPROM_TREBLE);
    myConfig.bass = EEPROM.read(EEPROM_BASS);
    Serial.println("ROM LOADED!");
    lcd.clear();
    lcd.setCursor(2, 1);
    lcd.print("LOAD CONFIG");
  }
  delay(1000);
  lcd.clear();
  lcd.print("CH  MUTE  PASS");

  evt_btn_common();
}

void loop()
{
  //btn scan
  BTN_EVENT(channel, PIN_CHANNEL, evt_btn_ch, false);
  BTN_EVENT(mute, PIN_MUTE, evt_btn_mu, false);
  BTN_EVENT(up, PIN_UP, evt_btn_vu, true);
  BTN_EVENT(down, PIN_DOWN, evt_btn_vd, true);
  BTN_EVENT(select, PIN_SELECT, evt_btn_sl, false);
  BTN_EVENT(bypass, PIN_BYPASS, evt_btn_bp, false);
  //encoder
  encoderEvent2();

  //save
  delay(1);
  static int count_eeprom = 0;
  count_eeprom++;
  if (count_eeprom == 20000)
  {
    count_eeprom = 0;
    updateROM();
    //save eeprom every 20s
  }
}
