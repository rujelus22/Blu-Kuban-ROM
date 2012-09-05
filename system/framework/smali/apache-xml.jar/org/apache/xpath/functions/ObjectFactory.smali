.class Lorg/apache/xpath/functions/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "xalan.properties"

.field private static final SERVICES_PATH:Ljava/lang/String; = "META-INF/services/"

.field private static fLastModified:J

.field private static fXalanProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xpath/functions/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .line 77
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/apache/xpath/functions/ObjectFactory;->fLastModified:J

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 627
    return-void
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "factoryId"
    .parameter "fallbackClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/xpath/functions/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .parameter "factoryId"
    .parameter "propertiesFilename"
    .parameter "fallbackClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p0, p1, p2}, Lorg/apache/xpath/functions/ObjectFactory;->lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 137
    .local v0, factoryClass:Ljava/lang/Class;
    if-nez v0, :cond_26

    .line 138
    new-instance v3, Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 143
    :cond_26
    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 144
    .local v1, instance:Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created new instance of factory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xpath/functions/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_41

    .line 145
    return-object v1

    .line 146
    .end local v1           #instance:Ljava/lang/Object;
    :catch_41
    move-exception v2

    .line 147
    .local v2, x:Ljava/lang/Exception;
    new-instance v3, Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider for factory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could not be instantiated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .registers 1
    .parameter "msg"

    .prologue
    .line 387
    return-void
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 396
    invoke-static {}, Lorg/apache/xpath/functions/SecuritySupport;->getInstance()Lorg/apache/xpath/functions/SecuritySupport;

    move-result-object v3

    .line 400
    .local v3, ss:Lorg/apache/xpath/functions/SecuritySupport;
    invoke-virtual {v3}, Lorg/apache/xpath/functions/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 401
    .local v1, context:Ljava/lang/ClassLoader;
    invoke-virtual {v3}, Lorg/apache/xpath/functions/SecuritySupport;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 403
    .local v4, system:Ljava/lang/ClassLoader;
    move-object v0, v4

    .line 405
    .local v0, chain:Ljava/lang/ClassLoader;
    :goto_d
    if-ne v1, v0, :cond_22

    .line 414
    const-class v5, Lorg/apache/xpath/functions/ObjectFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 416
    .local v2, current:Ljava/lang/ClassLoader;
    move-object v0, v4

    .line 418
    :goto_16
    if-ne v2, v0, :cond_19

    .line 446
    .end local v2           #current:Ljava/lang/ClassLoader;
    .end local v4           #system:Ljava/lang/ClassLoader;
    :goto_18
    return-object v4

    .line 423
    .restart local v2       #current:Ljava/lang/ClassLoader;
    .restart local v4       #system:Ljava/lang/ClassLoader;
    :cond_19
    if-nez v0, :cond_1d

    move-object v4, v2

    .line 431
    goto :goto_18

    .line 426
    :cond_1d
    invoke-virtual {v3, v0}, Lorg/apache/xpath/functions/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_16

    .line 434
    .end local v2           #current:Ljava/lang/ClassLoader;
    :cond_22
    if-nez v0, :cond_26

    move-object v4, v1

    .line 446
    goto :goto_18

    .line 441
    :cond_26
    invoke-virtual {v3, v0}, Lorg/apache/xpath/functions/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_d
.end method

.method private static findJarServiceProviderName(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "factoryId"

    .prologue
    const/4 v9, 0x0

    .line 537
    invoke-static {}, Lorg/apache/xpath/functions/SecuritySupport;->getInstance()Lorg/apache/xpath/functions/SecuritySupport;

    move-result-object v7

    .line 538
    .local v7, ss:Lorg/apache/xpath/functions/SecuritySupport;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "META-INF/services/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, serviceId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 542
    .local v4, is:Ljava/io/InputStream;
    invoke-static {}, Lorg/apache/xpath/functions/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 544
    .local v0, cl:Ljava/lang/ClassLoader;
    invoke-virtual {v7, v0, v6}, Lorg/apache/xpath/functions/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 547
    if-nez v4, :cond_30

    .line 548
    const-class v10, Lorg/apache/xpath/functions/ObjectFactory;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 549
    .local v1, current:Ljava/lang/ClassLoader;
    if-eq v0, v1, :cond_30

    .line 550
    move-object v0, v1

    .line 551
    invoke-virtual {v7, v0, v6}, Lorg/apache/xpath/functions/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 555
    .end local v1           #current:Ljava/lang/ClassLoader;
    :cond_30
    if-nez v4, :cond_34

    move-object v3, v9

    .line 617
    :goto_33
    return-object v3

    .line 560
    :cond_34
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found jar resource="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " using ClassLoader: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/xpath/functions/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 581
    :try_start_54
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v10, v4, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_60
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_54 .. :try_end_60} :catch_89

    .line 586
    .local v5, rd:Ljava/io/BufferedReader;
    :goto_60
    const/4 v3, 0x0

    .line 590
    .local v3, factoryClassName:Ljava/lang/String;
    :try_start_61
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_9b
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_95

    move-result-object v3

    .line 598
    :try_start_65
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_a2

    .line 604
    :goto_68
    if-eqz v3, :cond_a0

    const-string v10, ""

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a0

    .line 606
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "found in resource, value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/xpath/functions/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_33

    .line 582
    .end local v3           #factoryClassName:Ljava/lang/String;
    .end local v5           #rd:Ljava/io/BufferedReader;
    :catch_89
    move-exception v2

    .line 583
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v5       #rd:Ljava/io/BufferedReader;
    goto :goto_60

    .line 591
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v3       #factoryClassName:Ljava/lang/String;
    :catch_95
    move-exception v8

    .line 598
    .local v8, x:Ljava/io/IOException;
    :try_start_96
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_a4

    :goto_99
    move-object v3, v9

    .line 601
    goto :goto_33

    .line 596
    .end local v8           #x:Ljava/io/IOException;
    :catchall_9b
    move-exception v9

    .line 598
    :try_start_9c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a6

    .line 601
    :goto_9f
    throw v9

    :cond_a0
    move-object v3, v9

    .line 617
    goto :goto_33

    .line 601
    :catch_a2
    move-exception v10

    goto :goto_68

    .restart local v8       #x:Ljava/io/IOException;
    :catch_a4
    move-exception v10

    goto :goto_99

    .end local v8           #x:Ljava/io/IOException;
    :catch_a6
    move-exception v10

    goto :goto_9f
.end method

.method static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .registers 11
    .parameter "className"
    .parameter "cl"
    .parameter "doFallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 482
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    .line 484
    .local v5, security:Ljava/lang/SecurityManager;
    if-eqz v5, :cond_18

    .line 485
    :try_start_6
    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 486
    .local v2, lastDot:I
    move-object v3, p0

    .line 487
    .local v3, packageName:Ljava/lang/String;
    const/4 v7, -0x1

    if-eq v2, v7, :cond_15

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 488
    :cond_15
    invoke-virtual {v5, v3}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_18} :catch_1f

    .line 495
    .end local v2           #lastDot:I
    .end local v3           #packageName:Ljava/lang/String;
    :cond_18
    if-nez p1, :cond_21

    .line 505
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 527
    .local v4, providerClass:Ljava/lang/Class;
    :goto_1e
    return-object v4

    .line 490
    .end local v4           #providerClass:Ljava/lang/Class;
    :catch_1f
    move-exception v1

    .line 491
    .local v1, e:Ljava/lang/SecurityException;
    throw v1

    .line 508
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_21
    :try_start_21
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_24} :catch_26

    move-result-object v4

    .restart local v4       #providerClass:Ljava/lang/Class;
    goto :goto_1e

    .line 509
    .end local v4           #providerClass:Ljava/lang/Class;
    :catch_26
    move-exception v6

    .line 510
    .local v6, x:Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_3f

    .line 512
    const-class v7, Lorg/apache/xpath/functions/ObjectFactory;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 513
    .local v0, current:Ljava/lang/ClassLoader;
    if-nez v0, :cond_36

    .line 514
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .restart local v4       #providerClass:Ljava/lang/Class;
    goto :goto_1e

    .line 515
    .end local v4           #providerClass:Ljava/lang/Class;
    :cond_36
    if-eq p1, v0, :cond_3e

    .line 516
    move-object p1, v0

    .line 517
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .restart local v4       #providerClass:Ljava/lang/Class;
    goto :goto_1e

    .line 519
    .end local v4           #providerClass:Ljava/lang/Class;
    :cond_3e
    throw v6

    .line 522
    .end local v0           #current:Ljava/lang/ClassLoader;
    :cond_3f
    throw v6
.end method

.method static lookUpFactoryClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .parameter "factoryId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-static {p0, v0, v0}, Lorg/apache/xpath/functions/ObjectFactory;->lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 10
    .parameter "factoryId"
    .parameter "propertiesFilename"
    .parameter "fallbackClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {p0, p1, p2}, Lorg/apache/xpath/functions/ObjectFactory;->lookUpFactoryClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, factoryClassName:Ljava/lang/String;
    invoke-static {}, Lorg/apache/xpath/functions/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 213
    .local v0, cl:Ljava/lang/ClassLoader;
    if-nez v1, :cond_b

    .line 214
    move-object v1, p2

    .line 219
    :cond_b
    const/4 v4, 0x1

    :try_start_c
    invoke-static {v1, v0, v4}, Lorg/apache/xpath/functions/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    .line 222
    .local v2, providerClass:Ljava/lang/Class;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "created new instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using ClassLoader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xpath/functions/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_30} :catch_31
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_51

    .line 224
    return-object v2

    .line 225
    .end local v2           #providerClass:Ljava/lang/Class;
    :catch_31
    move-exception v3

    .line 226
    .local v3, x:Ljava/lang/ClassNotFoundException;
    new-instance v4, Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 228
    .end local v3           #x:Ljava/lang/ClassNotFoundException;
    :catch_51
    move-exception v3

    .line 229
    .local v3, x:Ljava/lang/Exception;
    new-instance v4, Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be instantiated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method static lookUpFactoryClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 22
    .parameter "factoryId"
    .parameter "propertiesFilename"
    .parameter "fallbackClassName"

    .prologue
    .line 261
    invoke-static {}, Lorg/apache/xpath/functions/SecuritySupport;->getInstance()Lorg/apache/xpath/functions/SecuritySupport;

    move-result-object v10

    .line 265
    .local v10, ss:Lorg/apache/xpath/functions/SecuritySupport;
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lorg/apache/xpath/functions/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 266
    .local v11, systemProp:Ljava/lang/String;
    if-eqz v11, :cond_24

    .line 267
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "found system property, value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/xpath/functions/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_22} :catch_23

    .line 375
    .end local v11           #systemProp:Ljava/lang/String;
    :goto_22
    return-object v11

    .line 270
    :catch_23
    move-exception v13

    .line 276
    :cond_24
    const/4 v2, 0x0

    .line 279
    .local v2, factoryClassName:Ljava/lang/String;
    if-nez p1, :cond_fe

    .line 280
    const/4 v6, 0x0

    .line 281
    .local v6, propertiesFile:Ljava/io/File;
    const/4 v8, 0x0

    .line 283
    .local v8, propertiesFileExists:Z
    :try_start_29
    const-string v13, "java.home"

    invoke-virtual {v10, v13}, Lorg/apache/xpath/functions/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, javah:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "lib"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "xalan.properties"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 286
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_5b} :catch_c7

    .line 287
    .end local v6           #propertiesFile:Ljava/io/File;
    .local v7, propertiesFile:Ljava/io/File;
    :try_start_5b
    invoke-virtual {v10, v7}, Lorg/apache/xpath/functions/SecuritySupport;->getFileExists(Ljava/io/File;)Z
    :try_end_5e
    .catch Ljava/lang/SecurityException; {:try_start_5b .. :try_end_5e} :catch_13f

    move-result v8

    move-object v6, v7

    .line 294
    .end local v4           #javah:Ljava/lang/String;
    .end local v7           #propertiesFile:Ljava/io/File;
    .restart local v6       #propertiesFile:Ljava/io/File;
    :goto_60
    const-class v14, Lorg/apache/xpath/functions/ObjectFactory;

    monitor-enter v14

    .line 295
    const/4 v5, 0x0

    .line 296
    .local v5, loadProperties:Z
    const/4 v3, 0x0

    .line 299
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_65
    sget-wide v15, Lorg/apache/xpath/functions/ObjectFactory;->fLastModified:J

    const-wide/16 v17, 0x0

    cmp-long v13, v15, v17

    if-ltz v13, :cond_ea

    .line 300
    if-eqz v8, :cond_d0

    sget-wide v15, Lorg/apache/xpath/functions/ObjectFactory;->fLastModified:J

    invoke-virtual {v10, v6}, Lorg/apache/xpath/functions/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v17

    sput-wide v17, Lorg/apache/xpath/functions/ObjectFactory;->fLastModified:J

    cmp-long v13, v15, v17

    if-gez v13, :cond_d0

    .line 302
    const/4 v5, 0x1

    .line 317
    :cond_7c
    :goto_7c
    if-eqz v5, :cond_8e

    .line 320
    new-instance v13, Ljava/util/Properties;

    invoke-direct {v13}, Ljava/util/Properties;-><init>()V

    sput-object v13, Lorg/apache/xpath/functions/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .line 321
    invoke-virtual {v10, v6}, Lorg/apache/xpath/functions/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 322
    sget-object v13, Lorg/apache/xpath/functions/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    invoke-virtual {v13, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_8e
    .catchall {:try_start_65 .. :try_end_8e} :catchall_f4
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_8e} :catch_da

    .line 333
    :cond_8e
    if-eqz v3, :cond_93

    .line 335
    :try_start_90
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_fb
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_138

    .line 341
    :cond_93
    :goto_93
    :try_start_93
    monitor-exit v14
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_fb

    .line 342
    sget-object v13, Lorg/apache/xpath/functions/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    if-eqz v13, :cond_a0

    .line 343
    sget-object v13, Lorg/apache/xpath/functions/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    .end local v5           #loadProperties:Z
    .end local v6           #propertiesFile:Ljava/io/File;
    .end local v8           #propertiesFileExists:Z
    :cond_a0
    :goto_a0
    if-eqz v2, :cond_132

    .line 369
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "found in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/xpath/functions/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    move-object v11, v2

    .line 371
    goto/16 :goto_22

    .line 288
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v6       #propertiesFile:Ljava/io/File;
    .restart local v8       #propertiesFileExists:Z
    :catch_c7
    move-exception v1

    .line 290
    .local v1, e:Ljava/lang/SecurityException;
    :goto_c8
    const-wide/16 v13, -0x1

    sput-wide v13, Lorg/apache/xpath/functions/ObjectFactory;->fLastModified:J

    .line 291
    const/4 v13, 0x0

    sput-object v13, Lorg/apache/xpath/functions/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    goto :goto_60

    .line 305
    .end local v1           #e:Ljava/lang/SecurityException;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #loadProperties:Z
    :cond_d0
    if-nez v8, :cond_7c

    .line 306
    const-wide/16 v15, -0x1

    :try_start_d4
    sput-wide v15, Lorg/apache/xpath/functions/ObjectFactory;->fLastModified:J

    .line 307
    const/4 v13, 0x0

    sput-object v13, Lorg/apache/xpath/functions/ObjectFactory;->fXalanProperties:Ljava/util/Properties;
    :try_end_d9
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_f4
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d9} :catch_da

    goto :goto_7c

    .line 324
    :catch_da
    move-exception v12

    .line 325
    .local v12, x:Ljava/lang/Exception;
    const/4 v13, 0x0

    :try_start_dc
    sput-object v13, Lorg/apache/xpath/functions/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .line 326
    const-wide/16 v15, -0x1

    sput-wide v15, Lorg/apache/xpath/functions/ObjectFactory;->fLastModified:J
    :try_end_e2
    .catchall {:try_start_dc .. :try_end_e2} :catchall_f4

    .line 333
    if-eqz v3, :cond_93

    .line 335
    :try_start_e4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_fb
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8

    goto :goto_93

    .line 338
    :catch_e8
    move-exception v13

    goto :goto_93

    .line 312
    .end local v12           #x:Ljava/lang/Exception;
    :cond_ea
    if-eqz v8, :cond_7c

    .line 313
    const/4 v5, 0x1

    .line 314
    :try_start_ed
    invoke-virtual {v10, v6}, Lorg/apache/xpath/functions/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v15

    sput-wide v15, Lorg/apache/xpath/functions/ObjectFactory;->fLastModified:J
    :try_end_f3
    .catchall {:try_start_ed .. :try_end_f3} :catchall_f4
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f3} :catch_da

    goto :goto_7c

    .line 333
    :catchall_f4
    move-exception v13

    if-eqz v3, :cond_fa

    .line 335
    :try_start_f7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_fb
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_13b

    .line 338
    :cond_fa
    :goto_fa
    :try_start_fa
    throw v13

    .line 341
    :catchall_fb
    move-exception v13

    monitor-exit v14
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_fb

    throw v13

    .line 346
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #loadProperties:Z
    .end local v6           #propertiesFile:Ljava/io/File;
    .end local v8           #propertiesFileExists:Z
    :cond_fe
    const/4 v3, 0x0

    .line 348
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :try_start_ff
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Lorg/apache/xpath/functions/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 349
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 350
    .local v9, props:Ljava/util/Properties;
    invoke-virtual {v9, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 351
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_117
    .catchall {:try_start_ff .. :try_end_117} :catchall_12b
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_117} :catch_120

    move-result-object v2

    .line 359
    if-eqz v3, :cond_a0

    .line 361
    :try_start_11a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_11e

    goto :goto_a0

    .line 364
    :catch_11e
    move-exception v13

    goto :goto_a0

    .line 352
    .end local v9           #props:Ljava/util/Properties;
    :catch_120
    move-exception v13

    .line 359
    if-eqz v3, :cond_a0

    .line 361
    :try_start_123
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_128

    goto/16 :goto_a0

    .line 364
    :catch_128
    move-exception v13

    goto/16 :goto_a0

    .line 359
    :catchall_12b
    move-exception v13

    if-eqz v3, :cond_131

    .line 361
    :try_start_12e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_13d

    .line 364
    :cond_131
    :goto_131
    throw v13

    .line 375
    :cond_132
    invoke-static/range {p0 .. p0}, Lorg/apache/xpath/functions/ObjectFactory;->findJarServiceProviderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_22

    .line 338
    .restart local v5       #loadProperties:Z
    .restart local v6       #propertiesFile:Ljava/io/File;
    .restart local v8       #propertiesFileExists:Z
    :catch_138
    move-exception v13

    goto/16 :goto_93

    :catch_13b
    move-exception v15

    goto :goto_fa

    .line 364
    .end local v5           #loadProperties:Z
    .end local v6           #propertiesFile:Ljava/io/File;
    .end local v8           #propertiesFileExists:Z
    :catch_13d
    move-exception v14

    goto :goto_131

    .line 288
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #javah:Ljava/lang/String;
    .restart local v7       #propertiesFile:Ljava/io/File;
    .restart local v8       #propertiesFileExists:Z
    :catch_13f
    move-exception v1

    move-object v6, v7

    .end local v7           #propertiesFile:Ljava/io/File;
    .restart local v6       #propertiesFile:Ljava/io/File;
    goto :goto_c8
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .registers 9
    .parameter "className"
    .parameter "cl"
    .parameter "doFallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 458
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xpath/functions/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 459
    .local v1, providerClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 460
    .local v0, instance:Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created new instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using ClassLoader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xpath/functions/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_28} :catch_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_49

    .line 462
    return-object v0

    .line 463
    .end local v0           #instance:Ljava/lang/Object;
    .end local v1           #providerClass:Ljava/lang/Class;
    :catch_29
    move-exception v2

    .line 464
    .local v2, x:Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 466
    .end local v2           #x:Ljava/lang/ClassNotFoundException;
    :catch_49
    move-exception v2

    .line 467
    .local v2, x:Ljava/lang/Exception;
    new-instance v3, Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could not be instantiated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
