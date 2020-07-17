
#ifndef CONTACTMODEL_HPP
#define CONTACTMODEL_HPP

#include "Contact.hpp"
#include <QAbstractListModel>
#include <QQmlEngine>
#include <vector>

class ContactModel: public QAbstractListModel
{
	Q_OBJECT

private:
	enum Roles {
		NameRole = 0x0100 + 1,
		PhoneRole,
		Favorite
	};

	std::vector<Contact> _contacts;
	std::vector<Contact> _contactsAll;

public:
	bool isFavorite;

	ContactModel();
	QHash <int, QByteArray> roleNames() const override;
	QVariant	data(const QModelIndex &parent = {},  int role = Qt::DisplayRole) const override;
	int			rowCount(const QModelIndex &parent = {}) const override;
	static void registerModel(const std::string &moduleName);
	bool					addPhoneContacts();
	std::vector<Contact>	getPhoneContacts();
	std::vector<Contact>	getFavoritePhoneContacts();

	Q_INVOKABLE bool showFavorites();
	Q_INVOKABLE bool showAllContacts();
	Q_INVOKABLE bool addToFavorite(int index);
	Q_INVOKABLE bool removeFromFavorite(int index);
};


#endif
