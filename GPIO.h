#ifndef GPIO_H
#define GPIO_H
#include <QObject>
#include "wiringPi.h"

//#define OUTPUT 1
//#define INPUT 0
class GPIO:public QObject
{
    Q_OBJECT
protected:
    int m_pin;
    int m_mode;
public:
    GPIO(QObject *parent  = nullptr){}
    virtual void on_machine() = 0;
    virtual void off_machine() = 0;
    virtual void set_pin(int my_pin) = 0;
    virtual void set_pin_mode(int my_mode) = 0;
};

#endif // GPIO_H
