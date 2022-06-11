#ifndef LAMP_H
#define LAMP_H
#include "GPIO.h"
class Lamp:public GPIO
{
public:
    explicit Lamp();
//    explicit Lamp(QObject *parent = nullptr);
    Q_INVOKABLE void on_machine() override;
    Q_INVOKABLE void off_machine() override;
    Q_INVOKABLE void set_pin(int my_pin) override;
    Q_INVOKABLE void set_pin_mode(int my_mode) override;
private:
    void blink_lamp();
};

#endif // LAMP_H
