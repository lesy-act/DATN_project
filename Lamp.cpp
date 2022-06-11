#include "Lamp.h"
Lamp::Lamp()
{
    wiringPiSetup();
}
void Lamp::set_pin(int my_pin)
{
    this->m_pin = my_pin;
}

void Lamp::set_pin_mode(int my_mode)
{
    this->m_mode = my_mode;
    pinMode(m_pin,OUTPUT);
}

void Lamp::on_machine()
{
    digitalWrite(m_pin,HIGH);
}

void Lamp::off_machine()
{
    digitalWrite(m_pin,LOW);
}

void Lamp::blink_lamp()
{
    while(1)
    {
        digitalWrite(m_pin,HIGH);
        delay(1000);
        digitalWrite(m_pin,LOW);
        delay(1000);
    }
}

