INCLUDEPATH += $$PWD

INCLUDEPATH += ./../include

win32{
    #区分32位和64位windows程序
    opt = $$find(QMAKESPEC,"msvc2015_64")
    isEmpty(opt){
        LIBS += -L./../lib/win32
    }
    !isEmpty(opt){
        LIBS += -L./../lib/win64
    }
}
unix{
    LIBS += -L./../lib
}
mac{
    LIBS += -L./../lib
}


LIBS += -lavformat -lavcodec -lavutil -lswresample

HEADERS += \
    $$PWD/fqfaudiothread.h \
    $$PWD/fqfdecode.h \
    $$PWD/fqfdecodethread.h \
    $$PWD/fqfdemux.h \
    $$PWD/fqfdemuxthread.h \
    $$PWD/fqfresample.h \
    $$PWD/fqfaudiodevice.h \
    $$PWD/qtfqfaudiodevice.h

SOURCES += \
    $$PWD/fqfaudiothread.cpp \
    $$PWD/fqfdecode.cpp \
    $$PWD/fqfdecodethread.cpp \
    $$PWD/fqfdemux.cpp \
    $$PWD/fqfdemuxthread.cpp \
    $$PWD/fqfresample.cpp \
    $$PWD/fqfaudiodevice.cpp \
    $$PWD/qtfqfaudiodevice.cpp
