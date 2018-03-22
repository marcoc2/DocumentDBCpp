TARGET = DocumentDBCpp

CONFIG += c++14

TEMPLATE = lib
CONFIG += staticlib #dll

WIN_BASE_DIR = "C:\Users\Metta Innovations\workspace"

INCLUDEPATH += "$$WIN_BASE_DIR\vcpkg\installed\x64-windows\include"
INCLUDEPATH += $$PWD/include

CONFIG(debug, debug | release) {
    LIBS += -L"$$WIN_BASE_DIR\vcpkg\installed\x64-windows\debug\lib"
    LIBS += -L"$$WIN_BASE_DIR\vcpkg\installed\x64-windows\debug\bin"

} else {
    LIBS += -L"$$WIN_BASE_DIR\vcpkg\installed\x64-windows\lib"
    LIBS += -L"$$WIN_BASE_DIR\vcpkg\installed\x64-windows\bin"
}

LIBS += -lcpprest_2_10

HEADERS = \
   $$PWD/include/Attachment.h \
   $$PWD/include/AttachmentIterator.h \
   $$PWD/include/Collection.h \
   $$PWD/include/ConnectionHelper.h \
   $$PWD/include/Database.h \
   $$PWD/include/Document.h \
   $$PWD/include/DocumentClient.h \
   $$PWD/include/DocumentDBConfiguration.h \
   $$PWD/include/DocumentDBConstants.h \
   $$PWD/include/DocumentDBEntity.h \
   $$PWD/include/DocumentIterator.h \
   $$PWD/include/exceptions.h \
   $$PWD/include/hmac_bcrypt.h \
   $$PWD/include/Index.h \
   $$PWD/include/IndexingMode.h \
   $$PWD/include/IndexingPolicy.h \
   $$PWD/include/IndexPath.h \
   $$PWD/include/IndexType.h \
   $$PWD/include/Permission.h \
   $$PWD/include/StoredProcedure.h \
   $$PWD/include/StoredProcedureIterator.h \
   $$PWD/include/Trigger.h \
   $$PWD/include/TriggerIterator.h \
   $$PWD/include/TriggerOperation.h \
   $$PWD/include/TriggerType.h \
   $$PWD/include/User.h \
   $$PWD/include/UserDefinedFunction.h \
   $$PWD/include/UserDefinedFunctionIterator.h

SOURCES = \
   $$PWD/src/Attachment.cpp \
   $$PWD/src/AttachmentIterator.cpp \
   $$PWD/src/Collection.cpp \
   $$PWD/src/ConnectionHelper.cpp \
   $$PWD/src/Database.cpp \
   $$PWD/src/Document.cpp \
   $$PWD/src/DocumentClient.cpp \
   $$PWD/src/DocumentDBConfiguration.cpp \
   $$PWD/src/DocumentDBEntity.cpp \
   $$PWD/src/DocumentIterator.cpp \
   $$PWD/src/hmac_bcrypt.cpp \
   $$PWD/src/Index.cpp \
   $$PWD/src/IndexingPolicy.cpp \
   $$PWD/src/IndexPath.cpp \
   $$PWD/src/Permission.cpp \
   $$PWD/src/StoredProcedure.cpp \
   $$PWD/src/StoredProcedureIterator.cpp \
   $$PWD/src/Trigger.cpp \
   $$PWD/src/TriggerIterator.cpp \
   $$PWD/src/User.cpp \
   $$PWD/src/UserDefinedFunction.cpp \
   $$PWD/src/UserDefinedFunctionIterator.cpp \
   $$PWD/src/Utils.cpp

