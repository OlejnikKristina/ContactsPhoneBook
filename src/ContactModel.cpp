
#include "../includes/ContactModel.hpp"

bool ContactModel::addToFavorite(int index)
{
	if (index < 0 || index > (int)_contacts.size())
		return (false);
	_contacts[index]._favorite = true;
	_contactsAll[index]._favorite = true;
	return (true);
}

bool ContactModel::removeFromFavorite(int index)
{
	if (index < 0 || index > (int)_contacts.size())
		return (false);
	_contacts[index]._favorite = false;
	_contactsAll[index]._favorite = false;
	return (true);
}

bool ContactModel::showAllContacts()
{
	std::vector<Contact> contactsData;

	beginResetModel();
	_contacts = _contactsAll;
	endResetModel();
	return (true);
}

bool	ContactModel::showFavorites()
{
	std::vector<Contact> contactsFavorite;

	beginResetModel();
	contactsFavorite = getFavoritePhoneContacts();
	_contacts.swap(contactsFavorite);
	endResetModel();
	return (true);
}

std::vector<Contact> ContactModel::getFavoritePhoneContacts()
{
	std::vector<Contact>	contactsFavorite;
	int						contactsAmount;

	contactsAmount = _contactsAll.size();
	for (int i = 0; i < contactsAmount; i++)
	{
		if (_contactsAll[i].getFavorite() == true)
		{
			contactsFavorite.push_back(_contactsAll[i]);
		}
	}
	return (contactsFavorite);
}

bool ContactModel::addPhoneContacts()
{
	std::vector<Contact> contactsData;

	emit dataChanged(createIndex(0, 0), createIndex(_contacts.size(), 0));
	contactsData = getPhoneContacts();
	_contacts = contactsData;
	_contactsAll.swap(contactsData);
	return (true);
}

ContactModel::ContactModel()
{
	addPhoneContacts();
}

std::vector<Contact> ContactModel::getPhoneContacts()
{
	const std::vector<Contact> contactsData {
		{"Your Junior", "+380 7347 3938*"},
		{"Peter First", "+380 7373 78378"},
		{"James Bond", "+380 2412 12356"},
		{"Great Ekaterina", "+380 1243 09983", true},
		{"Mister Smeer", "+380 6973 12345"},
		{"Mykola Santehnic", "+380 7322 57890"},
		{"Nastja Zinkevich", "+370 8292 91235"},
		{"Jelmer", "+340 2070 78011", true},
		{"Alexandr Pushkin", "+140 1071 28067"}

	};
	return (contactsData);
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
