
#include "../includes/ContactModel.hpp"

ContactModel::ContactModel()
{
	addPhoneContacts();
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
	return (true);
}

QHash <int, QByteArray> ContactModel::roleNames() const
{
	QHash <int, QByteArray> roles;

	roles[Roles::NameRole] = "name";
	roles[Roles::PhoneRole] = "phoneNumber";
	return (roles);
}

void ContactModel::registerModel(const std::string &moduleName)
{
	qmlRegisterType<ContactModel>(moduleName.c_str(), 1, 0, "ContactsModel");
}

bool ContactModel::addPhoneContacts()
{
	std::vector<Contact> contactsData;

	emit dataChanged(createIndex(0, 0), createIndex(_contacts.size(), 0));
	contactsData = getPhoneContacts();
	_contacts.swap(contactsData);
	return (true);
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
		{"Great Ekaterina", "+380 1243 09983"},
		{"Mister Smeer", "+380 6973 12345"},
		{"Mykola Santehnic", "+380 7322 57890"},
		{"Nastja Zinkevich", "+370 8292 91235"}
	};
	return (contactsData);
}
