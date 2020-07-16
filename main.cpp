
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "includes/ContactModel.hpp"
#include <QQmlContext>

int		main(int argc, char *argv[])
{
	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
	QGuiApplication			app(argc, argv);
	QQmlApplicationEngine	engine;
	ContactModel			*contactModelObj = new ContactModel();

	engine.addImportPath(":/qml");
	ContactModel::registerModel("PhoneContactsModel");
	const QUrl url(QStringLiteral("qrc:/main.qml"));

/* *** Connect our contactModel to use invokable methods*** */
	engine.rootContext()->setContextProperty("contactModelObj", contactModelObj);

	QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
					 &app, [url](QObject *obj, const QUrl &objUrl)
	{
		if (!obj && url == objUrl)
			QCoreApplication::exit(-1);
	}, Qt::QueuedConnection);
	engine.load(url);
	return (app.exec());
}
