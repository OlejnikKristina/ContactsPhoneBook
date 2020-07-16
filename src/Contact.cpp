
#include <QVariant>
#include <QString>
#include "../includes/Contact.hpp"

Contact::Contact(const QString &name,
const QString &phone, const bool favorite)
: _phone(phone), _name(name), _favorite(favorite)
{}

QString Contact::getName() const
{
	return (_name);
}

QString	Contact::getPhone() const
{
	return (_phone);
}

bool	Contact::getFavorite() const
{
	return (_favorite);
}

void	Contact::setFavorite()
{
	_favorite = (_favorite) ? false : true;
}
