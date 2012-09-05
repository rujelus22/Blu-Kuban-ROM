.class public abstract Lcom/util/http/apache/logging/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# static fields
.field private static diagnosticPrefix:Ljava/lang/String;

.field private static diagnosticsStream:Ljava/io/PrintStream;

.field protected static factories:Ljava/util/Hashtable;

.field protected static nullClassLoaderFactory:Lcom/util/http/apache/logging/LogFactory;

.field private static thisClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 124
    sput-object v0, Lcom/util/http/apache/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    .line 270
    sput-object v0, Lcom/util/http/apache/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 286
    sput-object v0, Lcom/util/http/apache/logging/LogFactory;->nullClassLoaderFactory:Lcom/util/http/apache/logging/LogFactory;

    .line 1687
    const-class v0, Lcom/util/http/apache/logging/LogFactory;

    invoke-static {v0}, Lcom/util/http/apache/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/util/http/apache/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 1688
    invoke-static {}, Lcom/util/http/apache/logging/LogFactory;->initDiagnostics()V

    .line 1689
    const-class v0, Lcom/util/http/apache/logging/LogFactory;

    invoke-static {v0}, Lcom/util/http/apache/logging/LogFactory;->logClassLoaderEnvironment(Ljava/lang/Class;)V

    .line 1690
    invoke-static {}, Lcom/util/http/apache/logging/LogFactory;->createFactoryStore()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/util/http/apache/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 1691
    invoke-static {}, Lcom/util/http/apache/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1692
    const-string v0, "BOOTSTRAP COMPLETED"

    invoke-static {v0}, Lcom/util/http/apache/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1694
    :cond_28
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method private static final createFactoryStore()Ljava/util/Hashtable;
    .registers 7

    .prologue
    .line 304
    const/4 v2, 0x0

    .line 305
    .local v2, result:Ljava/util/Hashtable;
    const-string v5, "org.apache.commons.logging.LogFactory.HashtableImpl"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, storeImplementationClass:Ljava/lang/String;
    if-nez v3, :cond_b

    .line 307
    const-string v3, "org.apache.commons.logging.impl.WeakHashtable"

    .line 310
    :cond_b
    :try_start_b
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 311
    .local v1, implementationClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Hashtable;

    move-object v2, v0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_17} :catch_1f

    .line 328
    .end local v1           #implementationClass:Ljava/lang/Class;
    :cond_17
    :goto_17
    if-nez v2, :cond_1e

    .line 329
    new-instance v2, Ljava/util/Hashtable;

    .end local v2           #result:Ljava/util/Hashtable;
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 331
    .restart local v2       #result:Ljava/util/Hashtable;
    :cond_1e
    return-object v2

    .line 313
    :catch_1f
    move-exception v4

    .line 315
    .local v4, t:Ljava/lang/Throwable;
    const-string v5, "org.apache.commons.logging.impl.WeakHashtable"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 318
    invoke-static {}, Lcom/util/http/apache/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 320
    const-string v5, "[ERROR] LogFactory: Load of custom hashtable failed"

    invoke-static {v5}, Lcom/util/http/apache/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_17

    .line 324
    :cond_34
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "[ERROR] LogFactory: Load of custom hashtable failed"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_17
.end method

.method protected static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .registers 4
    .parameter "clazz"

    .prologue
    .line 735
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 736
    :catch_5
    move-exception v0

    .line 737
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-static {}, Lcom/util/http/apache/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get classloader for class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' due to security restrictions - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/util/http/apache/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 741
    :cond_30
    throw v0
.end method

.method public static getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .registers 2
    .parameter "clazz"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/util/http/apache/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/util/http/apache/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method public static getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/util/http/apache/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 642
    new-instance v0, Lcom/util/http/apache/logging/Jdk14Logger;

    invoke-direct {v0, p0}, Lcom/util/http/apache/logging/Jdk14Logger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static initDiagnostics()V
    .registers 8

    .prologue
    .line 1449
    :try_start_0
    const-string v6, "org.apache.commons.logging.diagnostics.dest"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v2

    .line 1450
    .local v2, dest:Ljava/lang/String;
    if-nez v2, :cond_b

    .line 1495
    .end local v2           #dest:Ljava/lang/String;
    :goto_8
    return-void

    .line 1453
    :catch_9
    move-exception v4

    .line 1456
    .local v4, ex:Ljava/lang/SecurityException;
    goto :goto_8

    .line 1459
    .end local v4           #ex:Ljava/lang/SecurityException;
    .restart local v2       #dest:Ljava/lang/String;
    :cond_b
    const-string v6, "STDOUT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 1460
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v6, Lcom/util/http/apache/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    .line 1485
    :goto_17
    :try_start_17
    sget-object v0, Lcom/util/http/apache/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 1486
    .local v0, classLoader:Ljava/lang/ClassLoader;
    sget-object v6, Lcom/util/http/apache/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    if-nez v6, :cond_58

    .line 1487
    const-string v1, "BOOTLOADER"
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_1f} :catch_5d

    .line 1494
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .local v1, classLoaderName:Ljava/lang/String;
    :goto_1f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LogFactory from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/util/http/apache/logging/LogFactory;->diagnosticPrefix:Ljava/lang/String;

    goto :goto_8

    .line 1461
    .end local v1           #classLoaderName:Ljava/lang/String;
    :cond_3b
    const-string v6, "STDERR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1462
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v6, Lcom/util/http/apache/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    goto :goto_17

    .line 1466
    :cond_48
    :try_start_48
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 1467
    .local v5, fos:Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/PrintStream;

    invoke-direct {v6, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v6, Lcom/util/http/apache/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_55} :catch_56

    goto :goto_17

    .line 1468
    .end local v5           #fos:Ljava/io/FileOutputStream;
    :catch_56
    move-exception v4

    .line 1470
    .local v4, ex:Ljava/io/IOException;
    goto :goto_8

    .line 1489
    .end local v4           #ex:Ljava/io/IOException;
    .restart local v0       #classLoader:Ljava/lang/ClassLoader;
    :cond_58
    :try_start_58
    invoke-static {v0}, Lcom/util/http/apache/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/SecurityException; {:try_start_58 .. :try_end_5b} :catch_5d

    move-result-object v1

    .restart local v1       #classLoaderName:Ljava/lang/String;
    goto :goto_1f

    .line 1491
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v1           #classLoaderName:Ljava/lang/String;
    :catch_5d
    move-exception v3

    .line 1492
    .local v3, e:Ljava/lang/SecurityException;
    const-string v1, "UNKNOWN"

    .restart local v1       #classLoaderName:Ljava/lang/String;
    goto :goto_1f
.end method

.method protected static isDiagnosticsEnabled()Z
    .registers 1

    .prologue
    .line 1507
    sget-object v0, Lcom/util/http/apache/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static logClassLoaderEnvironment(Ljava/lang/Class;)V
    .registers 6
    .parameter "clazz"

    .prologue
    .line 1566
    invoke-static {}, Lcom/util/http/apache/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1594
    :goto_6
    return-void

    .line 1571
    :cond_7
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] Extension directories (java.ext.dir): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "java.ext.dir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/util/http/apache/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] Application classpath (java.class.path): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "java.class.path"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/util/http/apache/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_3f} :catch_89

    .line 1579
    :goto_3f
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1583
    .local v1, className:Ljava/lang/String;
    :try_start_43
    invoke-static {p0}, Lcom/util/http/apache/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    :try_end_46
    .catch Ljava/lang/SecurityException; {:try_start_43 .. :try_end_46} :catch_90

    move-result-object v0

    .line 1590
    .local v0, classLoader:Ljava/lang/ClassLoader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was loaded via classloader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/util/http/apache/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/util/http/apache/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] Ancestry of classloader which loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/util/http/apache/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto/16 :goto_6

    .line 1575
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v1           #className:Ljava/lang/String;
    :catch_89
    move-exception v2

    .line 1576
    .local v2, ex:Ljava/lang/SecurityException;
    const-string v3, "[ENV] Security setting prevent interrogation of system classpaths."

    invoke-static {v3}, Lcom/util/http/apache/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_3f

    .line 1584
    .end local v2           #ex:Ljava/lang/SecurityException;
    .restart local v1       #className:Ljava/lang/String;
    :catch_90
    move-exception v2

    .line 1586
    .restart local v2       #ex:Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] Security forbids determining the classloader for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/util/http/apache/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private static final logDiagnostic(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1529
    sget-object v0, Lcom/util/http/apache/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_15

    .line 1530
    sget-object v0, Lcom/util/http/apache/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    sget-object v1, Lcom/util/http/apache/logging/LogFactory;->diagnosticPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1531
    sget-object v0, Lcom/util/http/apache/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1532
    sget-object v0, Lcom/util/http/apache/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 1534
    :cond_15
    return-void
.end method

.method private static logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 8
    .parameter "prefix"
    .parameter "classLoader"

    .prologue
    .line 1605
    invoke-static {}, Lcom/util/http/apache/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1643
    :cond_6
    :goto_6
    return-void

    .line 1609
    :cond_7
    if-eqz p1, :cond_35

    .line 1610
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1611
    .local v1, classLoaderString:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/util/http/apache/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " == \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/util/http/apache/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1615
    .end local v1           #classLoaderString:Ljava/lang/String;
    :cond_35
    :try_start_35
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_38} :catch_79

    move-result-object v3

    .line 1620
    .local v3, systemClassLoader:Ljava/lang/ClassLoader;
    if-eqz p1, :cond_6

    .line 1621
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ClassLoader tree:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1623
    .local v0, buf:Ljava/lang/StringBuffer;
    :cond_53
    invoke-static {p1}, Lcom/util/http/apache/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1624
    if-ne p1, v3, :cond_61

    .line 1625
    const-string v4, " (SYSTEM) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1629
    :cond_61
    :try_start_61
    invoke-virtual {p1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;
    :try_end_64
    .catch Ljava/lang/SecurityException; {:try_start_61 .. :try_end_64} :catch_92

    move-result-object p1

    .line 1635
    const-string v4, " --> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1636
    if-nez p1, :cond_53

    .line 1637
    const-string v4, "BOOT"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1641
    :goto_71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/util/http/apache/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_6

    .line 1616
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v3           #systemClassLoader:Ljava/lang/ClassLoader;
    :catch_79
    move-exception v2

    .line 1617
    .local v2, ex:Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Security forbids determining the system classloader."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/util/http/apache/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1630
    .end local v2           #ex:Ljava/lang/SecurityException;
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v3       #systemClassLoader:Ljava/lang/ClassLoader;
    :catch_92
    move-exception v2

    .line 1631
    .restart local v2       #ex:Ljava/lang/SecurityException;
    const-string v4, " --> SECRET"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_71
.end method

.method public static objectId(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "o"

    .prologue
    .line 1659
    if-nez p0, :cond_5

    .line 1660
    const-string v0, "null"

    .line 1662
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
