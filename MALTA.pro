#-------------------------------------------------
#
# Project created by QtCreator 2017-04-14T14:26:05
#
#-------------------------------------------------

QT       +=  core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

TARGET = MALTA
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += main.cpp\
        mainwindow.cpp \
    filereader.cpp \
    qcustomplot.cpp \
    mcworker.cpp \
    customtablewidgetitem.cpp \
    CSVparser.cpp \
    superslider.cpp

HEADERS  += mainwindow.h \
    filereader.h \
    includes.h \
    structs.h \
    qcustomplot.h \
    mcworker.h \
    customtablewidgetitem.h \
    CSVparser.hpp \
    superslider.h

FORMS    += mainwindow.ui

RESOURCES +=

macx {
    ICON = Icon.icns
    IFILE = $$OUT_PWD/MALTA.app/Contents/Info.plist
    copyinfo.commands = $(COPY_FILE) $$PWD/Info.plist $$IFILE
    first.depends = $(first) copyinfo
    export(first.depends)
    export(copyinfo.commands)
    QMAKE_EXTRA_TARGETS += first copyinfo
    QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.10
    QMAKE_POST_LINK += "/Users/piperlab/Softwares/Qt5/5.7/clang_64/bin/macdeployqt MALTA.app -no-strip"

}

win32 {
    ICON = Icon.ico
    QMAKE_POST_LINK += "C:\Qt\5.7\msvc2013_64\bin\windeployqt"
}
