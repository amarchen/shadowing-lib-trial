# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
TARGET = shadowing-lib-trial

CONFIG += sailfishapp

LIBS += -L$$PWD/prebuilt-libs-i486
LIBS += -llibc

precompiled-libs.files = prebuilt-libs-i486/*
precompiled-libs.path = /usr/share/shadowing-lib-trial/lib

INSTALLS += precompiled-libs
QMAKE_RPATHDIR += /usr/share/shadowing-lib-trial/lib

SOURCES += src/shadowing-lib-trial.cpp

OTHER_FILES += qml/shadowing-lib-trial.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    rpm/shadowing-lib-trial.spec \
    rpm/shadowing-lib-trial.yaml \
    shadowing-lib-trial.desktop

