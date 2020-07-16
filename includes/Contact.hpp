
#ifndef CONTACT_HPP
#define CONTACT_HPP

#include <QVariant>
#include <QString>

class Contact
{
private:
	QString _phone;
	QString _name;
	bool _favorite;

public:
	Contact() = default;
	Contact(const QString &name, const QString &phone,
	const bool favorite = false);
	QString getName() const;
	QString getPhone() const;
	bool	getFavorite() const;
	void	setFavorite();
};

#endif
