
QT          += qml quick gui svg
HEADERS     += $$PWD/src/kirigamiinclude.h
SOURCES     += $$PWD/src/kirigamiplugin.cpp
INCLUDEPATH += $$PWD/src
DEFINES     += KIRIGAMI_STATIC

API_VER=1.0

RESOURCES += $$PWD/kirigami.qrc

#QML_IMPORT_PATH += $$PWD
