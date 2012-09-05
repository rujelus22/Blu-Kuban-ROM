.class public final Ljava/security/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Security$1;,
        Ljava/security/Security$SecurityDoor;
    }
.end annotation


# static fields
.field private static final secprops:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 44
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    sput-object v4, Ljava/security/Security;->secprops:Ljava/util/Properties;

    .line 51
    const/4 v3, 0x0

    .line 53
    .local v3, loaded:Z
    :try_start_8
    const-class v4, Ljava/security/Security;

    const-string v5, "security.properties"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 54
    .local v0, configStream:Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    .local v2, input:Ljava/io/InputStream;
    sget-object v4, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 56
    const/4 v3, 0x1

    .line 57
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_2c

    .line 61
    .end local v0           #configStream:Ljava/io/InputStream;
    .end local v2           #input:Ljava/io/InputStream;
    :goto_1e
    if-nez v3, :cond_23

    .line 62
    invoke-static {}, Ljava/security/Security;->registerDefaultProviders()V

    .line 64
    :cond_23
    new-instance v4, Ljava/security/Security$SecurityDoor;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/security/Security$SecurityDoor;-><init>(Ljava/security/Security$1;)V

    sput-object v4, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    .line 65
    return-void

    .line 58
    :catch_2c
    move-exception v1

    .line 59
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "Could not load \'security.properties\'"

    invoke-static {v4, v1}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 41
    invoke-static {}, Ljava/security/Security;->renumProviders()V

    return-void
.end method

.method public static addProvider(Ljava/security/Provider;)I
    .registers 2
    .parameter "provider"

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v0

    return v0
.end method

.method public static getAlgorithmProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "algName"
    .parameter "propName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 95
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 108
    :cond_5
    :goto_5
    return-object v8

    .line 98
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Alg."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, prop:Ljava/lang/String;
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v7

    .line 100
    .local v7, providers:[Ljava/security/Provider;
    move-object v0, v7

    .local v0, arr$:[Ljava/security/Provider;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2a
    if-ge v2, v3, :cond_5

    aget-object v6, v0, v2

    .line 101
    .local v6, provider:Ljava/security/Provider;
    invoke-virtual {v6}, Ljava/security/Provider;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, e:Ljava/util/Enumeration;
    :cond_32
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 102
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 103
    .local v5, propertyName:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 104
    invoke-virtual {v6, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 100
    .end local v5           #propertyName:Ljava/lang/String;
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a
.end method

.method public static getAlgorithms(Ljava/lang/String;)Ljava/util/Set;
    .registers 9
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 370
    .local v5, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p0, :cond_8

    .line 380
    :cond_7
    return-object v5

    .line 373
    :cond_8
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    .local v0, arr$:[Ljava/security/Provider;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .local v2, i$:I
    :goto_f
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 374
    .local v4, provider:Ljava/security/Provider;
    invoke-virtual {v4}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2           #i$:I
    .local v1, i$:Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider$Service;

    .line 375
    .local v6, service:Ljava/security/Provider$Service;
    invoke-virtual {v6}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 376
    invoke-virtual {v6}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 373
    .end local v6           #service:Ljava/security/Provider$Service;
    :cond_39
    add-int/lit8 v1, v2, 0x1

    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .restart local v2       #i$:I
    goto :goto_f
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 338
    if-nez p0, :cond_a

    .line 339
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_a
    sget-object v1, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, property:Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 343
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 345
    :cond_16
    return-object v0
.end method

.method public static declared-synchronized getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 3
    .parameter "name"

    .prologue
    .line 202
    const-class v0, Ljava/security/Security;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lorg/apache/harmony/security/fortress/Services;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getProviders()[Ljava/security/Provider;
    .registers 2

    .prologue
    .line 189
    const-class v0, Ljava/security/Security;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()[Ljava/security/Provider;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getProviders(Ljava/lang/String;)[Ljava/security/Provider;
    .registers 5
    .parameter "filter"

    .prologue
    .line 229
    if-nez p0, :cond_8

    .line 230
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 232
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    .line 233
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 235
    :cond_14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 236
    .local v0, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 237
    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_29

    if-nez v1, :cond_2f

    .line 238
    :cond_29
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 240
    :cond_2f
    const/4 v2, 0x1

    if-ge v1, v2, :cond_3c

    .line 241
    const-string v2, ""

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :goto_37
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/util/Map;)[Ljava/security/Provider;

    move-result-object v2

    return-object v2

    .line 243
    :cond_3c
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37
.end method

.method public static declared-synchronized getProviders(Ljava/util/Map;)[Ljava/security/Provider;
    .registers 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/security/Provider;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, filter:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v15, Ljava/security/Security;

    monitor-enter v15

    if-nez p0, :cond_e

    .line 274
    :try_start_5
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    .line 273
    :catchall_b
    move-exception v14

    monitor-exit v15

    throw v14

    .line 276
    :cond_e
    :try_start_e
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->isEmpty()Z
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_b

    move-result v14

    if-eqz v14, :cond_17

    .line 277
    const/4 v14, 0x0

    .line 327
    :goto_15
    monitor-exit v15

    return-object v14

    .line 279
    :cond_17
    :try_start_17
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProvidersList()Ljava/util/List;

    move-result-object v11

    .line 280
    .local v11, result:Ljava/util/List;,"Ljava/util/List<Ljava/security/Provider;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 282
    .local v9, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_23
    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c2

    .line 283
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 284
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 285
    .local v8, key:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 286
    .local v13, val:Ljava/lang/String;
    const/4 v1, 0x0

    .line 287
    .local v1, attribute:Ljava/lang/String;
    const/16 v14, 0x20

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 288
    .local v4, i:I
    const/16 v14, 0x2e

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 289
    .local v6, j:I
    const/4 v14, -0x1

    if-ne v6, v14, :cond_51

    .line 290
    new-instance v14, Ljava/security/InvalidParameterException;

    invoke-direct {v14}, Ljava/security/InvalidParameterException;-><init>()V

    throw v14

    .line 292
    :cond_51
    const/4 v14, -0x1

    if-ne v4, v14, :cond_60

    .line 293
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_87

    .line 294
    new-instance v14, Ljava/security/InvalidParameterException;

    invoke-direct {v14}, Ljava/security/InvalidParameterException;-><init>()V

    throw v14

    .line 297
    :cond_60
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_6c

    .line 298
    new-instance v14, Ljava/security/InvalidParameterException;

    invoke-direct {v14}, Ljava/security/InvalidParameterException;-><init>()V

    throw v14

    .line 300
    :cond_6c
    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_82

    .line 302
    new-instance v14, Ljava/security/InvalidParameterException;

    invoke-direct {v14}, Ljava/security/InvalidParameterException;-><init>()V

    throw v14

    .line 304
    :cond_82
    const/4 v14, 0x0

    invoke-virtual {v8, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 306
    :cond_87
    const/4 v14, 0x0

    invoke-virtual {v8, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 307
    .local v12, serv:Ljava/lang/String;
    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, alg:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_9e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_a4

    .line 309
    :cond_9e
    new-instance v14, Ljava/security/InvalidParameterException;

    invoke-direct {v14}, Ljava/security/InvalidParameterException;-><init>()V

    throw v14

    .line 312
    :cond_a4
    const/4 v7, 0x0

    .local v7, k:I
    :goto_a5
    invoke-interface {v11}, Ljava/util/List;->size()I
    :try_end_a8
    .catchall {:try_start_17 .. :try_end_a8} :catchall_b

    move-result v14

    if-ge v7, v14, :cond_23

    .line 314
    :try_start_ab
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/Provider;
    :try_end_b1
    .catchall {:try_start_ab .. :try_end_b1} :catchall_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ab .. :try_end_b1} :catch_bf

    .line 318
    .local v10, p:Ljava/security/Provider;
    :try_start_b1
    invoke-virtual {v10, v12, v0, v1, v13}, Ljava/security/Provider;->implementsAlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_bc

    .line 319
    invoke-interface {v11, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v7, v7, -0x1

    .line 312
    :cond_bc
    add-int/lit8 v7, v7, 0x1

    goto :goto_a5

    .line 315
    .end local v10           #p:Ljava/security/Provider;
    :catch_bf
    move-exception v2

    .line 316
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_23

    .line 324
    .end local v0           #alg:Ljava/lang/String;
    .end local v1           #attribute:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v7           #k:I
    .end local v8           #key:Ljava/lang/String;
    .end local v12           #serv:Ljava/lang/String;
    .end local v13           #val:Ljava/lang/String;
    :cond_c2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_d6

    .line 325
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/security/Provider;

    invoke-interface {v11, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/security/Provider;
    :try_end_d4
    .catchall {:try_start_b1 .. :try_end_d4} :catchall_b

    goto/16 :goto_15

    .line 327
    :cond_d6
    const/4 v14, 0x0

    goto/16 :goto_15
.end method

.method public static declared-synchronized insertProviderAt(Ljava/security/Provider;I)I
    .registers 5
    .parameter "provider"
    .parameter "position"

    .prologue
    .line 129
    const-class v2, Ljava/security/Security;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_18

    move-result-object v1

    if-eqz v1, :cond_10

    .line 130
    const/4 v0, -0x1

    .line 134
    :goto_e
    monitor-exit v2

    return v0

    .line 132
    :cond_10
    :try_start_10
    invoke-static {p0, p1}, Lorg/apache/harmony/security/fortress/Services;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v0

    .line 133
    .local v0, result:I
    invoke-static {}, Ljava/security/Security;->renumProviders()V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    goto :goto_e

    .line 129
    .end local v0           #result:I
    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static registerDefaultProviders()V
    .registers 3

    .prologue
    .line 75
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.1"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.2"

    const-string v2, "org.apache.harmony.security.provider.cert.DRLCertFactory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.3"

    const-string v2, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.4"

    const-string v2, "org.apache.harmony.security.provider.crypto.CryptoProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.5"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.JSSEProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public static declared-synchronized removeProvider(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 170
    const-class v2, Ljava/security/Security;

    monitor-enter v2

    if-eqz p0, :cond_b

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_22

    move-result v1

    if-nez v1, :cond_d

    .line 180
    :cond_b
    :goto_b
    monitor-exit v2

    return-void

    .line 173
    :cond_d
    :try_start_d
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 174
    .local v0, p:Ljava/security/Provider;
    if-eqz v0, :cond_b

    .line 177
    invoke-virtual {v0}, Ljava/security/Provider;->getProviderNumber()I

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->removeProvider(I)V

    .line 178
    invoke-static {}, Ljava/security/Security;->renumProviders()V

    .line 179
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/security/Provider;->setProviderNumber(I)V
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_22

    goto :goto_b

    .line 170
    .end local v0           #p:Ljava/security/Provider;
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static renumProviders()V
    .registers 4

    .prologue
    .line 389
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    .line 390
    .local v1, p:[Ljava/security/Provider;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 391
    aget-object v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/security/Provider;->setProviderNumber(I)V

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 393
    :cond_12
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 352
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    return-void
.end method
