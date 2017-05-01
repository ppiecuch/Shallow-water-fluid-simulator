QT += core gui opengl widgets

TARGET = FluidSolver
TEMPLATE = app
CONFIG -= app_bundle

CONFIG(c++14): CXX = -c14
else:CONFIG(c++11): CXX = -c11
CONFIG(debug, debug|release): DBG = dbg
else: DBG = rel

DESTDIR = build$$DBG-$$[QMAKE_SPEC]/bin
OBJECTS_DIR = build$$DBG-$$[QMAKE_SPEC]/obj
MOC_DIR = build$$DBG-$$[QMAKE_SPEC]/obj
UI_DIR = build$$DBG-$$[QMAKE_SPEC]/obj
RCC_DIR = build$$DBG-$$[QMAKE_SPEC]/obj

SOURCES += main.cpp\
    mainwindow.cpp \
    openglwidget.cpp \
    fluidsolver.cpp \
    macgrid.cpp \
    vec2.cpp \
    shallowwater.cpp \
    advect.cpp \
    bmploader.cpp \
    exception.cpp \
    heightmap.cpp \
    renderheightmap.cpp \
    render.cpp \
    rendershallowwater.cpp \
    testvec2.cpp \
    onewaycoupling.cpp \
    vec3.cpp \
    quaternion.cpp

HEADERS += mainwindow.h \
    openglwidget.h \
    fluidsolver.h \
    macgrid.h \
    vec2.h \
    shallowwater.h \
    advect.h \
    bmploader.h \
    exception.h \
    heightmap.h \
    renderheightmap.h \
    FastInvSqrt.h \
    render.h \
    rendershallowwater.h \
    testvec2.h \
    onewaycoupling.h \
    vec3.h \
    quaternion.h

FORMS += mainwindow.ui
