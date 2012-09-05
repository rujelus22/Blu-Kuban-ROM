.class public Lorg/apache/commons/logging/LogSource;
.super Ljava/lang/Object;
.source "LogSource.java"


# static fields
.field protected static jdk14IsAvailable:Z

.field protected static log4jIsAvailable:Z

.field protected static logImplctor:Ljava/lang/reflect/Constructor;

.field protected static logs:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 62
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    .line 65
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    .line 68
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    .line 71
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    .line 80
    :try_start_f
    const-string v2, "org.apache.log4j.Logger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 81
    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1a} :catch_46

    .line 91
    .local v1, t:Ljava/lang/Throwable;
    :goto_1a
    :try_start_1a
    const-string v2, "java.util.logging.Logger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_4a

    const-string v2, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 93
    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_2d} :catch_4e

    .line 102
    :goto_2d
    const/4 v0, 0x0

    .line 104
    .end local v1           #t:Ljava/lang/Throwable;
    .local v0, name:Ljava/lang/String;
    :try_start_2e
    const-string v2, "org.apache.commons.logging.log"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    if-nez v0, :cond_3c

    .line 106
    const-string v2, "org.apache.commons.logging.Log"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_3b} :catch_7e

    move-result-object v0

    .line 110
    :cond_3c
    :goto_3c
    if-eqz v0, :cond_5b

    .line 112
    :try_start_3e
    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_52

    .line 143
    :goto_41
    return-void

    .line 83
    .end local v0           #name:Ljava/lang/String;
    :cond_42
    const/4 v2, 0x0

    :try_start_43
    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_45} :catch_46

    goto :goto_1a

    .line 85
    :catch_46
    move-exception v1

    .line 86
    .restart local v1       #t:Ljava/lang/Throwable;
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    goto :goto_1a

    .line 95
    :cond_4a
    const/4 v2, 0x0

    :try_start_4b
    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4d} :catch_4e

    goto :goto_2d

    .line 97
    :catch_4e
    move-exception v1

    .line 98
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    goto :goto_2d

    .line 113
    .end local v1           #t:Ljava/lang/Throwable;
    .restart local v0       #name:Ljava/lang/String;
    :catch_52
    move-exception v1

    .line 115
    .restart local v1       #t:Ljava/lang/Throwable;
    :try_start_53
    const-string v2, "org.apache.commons.logging.impl.NoOpLog"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_58} :catch_59

    goto :goto_41

    .line 117
    :catch_59
    move-exception v2

    goto :goto_41

    .line 123
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_5b
    :try_start_5b
    sget-boolean v2, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    if-eqz v2, :cond_6e

    .line 124
    const-string v2, "org.apache.commons.logging.impl.Log4JLogger"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_64} :catch_65

    goto :goto_41

    .line 133
    :catch_65
    move-exception v1

    .line 135
    .restart local v1       #t:Ljava/lang/Throwable;
    :try_start_66
    const-string v2, "org.apache.commons.logging.impl.NoOpLog"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_6b} :catch_6c

    goto :goto_41

    .line 137
    :catch_6c
    move-exception v2

    goto :goto_41

    .line 126
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_6e
    :try_start_6e
    sget-boolean v2, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    if-eqz v2, :cond_78

    .line 127
    const-string v2, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V

    goto :goto_41

    .line 130
    :cond_78
    const-string v2, "org.apache.commons.logging.impl.NoOpLog"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_7d} :catch_65

    goto :goto_41

    .line 108
    :catch_7e
    move-exception v2

    goto :goto_3c
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .registers 2
    .parameter "clazz"

    .prologue
    .line 207
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 3
    .parameter "name"

    .prologue
    .line 196
    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/Log;

    .line 197
    .local v0, log:Lorg/apache/commons/logging/Log;
    if-nez v0, :cond_13

    .line 198
    invoke-static {p0}, Lorg/apache/commons/logging/LogSource;->makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 199
    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_13
    return-object v0
.end method

.method public static getLogNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 258
    sget-object v0, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 5
    .parameter "name"

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 239
    .local v1, log:Lorg/apache/commons/logging/Log;
    const/4 v3, 0x1

    :try_start_2
    new-array v0, v3, [Ljava/lang/Object;

    .line 240
    .local v0, args:[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p0, v0, v3

    .line 241
    sget-object v3, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #log:Lorg/apache/commons/logging/Log;
    check-cast v1, Lorg/apache/commons/logging/Log;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_17

    .line 245
    .end local v0           #args:[Ljava/lang/Object;
    .restart local v1       #log:Lorg/apache/commons/logging/Log;
    :goto_f
    if-nez v1, :cond_16

    .line 246
    new-instance v1, Lorg/apache/commons/logging/impl/NoOpLog;

    .end local v1           #log:Lorg/apache/commons/logging/Log;
    invoke-direct {v1, p0}, Lorg/apache/commons/logging/impl/NoOpLog;-><init>(Ljava/lang/String;)V

    .line 248
    .restart local v1       #log:Lorg/apache/commons/logging/Log;
    :cond_16
    return-object v1

    .line 242
    .end local v1           #log:Lorg/apache/commons/logging/Log;
    :catch_17
    move-exception v2

    .line 243
    .local v2, t:Ljava/lang/Throwable;
    const/4 v1, 0x0

    .restart local v1       #log:Lorg/apache/commons/logging/Log;
    goto :goto_f
.end method

.method public static setLogImplementation(Ljava/lang/Class;)V
    .registers 4
    .parameter "logclass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Class;

    .line 189
    .local v0, argtypes:[Ljava/lang/Class;
    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    .line 191
    return-void
.end method

.method public static setLogImplementation(Ljava/lang/String;)V
    .registers 6
    .parameter "classname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 169
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 170
    .local v1, logclass:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    .line 171
    .local v0, argtypes:[Ljava/lang/Class;
    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v0, v3

    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    .line 176
    .end local v0           #argtypes:[Ljava/lang/Class;
    .end local v1           #logclass:Ljava/lang/Class;
    :goto_16
    return-void

    .line 173
    :catch_17
    move-exception v2

    .line 174
    .local v2, t:Ljava/lang/Throwable;
    const/4 v3, 0x0

    sput-object v3, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    goto :goto_16
.end method
