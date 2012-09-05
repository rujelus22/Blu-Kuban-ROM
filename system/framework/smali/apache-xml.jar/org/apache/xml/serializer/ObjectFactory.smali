.class Lorg/apache/xml/serializer/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
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
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .line 76
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 626
    return-void
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "factoryId"
    .parameter "fallbackClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/xml/serializer/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

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
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p0, p1, p2}, Lorg/apache/xml/serializer/ObjectFactory;->lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 136
    .local v0, factoryClass:Ljava/lang/Class;
    if-nez v0, :cond_26

    .line 137
    new-instance v3, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

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

    invoke-direct {v3, v4, v5}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 142
    :cond_26
    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 143
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

    invoke-static {v3}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_41

    .line 144
    return-object v1

    .line 145
    .end local v1           #instance:Ljava/lang/Object;
    :catch_41
    move-exception v2

    .line 146
    .local v2, x:Ljava/lang/Exception;
    new-instance v3, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

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

    invoke-direct {v3, v4, v2}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .registers 1
    .parameter "msg"

    .prologue
    .line 386
    return-void
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    move-result-object v3

    .line 399
    .local v3, ss:Lorg/apache/xml/serializer/SecuritySupport;
    invoke-virtual {v3}, Lorg/apache/xml/serializer/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 400
    .local v1, context:Ljava/lang/ClassLoader;
    invoke-virtual {v3}, Lorg/apache/xml/serializer/SecuritySupport;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 402
    .local v4, system:Ljava/lang/ClassLoader;
    move-object v0, v4

    .line 404
    .local v0, chain:Ljava/lang/ClassLoader;
    :goto_d
    if-ne v1, v0, :cond_22

    .line 413
    const-class v5, Lorg/apache/xml/serializer/ObjectFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 415
    .local v2, current:Ljava/lang/ClassLoader;
    move-object v0, v4

    .line 417
    :goto_16
    if-ne v2, v0, :cond_19

    .line 445
    .end local v2           #current:Ljava/lang/ClassLoader;
    .end local v4           #system:Ljava/lang/ClassLoader;
    :goto_18
    return-object v4

    .line 422
    .restart local v2       #current:Ljava/lang/ClassLoader;
    .restart local v4       #system:Ljava/lang/ClassLoader;
    :cond_19
    if-nez v0, :cond_1d

    move-object v4, v2

    .line 430
    goto :goto_18

    .line 425
    :cond_1d
    invoke-virtual {v3, v0}, Lorg/apache/xml/serializer/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_16

    .line 433
    .end local v2           #current:Ljava/lang/ClassLoader;
    :cond_22
    if-nez v0, :cond_26

    move-object v4, v1

    .line 445
    goto :goto_18

    .line 440
    :cond_26
    invoke-virtual {v3, v0}, Lorg/apache/xml/serializer/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_d
.end method

.method private static findJarServiceProviderName(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "factoryId"

    .prologue
    const/4 v9, 0x0

    .line 536
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    move-result-object v7

    .line 537
    .local v7, ss:Lorg/apache/xml/serializer/SecuritySupport;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "META-INF/services/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 538
    .local v6, serviceId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 541
    .local v4, is:Ljava/io/InputStream;
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 543
    .local v0, cl:Ljava/lang/ClassLoader;
    invoke-virtual {v7, v0, v6}, Lorg/apache/xml/serializer/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 546
    if-nez v4, :cond_30

    .line 547
    const-class v10, Lorg/apache/xml/serializer/ObjectFactory;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 548
    .local v1, current:Ljava/lang/ClassLoader;
    if-eq v0, v1, :cond_30

    .line 549
    move-object v0, v1

    .line 550
    invoke-virtual {v7, v0, v6}, Lorg/apache/xml/serializer/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 554
    .end local v1           #current:Ljava/lang/ClassLoader;
    :cond_30
    if-nez v4, :cond_34

    move-object v3, v9

    .line 616
    :goto_33
    return-object v3

    .line 559
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

    invoke-static {v10}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 580
    :try_start_54
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v10, v4, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_60
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_54 .. :try_end_60} :catch_89

    .line 585
    .local v5, rd:Ljava/io/BufferedReader;
    :goto_60
    const/4 v3, 0x0

    .line 589
    .local v3, factoryClassName:Ljava/lang/String;
    :try_start_61
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_9b
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_95

    move-result-object v3

    .line 597
    :try_start_65
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_a2

    .line 603
    :goto_68
    if-eqz v3, :cond_a0

    const-string v10, ""

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a0

    .line 605
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "found in resource, value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_33

    .line 581
    .end local v3           #factoryClassName:Ljava/lang/String;
    .end local v5           #rd:Ljava/io/BufferedReader;
    :catch_89
    move-exception v2

    .line 582
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v5       #rd:Ljava/io/BufferedReader;
    goto :goto_60

    .line 590
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v3       #factoryClassName:Ljava/lang/String;
    :catch_95
    move-exception v8

    .line 597
    .local v8, x:Ljava/io/IOException;
    :try_start_96
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_a4

    :goto_99
    move-object v3, v9

    .line 600
    goto :goto_33

    .line 595
    .end local v8           #x:Ljava/io/IOException;
    :catchall_9b
    move-exception v9

    .line 597
    :try_start_9c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a6

    .line 600
    :goto_9f
    throw v9

    :cond_a0
    move-object v3, v9

    .line 616
    goto :goto_33

    .line 600
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
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 481
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    .line 483
    .local v5, security:Ljava/lang/SecurityManager;
    if-eqz v5, :cond_18

    .line 484
    :try_start_6
    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 485
    .local v2, lastDot:I
    move-object v3, p0

    .line 486
    .local v3, packageName:Ljava/lang/String;
    const/4 v7, -0x1

    if-eq v2, v7, :cond_15

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 487
    :cond_15
    invoke-virtual {v5, v3}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_18} :catch_1f

    .line 494
    .end local v2           #lastDot:I
    .end local v3           #packageName:Ljava/lang/String;
    :cond_18
    if-nez p1, :cond_21

    .line 504
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 526
    .local v4, providerClass:Ljava/lang/Class;
    :goto_1e
    return-object v4

    .line 489
    .end local v4           #providerClass:Ljava/lang/Class;
    :catch_1f
    move-exception v1

    .line 490
    .local v1, e:Ljava/lang/SecurityException;
    throw v1

    .line 507
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_21
    :try_start_21
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_24} :catch_26

    move-result-object v4

    .restart local v4       #providerClass:Ljava/lang/Class;
    goto :goto_1e

    .line 508
    .end local v4           #providerClass:Ljava/lang/Class;
    :catch_26
    move-exception v6

    .line 509
    .local v6, x:Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_3f

    .line 511
    const-class v7, Lorg/apache/xml/serializer/ObjectFactory;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 512
    .local v0, current:Ljava/lang/ClassLoader;
    if-nez v0, :cond_36

    .line 513
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .restart local v4       #providerClass:Ljava/lang/Class;
    goto :goto_1e

    .line 514
    .end local v4           #providerClass:Ljava/lang/Class;
    :cond_36
    if-eq p1, v0, :cond_3e

    .line 515
    move-object p1, v0

    .line 516
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .restart local v4       #providerClass:Ljava/lang/Class;
    goto :goto_1e

    .line 518
    .end local v4           #providerClass:Ljava/lang/Class;
    :cond_3e
    throw v6

    .line 521
    .end local v0           #current:Ljava/lang/ClassLoader;
    :cond_3f
    throw v6
.end method

.method static lookUpFactoryClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .parameter "factoryId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-static {p0, v0, v0}, Lorg/apache/xml/serializer/ObjectFactory;->lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

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
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {p0, p1, p2}, Lorg/apache/xml/serializer/ObjectFactory;->lookUpFactoryClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, factoryClassName:Ljava/lang/String;
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 212
    .local v0, cl:Ljava/lang/ClassLoader;
    if-nez v1, :cond_b

    .line 213
    move-object v1, p2

    .line 218
    :cond_b
    const/4 v4, 0x1

    :try_start_c
    invoke-static {v1, v0, v4}, Lorg/apache/xml/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    .line 221
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

    invoke-static {v4}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_30} :catch_31
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_51

    .line 223
    return-object v2

    .line 224
    .end local v2           #providerClass:Ljava/lang/Class;
    :catch_31
    move-exception v3

    .line 225
    .local v3, x:Ljava/lang/ClassNotFoundException;
    new-instance v4, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

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

    invoke-direct {v4, v5, v3}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 227
    .end local v3           #x:Ljava/lang/ClassNotFoundException;
    :catch_51
    move-exception v3

    .line 228
    .local v3, x:Ljava/lang/Exception;
    new-instance v4, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

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

    invoke-direct {v4, v5, v3}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method static lookUpFactoryClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 22
    .parameter "factoryId"
    .parameter "propertiesFilename"
    .parameter "fallbackClassName"

    .prologue
    .line 260
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    move-result-object v10

    .line 264
    .local v10, ss:Lorg/apache/xml/serializer/SecuritySupport;
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lorg/apache/xml/serializer/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 265
    .local v11, systemProp:Ljava/lang/String;
    if-eqz v11, :cond_24

    .line 266
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "found system property, value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_22} :catch_23

    .line 374
    .end local v11           #systemProp:Ljava/lang/String;
    :goto_22
    return-object v11

    .line 269
    :catch_23
    move-exception v13

    .line 275
    :cond_24
    const/4 v2, 0x0

    .line 278
    .local v2, factoryClassName:Ljava/lang/String;
    if-nez p1, :cond_fe

    .line 279
    const/4 v6, 0x0

    .line 280
    .local v6, propertiesFile:Ljava/io/File;
    const/4 v8, 0x0

    .line 282
    .local v8, propertiesFileExists:Z
    :try_start_29
    const-string v13, "java.home"

    invoke-virtual {v10, v13}, Lorg/apache/xml/serializer/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 283
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

    .line 285
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_5b} :catch_c7

    .line 286
    .end local v6           #propertiesFile:Ljava/io/File;
    .local v7, propertiesFile:Ljava/io/File;
    :try_start_5b
    invoke-virtual {v10, v7}, Lorg/apache/xml/serializer/SecuritySupport;->getFileExists(Ljava/io/File;)Z
    :try_end_5e
    .catch Ljava/lang/SecurityException; {:try_start_5b .. :try_end_5e} :catch_13f

    move-result v8

    move-object v6, v7

    .line 293
    .end local v4           #javah:Ljava/lang/String;
    .end local v7           #propertiesFile:Ljava/io/File;
    .restart local v6       #propertiesFile:Ljava/io/File;
    :goto_60
    const-class v14, Lorg/apache/xml/serializer/ObjectFactory;

    monitor-enter v14

    .line 294
    const/4 v5, 0x0

    .line 295
    .local v5, loadProperties:Z
    const/4 v3, 0x0

    .line 298
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_65
    sget-wide v15, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    const-wide/16 v17, 0x0

    cmp-long v13, v15, v17

    if-ltz v13, :cond_ea

    .line 299
    if-eqz v8, :cond_d0

    sget-wide v15, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    invoke-virtual {v10, v6}, Lorg/apache/xml/serializer/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v17

    sput-wide v17, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    cmp-long v13, v15, v17

    if-gez v13, :cond_d0

    .line 301
    const/4 v5, 0x1

    .line 316
    :cond_7c
    :goto_7c
    if-eqz v5, :cond_8e

    .line 319
    new-instance v13, Ljava/util/Properties;

    invoke-direct {v13}, Ljava/util/Properties;-><init>()V

    sput-object v13, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .line 320
    invoke-virtual {v10, v6}, Lorg/apache/xml/serializer/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 321
    sget-object v13, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    invoke-virtual {v13, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_8e
    .catchall {:try_start_65 .. :try_end_8e} :catchall_f4
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_8e} :catch_da

    .line 332
    :cond_8e
    if-eqz v3, :cond_93

    .line 334
    :try_start_90
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_fb
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_138

    .line 340
    :cond_93
    :goto_93
    :try_start_93
    monitor-exit v14
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_fb

    .line 341
    sget-object v13, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    if-eqz v13, :cond_a0

    .line 342
    sget-object v13, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .end local v5           #loadProperties:Z
    .end local v6           #propertiesFile:Ljava/io/File;
    .end local v8           #propertiesFileExists:Z
    :cond_a0
    :goto_a0
    if-eqz v2, :cond_132

    .line 368
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

    invoke-static {v13}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    move-object v11, v2

    .line 370
    goto/16 :goto_22

    .line 287
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v6       #propertiesFile:Ljava/io/File;
    .restart local v8       #propertiesFileExists:Z
    :catch_c7
    move-exception v1

    .line 289
    .local v1, e:Ljava/lang/SecurityException;
    :goto_c8
    const-wide/16 v13, -0x1

    sput-wide v13, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    .line 290
    const/4 v13, 0x0

    sput-object v13, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    goto :goto_60

    .line 304
    .end local v1           #e:Ljava/lang/SecurityException;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #loadProperties:Z
    :cond_d0
    if-nez v8, :cond_7c

    .line 305
    const-wide/16 v15, -0x1

    :try_start_d4
    sput-wide v15, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    .line 306
    const/4 v13, 0x0

    sput-object v13, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;
    :try_end_d9
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_f4
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d9} :catch_da

    goto :goto_7c

    .line 323
    :catch_da
    move-exception v12

    .line 324
    .local v12, x:Ljava/lang/Exception;
    const/4 v13, 0x0

    :try_start_dc
    sput-object v13, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .line 325
    const-wide/16 v15, -0x1

    sput-wide v15, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J
    :try_end_e2
    .catchall {:try_start_dc .. :try_end_e2} :catchall_f4

    .line 332
    if-eqz v3, :cond_93

    .line 334
    :try_start_e4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_fb
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8

    goto :goto_93

    .line 337
    :catch_e8
    move-exception v13

    goto :goto_93

    .line 311
    .end local v12           #x:Ljava/lang/Exception;
    :cond_ea
    if-eqz v8, :cond_7c

    .line 312
    const/4 v5, 0x1

    .line 313
    :try_start_ed
    invoke-virtual {v10, v6}, Lorg/apache/xml/serializer/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v15

    sput-wide v15, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J
    :try_end_f3
    .catchall {:try_start_ed .. :try_end_f3} :catchall_f4
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f3} :catch_da

    goto :goto_7c

    .line 332
    :catchall_f4
    move-exception v13

    if-eqz v3, :cond_fa

    .line 334
    :try_start_f7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_fb
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_13b

    .line 337
    :cond_fa
    :goto_fa
    :try_start_fa
    throw v13

    .line 340
    :catchall_fb
    move-exception v13

    monitor-exit v14
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_fb

    throw v13

    .line 345
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #loadProperties:Z
    .end local v6           #propertiesFile:Ljava/io/File;
    .end local v8           #propertiesFileExists:Z
    :cond_fe
    const/4 v3, 0x0

    .line 347
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :try_start_ff
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Lorg/apache/xml/serializer/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 348
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 349
    .local v9, props:Ljava/util/Properties;
    invoke-virtual {v9, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 350
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_117
    .catchall {:try_start_ff .. :try_end_117} :catchall_12b
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_117} :catch_120

    move-result-object v2

    .line 358
    if-eqz v3, :cond_a0

    .line 360
    :try_start_11a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_11e

    goto :goto_a0

    .line 363
    :catch_11e
    move-exception v13

    goto :goto_a0

    .line 351
    .end local v9           #props:Ljava/util/Properties;
    :catch_120
    move-exception v13

    .line 358
    if-eqz v3, :cond_a0

    .line 360
    :try_start_123
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_128

    goto/16 :goto_a0

    .line 363
    :catch_128
    move-exception v13

    goto/16 :goto_a0

    .line 358
    :catchall_12b
    move-exception v13

    if-eqz v3, :cond_131

    .line 360
    :try_start_12e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_13d

    .line 363
    :cond_131
    :goto_131
    throw v13

    .line 374
    :cond_132
    invoke-static/range {p0 .. p0}, Lorg/apache/xml/serializer/ObjectFactory;->findJarServiceProviderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_22

    .line 337
    .restart local v5       #loadProperties:Z
    .restart local v6       #propertiesFile:Ljava/io/File;
    .restart local v8       #propertiesFileExists:Z
    :catch_138
    move-exception v13

    goto/16 :goto_93

    :catch_13b
    move-exception v15

    goto :goto_fa

    .line 363
    .end local v5           #loadProperties:Z
    .end local v6           #propertiesFile:Ljava/io/File;
    .end local v8           #propertiesFileExists:Z
    :catch_13d
    move-exception v14

    goto :goto_131

    .line 287
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
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 457
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xml/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 458
    .local v1, providerClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 459
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

    invoke-static {v3}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_28} :catch_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_49

    .line 461
    return-object v0

    .line 462
    .end local v0           #instance:Ljava/lang/Object;
    .end local v1           #providerClass:Ljava/lang/Class;
    :catch_29
    move-exception v2

    .line 463
    .local v2, x:Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

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

    invoke-direct {v3, v4, v2}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 465
    .end local v2           #x:Ljava/lang/ClassNotFoundException;
    :catch_49
    move-exception v2

    .line 466
    .local v2, x:Ljava/lang/Exception;
    new-instance v3, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

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

    invoke-direct {v3, v4, v2}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
