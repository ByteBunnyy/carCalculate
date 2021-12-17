#include "calculate.h"

Calculate::Calculate(QObject *parent) : QObject(parent)
{
    numResult = 0.0;
}

int Calculate::calculateAddNum(int addNum)
{
    numResult += addNum;
    return numResult;
}

int Calculate::calculateSubNum(int subNum)
{
    numResult -= subNum;
    return numResult;
}

void Calculate::btnReset()
{
    emit sigReset();
    qDebug() << "emit reset signal! " << endl;
}
