
QT          += qml quick gui svg
HEADERS     += $$PWD/src/kirigamiplugin.h \
               $$PWD/src/enums.h
SOURCES     += $$PWD/src/kirigamiplugin.cpp \
               $$PWD/src/enums.cpp
INCLUDEPATH += $$PWD/src
DEFINES     += KIRIGAMI_BUILD_TYPE_STATIC

!ios:!android {
    message( "compiling for desktop" )
    HEADERS += $$PWD/src/desktopicon.h
    SOURCES += $$PWD/src/desktopicon.cpp
}

API_VER=2.0

RESOURCES += $$PWD/kirigami.qrc
RESOURCES += $$PWD/kirigami-icons.qrc

#QML_IMPORT_PATH += $$PWD
