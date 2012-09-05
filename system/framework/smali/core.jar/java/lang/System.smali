.class public final Ljava/lang/System;
.super Ljava/lang/Object;
.source "System.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/System$SystemEnvironment;
    }
.end annotation


# static fields
.field public static final err:Ljava/io/PrintStream;

.field public static final in:Ljava/io/InputStream;

.field private static final lineSeparator:Ljava/lang/String;

.field public static final out:Ljava/io/PrintStream;

.field private static systemProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 87
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 88
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 89
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 90
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method

.method public static native arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
.end method

.method public static clearProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "key"

    .prologue
    .line 457
    if-nez p0, :cond_8

    .line 458
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 460
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 463
    :cond_14
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static console()Ljava/io/Console;
    .registers 1

    .prologue
    .line 473
    invoke-static {}, Ljava/io/Console;->getConsole()Ljava/io/Console;

    move-result-object v0

    return-object v0
.end method

.method public static native currentTimeMillis()J
.end method

.method public static exit(I)V
    .registers 2
    .parameter "code"

    .prologue
    .line 181
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exit(I)V

    .line 182
    return-void
.end method

.method public static gc()V
    .registers 1

    .prologue
    .line 190
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 191
    return-void
.end method

.method private static native getEnvByName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getProperties()Ljava/util/Properties;
    .registers 1

    .prologue
    .line 259
    sget-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    if-nez v0, :cond_7

    .line 260
    invoke-static {}, Ljava/lang/System;->initSystemProperties()V

    .line 262
    :cond_7
    sget-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "propertyName"

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "prop"
    .parameter "defaultValue"

    .prologue
    .line 422
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 425
    :cond_c
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecurityManager()Ljava/lang/SecurityManager;
    .registers 1

    .prologue
    .line 483
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getenv(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "name"

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/System;->getenv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getenv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 207
    if-nez p0, :cond_a

    .line 208
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_a
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_13

    .end local v0           #value:Ljava/lang/String;
    :goto_12
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_13
    move-object v0, p1

    goto :goto_12
.end method

.method public static getenv()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v6}, Llibcore/io/Os;->environ()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_d
    if-ge v2, v4, :cond_2b

    aget-object v1, v0, v2

    .line 229
    .local v1, entry:Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 230
    .local v3, index:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_28

    .line 231
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 234
    .end local v1           #entry:Ljava/lang/String;
    .end local v3           #index:I
    :cond_2b
    new-instance v6, Ljava/lang/System$SystemEnvironment;

    invoke-direct {v6, v5}, Ljava/lang/System$SystemEnvironment;-><init>(Ljava/util/Map;)V

    return-object v6
.end method

.method public static native identityHashCode(Ljava/lang/Object;)I
.end method

.method public static inheritedChannel()Ljava/nio/channels/Channel;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->inheritedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    return-object v0
.end method

.method private static initSystemProperties()V
    .registers 8

    .prologue
    .line 266
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    .line 267
    .local v4, runtime:Ldalvik/system/VMRuntime;
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 269
    .local v1, p:Ljava/util/Properties;
    const-string v3, "http://www.android.com/"

    .line 270
    .local v3, projectUrl:Ljava/lang/String;
    const-string v2, "The Android Project"

    .line 272
    .local v2, projectName:Ljava/lang/String;
    const-string v5, "java.boot.class.path"

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->bootClassPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v5, "java.class.path"

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->classPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v5, "java.class.version"

    const-string v6, "50.0"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v5, "java.compiler"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v5, "java.ext.dirs"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v5, "java.version"

    const-string v6, "0"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v5, "java.home"

    const-string v6, "JAVA_HOME"

    const-string v7, "/system"

    invoke-static {v6, v7}, Ljava/lang/System;->getenv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v5, "java.io.tmpdir"

    const-string v6, "/tmp"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v5, "java.library.path"

    const-string v6, "LD_LIBRARY_PATH"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v5, "java.specification.name"

    const-string v6, "Dalvik Core Library"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v5, "java.specification.vendor"

    invoke-virtual {v1, v5, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v5, "java.specification.version"

    const-string v6, "0.9"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v5, "java.vendor"

    invoke-virtual {v1, v5, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v5, "java.vendor.url"

    invoke-virtual {v1, v5, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v5, "java.vm.name"

    const-string v6, "Dalvik"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v5, "java.vm.specification.name"

    const-string v6, "Dalvik Virtual Machine Specification"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v5, "java.vm.specification.vendor"

    invoke-virtual {v1, v5, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v5, "java.vm.specification.version"

    const-string v6, "0.9"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v5, "java.vm.vendor"

    invoke-virtual {v1, v5, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v5, "java.vm.version"

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->vmVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v5, "file.separator"

    const-string v6, "/"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v5, "line.separator"

    const-string v6, "\n"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v5, "path.separator"

    const-string v6, ":"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v5, "java.runtime.name"

    const-string v6, "Android Runtime"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v5, "java.runtime.version"

    const-string v6, "0.9"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v5, "java.vm.vendor.url"

    invoke-virtual {v1, v5, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v5, "file.encoding"

    const-string v6, "UTF-8"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v5, "user.language"

    const-string v6, "en"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v5, "user.region"

    const-string v6, "US"

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v5, "user.home"

    const-string v6, "HOME"

    const-string v7, ""

    invoke-static {v6, v7}, Ljava/lang/System;->getenv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v5, "user.name"

    const-string v6, "USER"

    const-string v7, ""

    invoke-static {v6, v7}, Ljava/lang/System;->getenv(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v5}, Llibcore/io/Os;->uname()Llibcore/io/StructUtsname;

    move-result-object v0

    .line 317
    .local v0, info:Llibcore/io/StructUtsname;
    const-string v5, "os.arch"

    iget-object v6, v0, Llibcore/io/StructUtsname;->machine:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v5, "os.name"

    iget-object v6, v0, Llibcore/io/StructUtsname;->sysname:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v5, "os.version"

    iget-object v6, v0, Llibcore/io/StructUtsname;->release:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v5, "android.icu.library.version"

    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v5, "android.icu.unicode.version"

    invoke-static {}, Llibcore/icu/ICU;->getUnicodeVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-static {}, Ljava/lang/System;->specialProperties()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 329
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->properties()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 331
    sput-object v1, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    .line 332
    return-void
.end method

.method public static lineSeparator()Ljava/lang/String;
    .registers 1

    .prologue
    .line 508
    sget-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public static load(Ljava/lang/String;)V
    .registers 3
    .parameter "pathName"

    .prologue
    .line 521
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/Runtime;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 522
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .registers 3
    .parameter "libName"

    .prologue
    .line 535
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 536
    return-void
.end method

.method private static native log(CLjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static logE(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 542
    const/16 v0, 0x45

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "th"

    .prologue
    .line 549
    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 550
    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 556
    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 557
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "th"

    .prologue
    .line 563
    const/16 v0, 0x49

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    return-void
.end method

.method public static logW(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 570
    const/16 v0, 0x57

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 571
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "th"

    .prologue
    .line 577
    const/16 v0, 0x57

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 578
    return-void
.end method

.method public static native mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nanoTime()J
.end method

.method private static parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V
    .registers 10
    .parameter "p"
    .parameter "assignments"

    .prologue
    .line 345
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v4, :cond_1e

    aget-object v1, v0, v2

    .line 346
    .local v1, assignment:Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 347
    .local v5, split:I
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, key:Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, value:Ljava/lang/String;
    invoke-virtual {p0, v3, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 351
    .end local v1           #assignment:Ljava/lang/String;
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #split:I
    .end local v6           #value:Ljava/lang/String;
    :cond_1e
    return-void
.end method

.method public static runFinalization()V
    .registers 1

    .prologue
    .line 587
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 588
    return-void
.end method

.method public static runFinalizersOnExit(Z)V
    .registers 1
    .parameter "flag"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 602
    invoke-static {p0}, Ljava/lang/Runtime;->runFinalizersOnExit(Z)V

    .line 603
    return-void
.end method

.method public static setErr(Ljava/io/PrintStream;)V
    .registers 3
    .parameter "newErr"

    .prologue
    .line 124
    const-string v0, "err"

    const-string v1, "Ljava/io/PrintStream;"

    invoke-static {v0, v1, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method private static native setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public static setIn(Ljava/io/InputStream;)V
    .registers 3
    .parameter "newIn"

    .prologue
    .line 101
    const-string v0, "in"

    const-string v1, "Ljava/io/InputStream;"

    invoke-static {v0, v1, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public static setOut(Ljava/io/PrintStream;)V
    .registers 3
    .parameter "newOut"

    .prologue
    .line 112
    const-string v0, "out"

    const-string v1, "Ljava/io/PrintStream;"

    invoke-static {v0, v1, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .registers 1
    .parameter "p"

    .prologue
    .line 611
    sput-object p0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    .line 612
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "prop"
    .parameter "value"

    .prologue
    .line 439
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 440
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 442
    :cond_c
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static setSecurityManager(Ljava/lang/SecurityManager;)V
    .registers 2
    .parameter "sm"

    .prologue
    .line 625
    if-eqz p0, :cond_8

    .line 626
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 628
    :cond_8
    return-void
.end method

.method private static native specialProperties()[Ljava/lang/String;
.end method
