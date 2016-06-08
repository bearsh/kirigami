/*
 *   Copyright 2009 by Alan Alpert <alan.alpert@nokia.com>
 *   Copyright 2010 by Ménard Alexis <menard@kde.org>
 *   Copyright 2010 by Marco Martin <mart@kde.org>

 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Library General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

#ifndef MOBILECOMPONENTSPLUGIN_H
#define MOBILECOMPONENTSPLUGIN_H

#include <QQmlEngine>
#include <QQmlExtensionPlugin>

class KirigamiPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")

public:
    void registerTypes(const char *uri);

private:
    QUrl componentPath(const QString &fileName) const;

    QStringList m_stylesFallbackChain;
    QString toFilePath(const QString &path) const {
	return baseUrl().path() + QLatin1Char('/') + path;
    }
    QUrl toFileUrl(const QString &filePath) const {
        return QUrl(baseUrl().toString() + QLatin1Char('/') + filePath);
    }
};

#endif
