
#ifndef CONTACT_HPP
#define CONTACT_HPP

#include <QVariant>
#include <QString>

class Contact
{
private:
	QString _phone;
	QString _name;

public:
	Contact() = default;
	Contact(const QString &name, const QString &phone);
	QString getName() const;
	QString getPhone() const;
};

#endif
