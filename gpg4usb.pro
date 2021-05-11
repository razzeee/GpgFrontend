# #####################################################################
# Automatically generated by qmake (2.01a) Mi Mai 21 02:28:39 2008
# #####################################################################
TEMPLATE = app

# unix:TARGET = start_linux
# win32:TARGET = start_windows
# mac:TARGET = start_mac
DESTDIR = release
DEPENDPATH += .
INCLUDEPATH += . \
    ./include

#DEFINES += GPG4USB_NON_PORTABLE

#CONFIG += release static
CONFIG += debug
QT += network
# Input
OBJECTS_DIR=objectfiles
MOC_DIR=mocfiles
HEADERS += src/attachments.h \
    src/gpgcontext.h \
    src/mainwindow.h \
    src/fileencryptiondialog.h \
    src/keyimportdetaildialog.h \
    src/mime.h \
    src/keygendialog.h \
    src/keygenthread.h \
    src/keydetailsdialog.h \
    src/keylist.h \
    src/keymgmt.h \
    src/settingsdialog.h \
    src/attachmenttablemodel.h \
    src/textedit.h \
    src/editorpage.h \
    src/quitdialog.h \
    src/aboutdialog.h \
    src/keyserverimportdialog.h \
    src/verifynotification.h \
    src/verifydetailsdialog.h \
    src/verifykeydetailbox.h \
    src/wizard.h \
    src/helppage.h \
    src/findwidget.h \
    src/gpgconstants.h

SOURCES += src/attachments.cpp \
    src/gpgcontext.cpp \
    src/mainwindow.cpp \
    src/main.cpp \
    src/fileencryptiondialog.cpp \
    src/keyimportdetaildialog.cpp \
    src/mime.cpp \
    src/keygendialog.cpp \
    src/keygenthread.cpp \
    src/keydetailsdialog.cpp \
    src/keylist.cpp \
    src/keymgmt.cpp \
    src/settingsdialog.cpp \
    src/attachmenttablemodel.cpp \
    src/textedit.cpp \
    src/editorpage.cpp \
    src/quitdialog.cpp \
    src/aboutdialog.cpp \
    src/keyserverimportdialog.cpp \
    src/verifynotification.cpp \
    src/verifydetailsdialog.cpp \
    src/verifykeydetailbox.cpp \
    src/wizard.cpp \
    src/helppage.cpp \
    src/findwidget.cpp \
    src/gpgconstants.cpp

RC_FILE = gpg4usb.rc

RESOURCES = gpg4usb.qrc

# comment out line below for static building
LIBS += -lgpgme \
     -lgpg-error \

# comment in for static buildding in windows
#INCLUDEPATH += ./winbuild/include 
#LIBS +=./winbuild/lib/libgpgme.a ./winbuild/lib/libgpg-error.a 

    
DEFINES += _FILE_OFFSET_BITS=64
TRANSLATIONS = release/ts/gpg4usb_en.ts \
    release/ts/gpg4usb_de.ts \
    release/ts/gpg4usb_ru.ts \
    release/ts/gpg4usb_pt_BR.ts \
    release/ts/gpg4usb_es.ts \
    release/ts/gpg4usb_vi.ts \
    release/ts/gpg4usb_my.ts \
	release/ts/gpg4usb_zh.ts \
	release/ts/gpg4usb_zh_tw.ts \
	release/ts/gpg4usb_he.ts \
	release/ts/gpg4usb_sv.ts \
	release/ts/gpg4usb_pl.ts \
	release/ts/gpg4usb_el.ts \
	release/ts/gpg4usb_ar.ts \
	release/ts/gpg4usb_fr.ts 



contains(DEFINES, GPG4USB_NON_PORTABLE) {
   message(Building non portable version...)
}
