
#include <QVariant>
#include <QString>
#include "../includes/Contact.hpp"

Contact::Contact(const QString &name, const QString &phone)
: _phone(phone), _name(name)
{}

QString Contact::getName() const
{
	return (_name);
}

QString	Contact::getPhone() const
{
	return (_phone);
}
