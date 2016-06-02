TEMPLATE = lib
CONFIG += plugin

QT          += qml quick gui svg
HEADERS     += $$PWD/src/kirigamiplugin.h
SOURCES     += $$PWD/src/kirigamiplugin.cpp
RESOURCES   += $$PWD/kirigami.qrc

API_VER=1.0

TARGET = $$qtLibraryTarget(org/kde/kirigami/kirigamiplugin)

importPath = $$[QT_INSTALL_QML]/org/kde/kirigami
target.path = $${importPath}

controls.path = $${importPath}
controls.files += $$PWD/src/controls/*

#For now ignore Desktop and Plasma stuff in qmake
#styles.path = $${importPath}/styles
#styles.files += $$PWD/src/styles/*

INSTALLS    += target controls

copy_qmldir.target = $$OUT_PWD/org/kde/kirigami/qmldir
copy_qmldir.depends = $$PWD/src/controls/qmldir
copy_qmldir.commands = $(COPY_FILE) \"$$replace(copy_qmldir.depends, /, $$QMAKE_DIR_SEP)\" \"$$replace(copy_qmldir.target, /, $$QMAKE_DIR_SEP)\"
QMAKE_EXTRA_TARGETS += copy_qmldir
PRE_TARGETDEPS += $$copy_qmldir.target
