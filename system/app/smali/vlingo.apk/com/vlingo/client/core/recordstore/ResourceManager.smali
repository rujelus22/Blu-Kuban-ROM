.class public abstract Lcom/vlingo/client/core/recordstore/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static loaded:Z

.field private static final resourceHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/recordstore/Resource;",
            ">;>;"
        }
    .end annotation
.end field

.field private static rs_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string v0, "vlingoVoicePadRS"

    sput-object v0, Lcom/vlingo/client/core/recordstore/ResourceManager;->rs_name:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/vlingo/client/core/recordstore/ResourceManager;->resourceHash:Ljava/util/Hashtable;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vlingo/client/core/recordstore/ResourceManager;->loaded:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addRecord(Lcom/vlingo/client/core/recordstore/Resource;)I
    .registers 7
    .parameter "resource"

    .prologue
    .line 84
    const/4 v3, 0x0

    .line 85
    .local v3, rs:Ljavax/microedition/rms/RecordStore;
    const/4 v2, -0x1

    .line 86
    .local v2, returnVal:I
    const/4 v0, 0x0

    .line 89
    .local v0, data:[B
    :try_start_3
    sget-object v4, Lcom/vlingo/client/core/recordstore/ResourceManager;->rs_name:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v3

    .line 90
    invoke-virtual {p0}, Lcom/vlingo/client/core/recordstore/Resource;->convertToData()[B

    move-result-object v0

    .line 91
    if-eqz v0, :cond_16

    .line 92
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Ljavax/microedition/rms/RecordStore;->addRecord([BII)I
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3a
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_3 .. :try_end_15} :catch_26

    move-result v2

    .line 97
    :cond_16
    if-eqz v3, :cond_1b

    .line 99
    :try_start_18
    invoke-virtual {v3}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_1b
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_18 .. :try_end_1b} :catch_21

    .line 107
    :cond_1b
    :goto_1b
    return v2

    .line 100
    :catch_1c
    move-exception v1

    .line 101
    .local v1, ex:Ljavax/microedition/rms/RecordStoreNotOpenException;
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;->printStackTrace()V

    goto :goto_1b

    .line 102
    .end local v1           #ex:Ljavax/microedition/rms/RecordStoreNotOpenException;
    :catch_21
    move-exception v1

    .line 103
    .local v1, ex:Ljavax/microedition/rms/RecordStoreException;
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V

    goto :goto_1b

    .line 94
    .end local v1           #ex:Ljavax/microedition/rms/RecordStoreException;
    :catch_26
    move-exception v1

    .line 95
    .restart local v1       #ex:Ljavax/microedition/rms/RecordStoreException;
    :try_start_27
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3a

    .line 97
    if-eqz v3, :cond_1b

    .line 99
    :try_start_2c
    invoke-virtual {v3}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_2f
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_2c .. :try_end_2f} :catch_30
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_2c .. :try_end_2f} :catch_35

    goto :goto_1b

    .line 100
    :catch_30
    move-exception v1

    .line 101
    .local v1, ex:Ljavax/microedition/rms/RecordStoreNotOpenException;
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;->printStackTrace()V

    goto :goto_1b

    .line 102
    .local v1, ex:Ljavax/microedition/rms/RecordStoreException;
    :catch_35
    move-exception v1

    .line 103
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V

    goto :goto_1b

    .line 97
    .end local v1           #ex:Ljavax/microedition/rms/RecordStoreException;
    :catchall_3a
    move-exception v4

    if-eqz v3, :cond_40

    .line 99
    :try_start_3d
    invoke-virtual {v3}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_40
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_3d .. :try_end_40} :catch_41
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_3d .. :try_end_40} :catch_46

    .line 104
    :cond_40
    :goto_40
    throw v4

    .line 100
    :catch_41
    move-exception v1

    .line 101
    .local v1, ex:Ljavax/microedition/rms/RecordStoreNotOpenException;
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;->printStackTrace()V

    goto :goto_40

    .line 102
    .end local v1           #ex:Ljavax/microedition/rms/RecordStoreNotOpenException;
    :catch_46
    move-exception v1

    .line 103
    .local v1, ex:Ljavax/microedition/rms/RecordStoreException;
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V

    goto :goto_40
.end method

.method public static clear()V
    .registers 3

    .prologue
    .line 232
    sget-object v2, Lcom/vlingo/client/core/recordstore/ResourceManager;->resourceHash:Ljava/util/Hashtable;

    monitor-enter v2

    .line 234
    :try_start_3
    sget-object v1, Lcom/vlingo/client/core/recordstore/ResourceManager;->resourceHash:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 235
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 238
    :try_start_9
    sget-object v1, Lcom/vlingo/client/core/recordstore/ResourceManager;->rs_name:Ljava/lang/String;

    invoke-static {v1}, Ljavax/microedition/rms/RecordStore;->deleteRecordStore(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_12

    .line 242
    .local v0, e:Ljava/lang/Exception;
    :goto_e
    return-void

    .line 235
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1

    .line 239
    :catch_12
    move-exception v0

    .line 240
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public static clearDomain(Ljava/lang/String;)V
    .registers 3
    .parameter "domain"

    .prologue
    .line 218
    if-nez p0, :cond_3

    .line 228
    :goto_2
    return-void

    .line 222
    :cond_3
    sget-object v1, Lcom/vlingo/client/core/recordstore/ResourceManager;->resourceHash:Ljava/util/Hashtable;

    monitor-enter v1

    .line 223
    :try_start_6
    sget-object v0, Lcom/vlingo/client/core/recordstore/ResourceManager;->resourceHash:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 225
    sget-object v0, Lcom/vlingo/client/core/recordstore/ResourceManager;->resourceHash:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_13
    monitor-exit v1

    goto :goto_2

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private static deleteRecordId(I)V
    .registers 5
    .parameter "recordId"

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 114
    .local v1, rs:Ljavax/microedition/rms/RecordStore;
    :try_start_1
    sget-object v2, Lcom/vlingo/client/core/recordstore/ResourceManager;->rs_name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    .line 115
    invoke-virtual {v1, p0}, Ljavax/microedition/rms/RecordStore;->deleteRecord(I)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2f
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_1 .. :try_end_b} :catch_1b

    .line 119
    if-eqz v1, :cond_10

    .line 121
    :try_start_d
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_10
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_d .. :try_end_10} :catch_11
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_d .. :try_end_10} :catch_16

    .line 129
    :cond_10
    :goto_10
    return-void

    .line 122
    :catch_11
    move-exception v0

    .line 123
    .local v0, ex:Ljavax/microedition/rms/RecordStoreNotOpenException;
    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStoreNotOpenException;->printStackTrace()V

    goto :goto_10

    .line 124
    .end local v0           #ex:Ljavax/microedition/rms/RecordStoreNotOpenException;
    :catch_16
    move-exception v0

    .line 125
    .local v0, ex:Ljavax/microedition/rms/RecordStoreException;
    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V

    goto :goto_10

    .line 116
    .end local v0           #ex:Ljavax/microedition/rms/RecordStoreException;
    :catch_1b
    move-exception v0

    .line 117
    .restart local v0       #ex:Ljavax/microedition/rms/RecordStoreException;
    :try_start_1c
    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2f

    .line 119
    if-eqz v1, :cond_10

    .line 121
    :try_start_21
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_24
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_21 .. :try_end_24} :catch_25
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_21 .. :try_end_24} :catch_2a

    goto :goto_10

    .line 122
    :catch_25
    move-exception v0

    .line 123
    .local v0, ex:Ljavax/microedition/rms/RecordStoreNotOpenException;
    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStoreNotOpenException;->printStackTrace()V

    goto :goto_10

    .line 124
    .local v0, ex:Ljavax/microedition/rms/RecordStoreException;
    :catch_2a
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V

    goto :goto_10

    .line 119
    .end local v0           #ex:Ljavax/microedition/rms/RecordStoreException;
    :catchall_2f
    move-exception v2

    if-eqz v1, :cond_35

    .line 121
    :try_start_32
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_35
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_32 .. :try_end_35} :catch_36
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_32 .. :try_end_35} :catch_3b

    .line 126
    :cond_35
    :goto_35
    throw v2

    .line 122
    :catch_36
    move-exception v0

    .line 123
    .local v0, ex:Ljavax/microedition/rms/RecordStoreNotOpenException;
    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStoreNotOpenException;->printStackTrace()V

    goto :goto_35

    .line 124
    .end local v0           #ex:Ljavax/microedition/rms/RecordStoreNotOpenException;
    :catch_3b
    move-exception v0

    .line 125
    .local v0, ex:Ljavax/microedition/rms/RecordStoreException;
    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V

    goto :goto_35
.end method

.method public static getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4
    .parameter "domainAndName"

    .prologue
    .line 284
    invoke-static {p0}, Lcom/vlingo/client/core/recordstore/ResourceManager;->parseDomainAndName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, dn:[Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 286
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Lcom/vlingo/client/core/recordstore/ResourceManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 288
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5
    .parameter "domain"
    .parameter "name"

    .prologue
    .line 293
    invoke-static {p0, p1}, Lcom/vlingo/client/core/recordstore/ResourceManager;->getResource(Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/recordstore/Resource;

    move-result-object v0

    .line 294
    .local v0, resource:Lcom/vlingo/client/core/recordstore/Resource;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/vlingo/client/core/recordstore/Resource;->getType()B

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_15

    .line 296
    invoke-virtual {v0}, Lcom/vlingo/client/core/recordstore/Resource;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 298
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .parameter "domainAndName"

    .prologue
    .line 320
    invoke-static {p0}, Lcom/vlingo/client/core/recordstore/ResourceManager;->parseDomainAndName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, dn:[Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 322
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Lcom/vlingo/client/core/recordstore/ResourceManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 324
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static getInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5
    .parameter "domain"
    .parameter "name"

    .prologue
    .line 328
    invoke-static {p0, p1}, Lcom/vlingo/client/core/recordstore/ResourceManager;->getResource(Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/recordstore/Resource;

    move-result-object v0

    .line 329
    .local v0, resource:Lcom/vlingo/client/core/recordstore/Resource;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/vlingo/client/core/recordstore/Resource;->getType()B

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_15

    .line 331
    invoke-virtual {v0}, Lcom/vlingo/client/core/recordstore/Resource;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 333
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 4
    .parameter "domainAndName"

    .prologue
    .line 337
    invoke-static {p0}, Lcom/vlingo/client/core/recordstore/ResourceManager;->parseDomainAndName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, dn:[Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 339
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Lcom/vlingo/client/core/recordstore/ResourceManager;->getLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 341
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .registers 5
    .parameter "domain"
    .parameter "name"

    .prologue
    .line 345
    invoke-static {p0, p1}, Lcom/vlingo/client/core/recordstore/ResourceManager;->getResource(Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/recordstore/Resource;

    move-result-object v0

    .line 346
    .local v0, resource:Lcom/vlingo/client/core/recordstore/Resource;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/vlingo/client/core/recordstore/Resource;->getType()B

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_15

    .line 348
    invoke-virtual {v0}, Lcom/vlingo/client/core/recordstore/Resource;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 350
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static getResource(Ljava/lang/String;)Lcom/vlingo/client/core/recordstore/Resource;
    .registers 4
    .parameter "domainAndName"

    .prologue
    .line 245
    invoke-static {p0}, Lcom/vlingo/client/core/recordstore/ResourceManager;->parseDomainAndName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, dn:[Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 247
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Lcom/vlingo/client/core/recordstore/ResourceManager;->getResource(Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/recordstore/Resource;

    move-result-object v1

    .line 249
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static getResource(Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/recordstore/Resource;
    .registers 10
    .parameter "domain"
    .parameter "name"

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 256
    .local v2, resource:Lcom/vlingo/client/core/recordstore/Resource;
    if-eqz p0, :cond_3d

    if-eqz p1, :cond_3d

    .line 257
    sget-object v6, Lcom/vlingo/client/core/recordstore/ResourceManager;->resourceHash:Ljava/util/Hashtable;

    monitor-enter v6

    .line 258
    :try_start_8
    sget-object v5, Lcom/vlingo/client/core/recordstore/ResourceManager;->resourceHash:Ljava/util/Hashtable;

    invoke-virtual {v5, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 259
    sget-object v5, Lcom/vlingo/client/core/recordstore/ResourceManager;->resourceHash:Ljava/util/Hashtable;

    invoke-virtual {v5, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 260
    .local v1, resVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/recordstore/Resource;>;"
    monitor-enter v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_44

    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    :try_start_1a
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_3b

    .line 262
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/core/recordstore/Resource;

    .line 263
    .local v3, tempResource:Lcom/vlingo/client/core/recordstore/Resource;
    invoke-virtual {v3}, Lcom/vlingo/client/core/recordstore/Resource;->getName()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, tempResourceName:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 265
    move-object v2, v3

    .line 266
    invoke-virtual {v2}, Lcom/vlingo/client/core/recordstore/Resource;->getLifetime()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_3b

    .line 267
    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 272
    .end local v3           #tempResource:Lcom/vlingo/client/core/recordstore/Resource;
    .end local v4           #tempResourceName:Ljava/lang/String;
    :cond_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_1a .. :try_end_3c} :catchall_41

    .line 274
    .end local v0           #i:I
    .end local v1           #resVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/recordstore/Resource;>;"
    :cond_3c
    :try_start_3c
    monitor-exit v6
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_44

    .line 279
    :cond_3d
    return-object v2

    .line 261
    .restart local v0       #i:I
    .restart local v1       #resVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/recordstore/Resource;>;"
    .restart local v3       #tempResource:Lcom/vlingo/client/core/recordstore/Resource;
    .restart local v4       #tempResourceName:Ljava/lang/String;
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 272
    .end local v3           #tempResource:Lcom/vlingo/client/core/recordstore/Resource;
    .end local v4           #tempResourceName:Ljava/lang/String;
    :catchall_41
    move-exception v5

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw v5

    .line 274
    .end local v0           #i:I
    .end local v1           #resVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/recordstore/Resource;>;"
    :catchall_44
    move-exception v5

    monitor-exit v6
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_44

    throw v5
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "domainAndName"

    .prologue
    .line 303
    invoke-static {p0}, Lcom/vlingo/client/core/recordstore/ResourceManager;->parseDomainAndName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, dn:[Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 305
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Lcom/vlingo/client/core/recordstore/ResourceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "domain"
    .parameter "name"

    .prologue
    .line 311
    invoke-static {p0, p1}, Lcom/vlingo/client/core/recordstore/ResourceManager;->getResource(Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/recordstore/Resource;

    move-result-object v0

    .line 312
    .local v0, resource:Lcom/vlingo/client/core/recordstore/Resource;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/vlingo/client/core/recordstore/Resource;->getType()B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_15

    .line 314
    invoke-virtual {v0}, Lcom/vlingo/client/core/recordstore/Resource;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 316
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static init(Ljava/lang/String;)V
    .registers 1
    .parameter "recordStoreName"

    .prologue
    .line 38
    sput-object p0, Lcom/vlingo/client/core/recordstore/ResourceManager;->rs_name:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static loadSavedResources()Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    .line 43
    sget-boolean v7, Lcom/vlingo/client/core/recordstore/ResourceManager;->loaded:Z

    if-eqz v7, :cond_6

    .line 78
    .local v2, foundResources:Z
    .local v6, rs:Ljavax/microedition/rms/RecordStore;
    :cond_5
    :goto_5
    return v2

    .line 46
    .end local v2           #foundResources:Z
    .end local v6           #rs:Ljavax/microedition/rms/RecordStore;
    :cond_6
    sput-boolean v2, Lcom/vlingo/client/core/recordstore/ResourceManager;->loaded:Z

    .line 48
    const/4 v2, 0x0

    .line 50
    .restart local v2       #foundResources:Z
    const/4 v6, 0x0

    .line 54
    .restart local v6       #rs:Ljavax/microedition/rms/RecordStore;
    :try_start_a
    sget-object v7, Lcom/vlingo/client/core/recordstore/ResourceManager;->rs_name:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v6

    .line 56
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Ljavax/microedition/rms/RecordStore;->enumerateRecords(Ljava/lang/Object;Ljava/lang/Object;Z)Ljavax/microedition/rms/RecordEnumeration;

    move-result-object v4

    .line 57
    .local v4, re:Ljavax/microedition/rms/RecordEnumeration;
    :goto_18
    invoke-virtual {v4}, Ljavax/microedition/rms/RecordEnumeration;->hasNextElement()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 58
    invoke-virtual {v4}, Ljavax/microedition/rms/RecordEnumeration;->nextRecordId()I

    move-result v3

    .line 59
    .local v3, rId:I
    invoke-virtual {v6, v3}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B

    move-result-object v0

    .line 60
    .local v0, data:[B
    new-instance v5, Lcom/vlingo/client/core/recordstore/Resource;

    invoke-direct {v5, v0}, Lcom/vlingo/client/core/recordstore/Resource;-><init>([B)V

    .line 63
    .local v5, res:Lcom/vlingo/client/core/recordstore/Resource;
    invoke-virtual {v5, v3}, Lcom/vlingo/client/core/recordstore/Resource;->setRecordId(I)V

    .line 64
    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/vlingo/client/core/recordstore/ResourceManager;->saveResource(Lcom/vlingo/client/core/recordstore/Resource;Z)V
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_4e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_3f

    .line 65
    const/4 v2, 0x1

    .line 66
    goto :goto_18

    .line 70
    .end local v0           #data:[B
    .end local v3           #rId:I
    .end local v5           #res:Lcom/vlingo/client/core/recordstore/Resource;
    :cond_34
    if-eqz v6, :cond_5

    .line 72
    :try_start_36
    invoke-virtual {v6}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_5

    .line 73
    :catch_3a
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 67
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #re:Ljavax/microedition/rms/RecordEnumeration;
    :catch_3f
    move-exception v1

    .line 68
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_40
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4e

    .line 70
    if-eqz v6, :cond_5

    .line 72
    :try_start_45
    invoke-virtual {v6}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_5

    .line 73
    :catch_49
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 70
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_4e
    move-exception v7

    if-eqz v6, :cond_54

    .line 72
    :try_start_51
    invoke-virtual {v6}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    .line 75
    :cond_54
    :goto_54
    throw v7

    .line 73
    :catch_55
    move-exception v1

    .line 74
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54
.end method

.method public static parseDomainAndName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "domainAndName"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 355
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 357
    .local v1, dn:[Ljava/lang/String;
    if-nez p0, :cond_9

    move-object v1, v2

    .line 376
    .end local v1           #dn:[Ljava/lang/String;
    :goto_8
    return-object v1

    .line 362
    .restart local v1       #dn:[Ljava/lang/String;
    :cond_9
    const-string v3, "#Resource:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 363
    const-string v3, "#Resource:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 367
    :cond_1b
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 368
    .local v0, colonIdx:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_2c

    :cond_2a
    move-object v1, v2

    .line 369
    goto :goto_8

    .line 372
    :cond_2c
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 373
    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_8
.end method

.method public static saveResource(Lcom/vlingo/client/core/recordstore/Resource;)V
    .registers 2
    .parameter "resource"

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vlingo/client/core/recordstore/ResourceManager;->saveResource(Lcom/vlingo/client/core/recordstore/Resource;Z)V

    .line 134
    return-void
.end method

.method public static saveResource(Lcom/vlingo/client/core/recordstore/Resource;Z)V
    .registers 17
    .parameter "res"
    .parameter "isInitial"

    .prologue
    .line 138
    const/4 v9, 0x0

    .line 139
    .local v9, resVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/recordstore/Resource;>;"
    const/4 v2, 0x0

    .line 140
    .local v2, addVectorToHash:Z
    const/4 v1, 0x1

    .line 143
    .local v1, addResourceToVector:Z
    if-nez p0, :cond_6

    .line 214
    :goto_5
    return-void

    .line 149
    :cond_6
    sget-object v13, Lcom/vlingo/client/core/recordstore/ResourceManager;->resourceHash:Ljava/util/Hashtable;

    monitor-enter v13

    .line 151
    :try_start_9
    sget-object v12, Lcom/vlingo/client/core/recordstore/ResourceManager;->resourceHash:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/vlingo/client/core/recordstore/Resource;->getDomain()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_79

    .line 152
    sget-object v12, Lcom/vlingo/client/core/recordstore/ResourceManager;->resourceHash:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/vlingo/client/core/recordstore/Resource;->getDomain()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 154
    .local v4, o:Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Ljava/util/Vector;

    move-object v11, v0

    .line 155
    .local v11, t:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/recordstore/Resource;>;"
    move-object v9, v11

    .line 161
    .end local v4           #o:Ljava/lang/Object;
    .end local v11           #t:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/recordstore/Resource;>;"
    :goto_24
    monitor-enter v9
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_76

    .line 163
    const/4 v3, 0x0

    .local v3, i:I
    :goto_26
    :try_start_26
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v3, v12, :cond_51

    .line 164
    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vlingo/client/core/recordstore/Resource;

    .line 165
    .local v7, resTmp:Lcom/vlingo/client/core/recordstore/Resource;
    invoke-virtual {p0}, Lcom/vlingo/client/core/recordstore/Resource;->getName()Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, resName:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/vlingo/client/core/recordstore/Resource;->getName()Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, resTmpName:Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_82

    .line 188
    invoke-virtual {v7}, Lcom/vlingo/client/core/recordstore/Resource;->getLifetime()I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_4e

    .line 190
    invoke-virtual {v7}, Lcom/vlingo/client/core/recordstore/Resource;->getRecordId()I

    move-result v12

    invoke-static {v12}, Lcom/vlingo/client/core/recordstore/ResourceManager;->deleteRecordId(I)V

    .line 194
    :cond_4e
    invoke-virtual {v9, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 199
    .end local v6           #resName:Ljava/lang/String;
    .end local v7           #resTmp:Lcom/vlingo/client/core/recordstore/Resource;
    .end local v8           #resTmpName:Ljava/lang/String;
    :cond_51
    if-eqz v1, :cond_56

    .line 200
    invoke-virtual {v9, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 201
    :cond_56
    monitor-exit v9
    :try_end_57
    .catchall {:try_start_26 .. :try_end_57} :catchall_85

    .line 203
    if-eqz v2, :cond_62

    .line 204
    :try_start_59
    sget-object v12, Lcom/vlingo/client/core/recordstore/ResourceManager;->resourceHash:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/vlingo/client/core/recordstore/Resource;->getDomain()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_62
    if-nez p1, :cond_74

    if-eqz v1, :cond_74

    .line 208
    invoke-virtual {p0}, Lcom/vlingo/client/core/recordstore/Resource;->getLifetime()I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_74

    .line 209
    invoke-static {p0}, Lcom/vlingo/client/core/recordstore/ResourceManager;->addRecord(Lcom/vlingo/client/core/recordstore/Resource;)I

    move-result v5

    .line 210
    .local v5, recordId:I
    invoke-virtual {p0, v5}, Lcom/vlingo/client/core/recordstore/Resource;->setRecordId(I)V

    .line 213
    .end local v5           #recordId:I
    :cond_74
    monitor-exit v13

    goto :goto_5

    .end local v3           #i:I
    :catchall_76
    move-exception v12

    monitor-exit v13
    :try_end_78
    .catchall {:try_start_59 .. :try_end_78} :catchall_76

    throw v12

    .line 157
    :cond_79
    const/4 v2, 0x1

    .line 158
    :try_start_7a
    new-instance v10, Ljava/util/Vector;

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Ljava/util/Vector;-><init>(I)V
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_76

    .end local v9           #resVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/recordstore/Resource;>;"
    .local v10, resVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/recordstore/Resource;>;"
    move-object v9, v10

    .end local v10           #resVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/recordstore/Resource;>;"
    .restart local v9       #resVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/recordstore/Resource;>;"
    goto :goto_24

    .line 163
    .restart local v3       #i:I
    .restart local v6       #resName:Ljava/lang/String;
    .restart local v7       #resTmp:Lcom/vlingo/client/core/recordstore/Resource;
    .restart local v8       #resTmpName:Ljava/lang/String;
    :cond_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 201
    .end local v6           #resName:Ljava/lang/String;
    .end local v7           #resTmp:Lcom/vlingo/client/core/recordstore/Resource;
    .end local v8           #resTmpName:Ljava/lang/String;
    :catchall_85
    move-exception v12

    :try_start_86
    monitor-exit v9
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    :try_start_87
    throw v12
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_76
.end method
