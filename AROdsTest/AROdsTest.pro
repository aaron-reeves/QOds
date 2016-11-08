QT += core gui

TARGET = AROdsTest

CONFIG += console
CONFIG -= app_bundle

CONFIG += c++11 # Required for libods

DEFINES += SRC_FILE_NAME=\\\"unamed_file\\\" # To make ods play nicely.

TEMPLATE = app

win32 {
  INCLUDEPATH += \
    C:/Users/areeves/Documents/ResearchProjects/sphn/sharedCode \
    C:/Users/areeves/Documents/ResearchProjects/sphn/sharedCode/QOds

  LIBS += \
    C:/Users/areeves/Documents/ResearchProjects/sphn/sharedCode/QOds/lib/libquazip.lib
}

!win32 {
  INCLUDEPATH += \
    ../../../sharedCode \
    ../../../sharedCode/QOds
    
  LIBS += \
    ../../../sharedCode/QOds/lib/libquazip.so    
}

    
SOURCES += \
    main.cpp \
    ../ods/Book.cpp \
    ../ods/Cell.cpp \
    ../ods/Content.cpp \
    ../ods/DrawFrame.cpp \
    ../ods/Formula.cpp \
    ../ods/Region.cpp \
    ../ods/Row.cpp \
    ../ods/Value.cpp \
    ../ods/Attr.cpp \
    ../ods/Attrs.cpp \
    ../ods/CellRef.cpp \
    ../ods/Column.cpp \
    ../ods/CurrencyInfo.cpp \
    ../ods/DateInfo.cpp \
    ../ods/Duration.cpp \
    ../ods/DurationInfo.cpp \
    ../ods/Manifest.cpp \
    ../ods/Meta.cpp \
    ../ods/Node.cpp \
    ../ods/Ns.cpp \
    ../ods/Prefix.cpp \
    ../ods/Settings.cpp \
    ../ods/Sheet.cpp \
    ../ods/Style.cpp \
    ../ods/Tag.cpp \
    ../ods/style/styleBorder.cpp \
    ../ods/style/styleCurrency.cpp \
    ../ods/style/styleDate.cpp \
    ../ods/style/styleDuration.cpp \
    ../ods/style/styleManager.cpp \
    ../ods/style/stylePercent.cpp \
    ../ods/style/styleStyleFamily.cpp \
    ../ods/style/styleSubstyle.cpp \
    ../ods/ods.cc \
    ../ods/util.cc \
    ../ods/style/styletag.cc \
    ../ods/xtag.cc \
    ../ods/xmeta.cc

HEADERS += \
    ../ods/Book.hpp \
    ../ods/Cell.hpp \
    ../ods/Content.hpp \
    ../ods/DrawFrame.hpp \
    ../ods/Formula.hpp \
    ../ods/Region.hpp \
    ../ods/Row.hpp \
    ../ods/Value.hpp \
    ../ods/Attr.hpp \
    ../ods/Attrs.hpp \
    ../ods/CellRef.hpp \
    ../ods/Column.hpp \
    ../ods/CurrencyInfo.hpp \
    ../ods/DateInfo.hpp \
    ../ods/Duration.hpp \
    ../ods/DurationInfo.hpp \
    ../ods/err.hpp \
    ../ods/Manifest.hpp \
    ../ods/Meta.hpp \
    ../ods/Node.hpp \
    ../ods/Ns.hpp \
    ../ods/Prefix.hpp \
    ../ods/Settings.hpp \
    ../ods/Sheet.hpp \
    ../ods/Style.hpp \
    ../ods/Tag.hpp \
    ../ods/style/styleBorder.hpp \
    ../ods/style/styleCurrency.hpp \
    ../ods/style/styleDate.hpp \
    ../ods/style/styleDuration.hpp \
    ../ods/style/styleManager.hpp \
    ../ods/style/stylePercent.hpp \
    ../ods/style/styleStyleFamily.hpp \
    ../ods/style/styleSubstyle.hpp \
    ../ods/cell.hxx \
    ../ods/decl.hxx \
    ../ods/filename.hxx \
    ../ods/formula.hxx \
    ../ods/global.hxx \
    ../ods/i18n.hxx \
    ../ods/node.hxx \
    ../ods/ods.hh \
    ../ods/ods.hxx \
    ../ods/region.hxx \
    ../ods/util.hh \
    ../ods/style/styletag.hh \
    ../ods/xtag.hxx \
    ../ods/xmeta.hh


