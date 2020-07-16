
#include "../includes/ContactModel.hpp"

bool ContactModel::showAllContacts()
{
	std::vector<Contact> contactsData;

	beginResetModel();
	emit dataChanged(createIndex(0, 0), createIndex(_contacts.size(), 0));
	contactsData = getPhoneContacts();
	_contacts.swap(contactsData);
	qDebug() << "Hello show AllContacts was called from QML!\n";
	qDebug() << _contacts.size();
	endResetModel();
	return (true);
}

bool	ContactModel::showFavorites()
{
	std::vector<Contact> contactsData;

	beginResetModel();
	emit dataChanged(createIndex(0, 0), createIndex(_contacts.size(), 0));
	contactsData = getFavoritePhoneContacts();
	_contacts.swap(contactsData);
	qDebug() << "Hello show Favorites was called from QML!\n";
	qDebug() << _contacts.size();
	endResetModel();
	return (true);
}

QVariant ContactModel::data(const QModelIndex &index, int role) const
{
	if (!index.isValid() || index.row() > rowCount(index))
		return {};

	const Contact &contact {_contacts.at(index.row())};

	if (role == Roles::NameRole)
		return (QVariant::fromValue(contact.getName()));
	else if (role == Roles::PhoneRole)
		return (QVariant::fromValue(contact.getPhone()));
	else if (role == Roles::Favorite)
		return (QVariant::fromValue(contact.getFavorite()));
	return (true);
}

QHash <int, QByteArray> ContactModel::roleNames() const
{
	QHash <int, QByteArray> roles;

	roles[Roles::NameRole] = "name";
	roles[Roles::PhoneRole] = "phoneNumber";
	roles[Roles::Favorite] = "Favorite";
	return (roles);
}

void ContactModel::registerModel(const std::string &moduleName)
{
	qmlRegisterType<ContactModel>(moduleName.c_str(), 1, 0, "ContactsModel");
}

int ContactModel::rowCount(const QModelIndex &parent) const
{
	Q_UNUSED(parent)

	return (static_cast <int> (_contacts.size()));
}

std::vector<Contact> ContactModel::getPhoneContacts()
{
	const std::vector<Contact> contactsData {
		{"Peter First", "+380 7373 78378"},
		{"James Bond", "+380 2412 12356"},
		{"Great Ekaterina", "+380 1243 09983", true},
		{"Mister Smeer", "+380 6973 12345"},
		{"Mykola Santehnic", "+380 7322 57890"},
		{"Nastja Zinkevich", "+370 8292 91235"},
		{"Jelmer", "+340 2070 78011", true}
	};
	return (contactsData);
}

std::vector<Contact> ContactModel::getFavoritePhoneContacts()
{
	std::vector<Contact>	contacts;
	std::vector<Contact>	contactsFavorite;
	int						contactsAmount;

	contacts = getPhoneContacts();
	contactsAmount = contacts.size();
	for (int i = 0; i < contactsAmount; i++)
	{
		if (contacts[i].getFavorite() == true)
		{
			contactsFavorite.push_back(contacts[i]);
		}
	}
	return (contactsFavorite);
}

bool ContactModel::addPhoneContacts()
{
	std::vector<Contact> contactsData;

	emit dataChanged(createIndex(0, 0), createIndex(_contacts.size(), 0));
	if (isFavorite == false)
		contactsData = getPhoneContacts();
	else
		contactsData = getFavoritePhoneContacts();;
	_contacts.swap(contactsData);
	return (true);
}

ContactModel::ContactModel()
{
	addPhoneContacts();
}
