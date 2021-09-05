#ifndef CALCULATE_H
#define CALCULATE_H

#include <QObject>

class Calculate : public QObject
{
    Q_OBJECT
public:
    explicit Calculate(QObject *parent = nullptr);

    Q_INVOKABLE int calculateAddNum(int addNum);
    Q_INVOKABLE int calculateSubNum(int subNum);
    Q_INVOKABLE void btnReset();

signals:
    void sigReset();

public slots:

private:
    int numResult;
};

#endif // CALCULATE_H
