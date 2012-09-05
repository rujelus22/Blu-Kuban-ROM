.class public final Ljcifs/netbios/NbtAddress;
.super Ljava/lang/Object;
.source "NbtAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/netbios/NbtAddress$CacheEntry;
    }
.end annotation


# static fields
.field private static final ADDRESS_CACHE:Ljava/util/HashMap; = null

.field static final ANY_HOSTS_NAME:Ljava/lang/String; = "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"

.field public static final B_NODE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CACHE_POLICY:I = 0x0

.field private static final CLIENT:Ljcifs/netbios/NameServiceClient; = null

.field private static final DEFAULT_CACHE_POLICY:I = 0x1e

.field private static final FOREVER:I = -0x1

.field public static final H_NODE:I = 0x3

.field private static final LOOKUP_TABLE:Ljava/util/HashMap; = null

.field public static final MASTER_BROWSER_NAME:Ljava/lang/String; = "\u0001\u0002__MSBROWSE__\u0002"

.field public static final M_NODE:I = 0x2

.field static final NBNS:[Ljava/net/InetAddress; = null

.field public static final P_NODE:I = 0x1

.field public static final SMBSERVER_NAME:Ljava/lang/String; = "*SMBSERVER     "

.field static final UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;

.field static final UNKNOWN_MAC_ADDRESS:[B

.field static final UNKNOWN_NAME:Ljcifs/netbios/Name;

.field static localhost:Ljcifs/netbios/NbtAddress;

.field private static nbnsIndex:I


# instance fields
.field address:I

.field calledName:Ljava/lang/String;

.field groupName:Z

.field hostName:Ljcifs/netbios/Name;

.field isActive:Z

.field isBeingDeleted:Z

.field isDataFromNodeStatus:Z

.field isInConflict:Z

.field isPermanent:Z

.field macAddress:[B

.field nodeType:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    const-wide/16 v14, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 133
    const-string v0, "jcifs.netbios.wins"

    const-string v2, ","

    new-array v4, v3, [Ljava/net/InetAddress;

    invoke-static {v0, v2, v4}, Ljcifs/Config;->getInetAddressArray(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    .line 140
    new-instance v0, Ljcifs/netbios/NameServiceClient;

    invoke-direct {v0}, Ljcifs/netbios/NameServiceClient;-><init>()V

    sput-object v0, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    .line 143
    const-string v0, "jcifs.netbios.cachePolicy"

    const/16 v2, 0x1e

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    .line 145
    sput v3, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    .line 150
    new-instance v0, Ljcifs/netbios/Name;

    const-string v2, "0.0.0.0"

    invoke-direct {v0, v2, v3, v8}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    .line 151
    new-instance v0, Ljcifs/netbios/NbtAddress;

    sget-object v2, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    invoke-direct {v0, v2, v3, v3, v3}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    sput-object v0, Ljcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;

    .line 152
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_e4

    sput-object v0, Ljcifs/netbios/NbtAddress;->UNKNOWN_MAC_ADDRESS:[B

    .line 179
    sget-object v0, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    sget-object v2, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    new-instance v4, Ljcifs/netbios/NbtAddress$CacheEntry;

    sget-object v5, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    sget-object v6, Ljcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;

    invoke-direct {v4, v5, v6, v14, v15}, Ljcifs/netbios/NbtAddress$CacheEntry;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    iget-object v12, v0, Ljcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    .line 185
    .local v12, localInetAddress:Ljava/net/InetAddress;
    if-nez v12, :cond_66

    .line 187
    :try_start_62
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
    :try_end_65
    .catch Ljava/net/UnknownHostException; {:try_start_62 .. :try_end_65} :catch_da

    move-result-object v12

    .line 206
    :cond_66
    :goto_66
    const-string v0, "jcifs.netbios.hostname"

    invoke-static {v0, v8}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 207
    .local v11, localHostname:Ljava/lang/String;
    if-eqz v11, :cond_74

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b7

    .line 208
    :cond_74
    invoke-virtual {v12}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    .line 209
    .local v10, addr:[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JCIFS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v2, v10, v9

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x3

    aget-byte v2, v10, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L

    mul-double/2addr v4, v6

    double-to-int v2, v4

    invoke-static {v2, v9}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 219
    .end local v10           #addr:[B
    :cond_b7
    new-instance v1, Ljcifs/netbios/Name;

    const-string v0, "jcifs.netbios.scope"

    invoke-static {v0, v8}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v11, v3, v0}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    .local v1, localName:Ljcifs/netbios/Name;
    new-instance v0, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v12}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    const/4 v7, 0x1

    sget-object v9, Ljcifs/netbios/NbtAddress;->UNKNOWN_MAC_ADDRESS:[B

    move v4, v3

    move v5, v3

    move v6, v3

    move v8, v3

    invoke-direct/range {v0 .. v9}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZIZZZZ[B)V

    sput-object v0, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    .line 227
    sget-object v0, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    invoke-static {v1, v0, v14, v15}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    .line 228
    return-void

    .line 188
    .end local v1           #localName:Ljcifs/netbios/Name;
    .end local v11           #localHostname:Ljava/lang/String;
    :catch_da
    move-exception v13

    .line 195
    .local v13, uhe:Ljava/net/UnknownHostException;
    :try_start_db
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_e0
    .catch Ljava/net/UnknownHostException; {:try_start_db .. :try_end_e0} :catch_e2

    move-result-object v12

    goto :goto_66

    .line 196
    :catch_e2
    move-exception v0

    goto :goto_66

    .line 152
    :array_e4
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljcifs/netbios/Name;IZI)V
    .registers 5
    .parameter "hostName"
    .parameter "address"
    .parameter "groupName"
    .parameter "nodeType"

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 561
    iput p2, p0, Ljcifs/netbios/NbtAddress;->address:I

    .line 562
    iput-boolean p3, p0, Ljcifs/netbios/NbtAddress;->groupName:Z

    .line 563
    iput p4, p0, Ljcifs/netbios/NbtAddress;->nodeType:I

    .line 564
    return-void
.end method

.method constructor <init>(Ljcifs/netbios/Name;IZIZZZZ[B)V
    .registers 11
    .parameter "hostName"
    .parameter "address"
    .parameter "groupName"
    .parameter "nodeType"
    .parameter "isBeingDeleted"
    .parameter "isInConflict"
    .parameter "isActive"
    .parameter "isPermanent"
    .parameter "macAddress"

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    iput-object p1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 581
    iput p2, p0, Ljcifs/netbios/NbtAddress;->address:I

    .line 582
    iput-boolean p3, p0, Ljcifs/netbios/NbtAddress;->groupName:Z

    .line 583
    iput p4, p0, Ljcifs/netbios/NbtAddress;->nodeType:I

    .line 584
    iput-boolean p5, p0, Ljcifs/netbios/NbtAddress;->isBeingDeleted:Z

    .line 585
    iput-boolean p6, p0, Ljcifs/netbios/NbtAddress;->isInConflict:Z

    .line 586
    iput-boolean p7, p0, Ljcifs/netbios/NbtAddress;->isActive:Z

    .line 587
    iput-boolean p8, p0, Ljcifs/netbios/NbtAddress;->isPermanent:Z

    .line 588
    iput-object p9, p0, Ljcifs/netbios/NbtAddress;->macAddress:[B

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    .line 590
    return-void
.end method

.method static cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;)V
    .registers 8
    .parameter "hostName"
    .parameter "addr"

    .prologue
    .line 231
    sget v2, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v2, :cond_5

    .line 239
    :goto_4
    return-void

    .line 234
    :cond_5
    const-wide/16 v0, -0x1

    .line 235
    .local v0, expiration:J
    sget v2, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 238
    :cond_17
    invoke-static {p0, p1, v0, v1}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    goto :goto_4
.end method

.method static cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V
    .registers 7
    .parameter "hostName"
    .parameter "addr"
    .parameter "expiration"

    .prologue
    .line 241
    sget v1, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v1, :cond_5

    .line 254
    :goto_4
    return-void

    .line 244
    :cond_5
    sget-object v2, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    monitor-enter v2

    .line 245
    :try_start_8
    sget-object v1, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NbtAddress$CacheEntry;

    .line 246
    .local v0, entry:Ljcifs/netbios/NbtAddress$CacheEntry;
    if-nez v0, :cond_21

    .line 247
    new-instance v0, Ljcifs/netbios/NbtAddress$CacheEntry;

    .end local v0           #entry:Ljcifs/netbios/NbtAddress$CacheEntry;
    invoke-direct {v0, p0, p1, p2, p3}, Ljcifs/netbios/NbtAddress$CacheEntry;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    .line 248
    .restart local v0       #entry:Ljcifs/netbios/NbtAddress$CacheEntry;
    sget-object v1, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :goto_1c
    monitor-exit v2

    goto :goto_4

    .end local v0           #entry:Ljcifs/netbios/NbtAddress$CacheEntry;
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v1

    .line 250
    .restart local v0       #entry:Ljcifs/netbios/NbtAddress$CacheEntry;
    :cond_21
    :try_start_21
    iput-object p1, v0, Ljcifs/netbios/NbtAddress$CacheEntry;->address:Ljcifs/netbios/NbtAddress;

    .line 251
    iput-wide p2, v0, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_1e

    goto :goto_1c
.end method

.method static cacheAddressArray([Ljcifs/netbios/NbtAddress;)V
    .registers 9
    .parameter "addrs"

    .prologue
    .line 256
    sget v4, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v4, :cond_5

    .line 275
    :goto_4
    return-void

    .line 259
    :cond_5
    const-wide/16 v1, -0x1

    .line 260
    .local v1, expiration:J
    sget v4, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_17

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget v6, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long v1, v4, v6

    .line 263
    :cond_17
    sget-object v5, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    monitor-enter v5

    .line 264
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1b
    :try_start_1b
    array-length v4, p0

    if-ge v3, v4, :cond_4d

    .line 265
    sget-object v4, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    aget-object v6, p0, v3

    iget-object v6, v6, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NbtAddress$CacheEntry;

    .line 266
    .local v0, entry:Ljcifs/netbios/NbtAddress$CacheEntry;
    if-nez v0, :cond_43

    .line 267
    new-instance v0, Ljcifs/netbios/NbtAddress$CacheEntry;

    .end local v0           #entry:Ljcifs/netbios/NbtAddress$CacheEntry;
    aget-object v4, p0, v3

    iget-object v4, v4, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    aget-object v6, p0, v3

    invoke-direct {v0, v4, v6, v1, v2}, Ljcifs/netbios/NbtAddress$CacheEntry;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    .line 268
    .restart local v0       #entry:Ljcifs/netbios/NbtAddress$CacheEntry;
    sget-object v4, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    aget-object v6, p0, v3

    iget-object v6, v6, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 270
    :cond_43
    aget-object v4, p0, v3

    iput-object v4, v0, Ljcifs/netbios/NbtAddress$CacheEntry;->address:Ljcifs/netbios/NbtAddress;

    .line 271
    iput-wide v1, v0, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    goto :goto_40

    .line 274
    .end local v0           #entry:Ljcifs/netbios/NbtAddress$CacheEntry;
    :catchall_4a
    move-exception v4

    monitor-exit v5
    :try_end_4c
    .catchall {:try_start_1b .. :try_end_4c} :catchall_4a

    throw v4

    :cond_4d
    :try_start_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4a

    goto :goto_4
.end method

.method private static checkLookupTable(Ljcifs/netbios/Name;)Ljava/lang/Object;
    .registers 4
    .parameter "name"

    .prologue
    .line 325
    sget-object v2, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    monitor-enter v2

    .line 326
    :try_start_3
    sget-object v1, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 327
    sget-object v1, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const/4 v0, 0x0

    monitor-exit v2

    .line 344
    :cond_12
    :goto_12
    return-object v0

    .line 330
    :cond_13
    :goto_13
    sget-object v1, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_37

    move-result v1

    if-eqz v1, :cond_23

    .line 332
    :try_start_1b
    sget-object v1, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_37
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_13

    .line 333
    :catch_21
    move-exception v1

    goto :goto_13

    .line 336
    :cond_23
    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_37

    .line 337
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getCachedAddress(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    .line 338
    .local v0, obj:Ljcifs/netbios/NbtAddress;
    if-nez v0, :cond_12

    .line 339
    sget-object v2, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    monitor-enter v2

    .line 340
    :try_start_2d
    sget-object v1, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    monitor-exit v2

    goto :goto_12

    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_34

    throw v1

    .line 336
    .end local v0           #obj:Ljcifs/netbios/NbtAddress;
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method static doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    .registers 6
    .parameter "name"
    .parameter "svr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 294
    iget v2, p0, Ljcifs/netbios/Name;->hexCode:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_c

    if-nez p1, :cond_c

    .line 295
    sget-object v2, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    iget-object p1, v2, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    .line 297
    :cond_c
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    :goto_12
    iput v2, p0, Ljcifs/netbios/Name;->srcHashCode:I

    .line 298
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getCachedAddress(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    .line 300
    .local v0, addr:Ljcifs/netbios/NbtAddress;
    if-nez v0, :cond_2e

    .line 305
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->checkLookupTable(Ljcifs/netbios/Name;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #addr:Ljcifs/netbios/NbtAddress;
    check-cast v0, Ljcifs/netbios/NbtAddress;

    .restart local v0       #addr:Ljcifs/netbios/NbtAddress;
    if-nez v0, :cond_2e

    .line 307
    :try_start_22
    sget-object v2, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    invoke-virtual {v2, p0, p1}, Ljcifs/netbios/NameServiceClient;->getByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_48
    .catch Ljava/net/UnknownHostException; {:try_start_22 .. :try_end_27} :catch_3e

    move-result-object v0

    .line 311
    invoke-static {p0, v0}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;)V

    .line 312
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->updateLookupTable(Ljcifs/netbios/Name;)V

    .line 316
    :cond_2e
    :goto_2e
    sget-object v2, Ljcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;

    if-ne v0, v2, :cond_50

    .line 317
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {p0}, Ljcifs/netbios/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    .end local v0           #addr:Ljcifs/netbios/NbtAddress;
    :cond_3c
    const/4 v2, 0x0

    goto :goto_12

    .line 308
    .restart local v0       #addr:Ljcifs/netbios/NbtAddress;
    :catch_3e
    move-exception v1

    .line 309
    .local v1, uhe:Ljava/net/UnknownHostException;
    :try_start_3f
    sget-object v0, Ljcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_48

    .line 311
    invoke-static {p0, v0}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;)V

    .line 312
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->updateLookupTable(Ljcifs/netbios/Name;)V

    goto :goto_2e

    .line 311
    .end local v1           #uhe:Ljava/net/UnknownHostException;
    :catchall_48
    move-exception v2

    invoke-static {p0, v0}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;)V

    .line 312
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->updateLookupTable(Ljcifs/netbios/Name;)V

    throw v2

    .line 319
    :cond_50
    return-object v0
.end method

.method public static getAllByAddress(Ljava/lang/String;)[Ljcifs/netbios/NbtAddress;
    .registers 3
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 479
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    invoke-static {v0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getAllByAddress(Ljava/lang/String;ILjava/lang/String;)[Ljcifs/netbios/NbtAddress;
    .registers 4
    .parameter "host"
    .parameter "type"
    .parameter "scope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-static {p0, p1, p2}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    invoke-static {v0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;
    .registers 7
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 519
    :try_start_0
    sget-object v2, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    invoke-virtual {v2, p0}, Ljcifs/netbios/NameServiceClient;->getNodeStatus(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object v0

    .line 520
    .local v0, addrs:[Ljcifs/netbios/NbtAddress;
    invoke-static {v0}, Ljcifs/netbios/NbtAddress;->cacheAddressArray([Ljcifs/netbios/NbtAddress;)V
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_9} :catch_a

    .line 521
    return-object v0

    .line 522
    .end local v0           #addrs:[Ljcifs/netbios/NbtAddress;
    :catch_a
    move-exception v1

    .line 523
    .local v1, uhe:Ljava/net/UnknownHostException;
    new-instance v3, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no name with type 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v4, v4, Ljcifs/netbios/Name;->hexCode:I

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v2, v2, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    if-eqz v2, :cond_35

    iget-object v2, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v2, v2, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_51

    :cond_35
    const-string v2, " with no scope"

    :goto_37
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for host "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " with scope "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v5, v5, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_37
.end method

.method public static getAllByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;
    .registers 6
    .parameter "host"
    .parameter "type"
    .parameter "scope"
    .parameter "svr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 463
    sget-object v0, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    new-instance v1, Ljcifs/netbios/Name;

    invoke-direct {v1, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Ljcifs/netbios/NameServiceClient;->getAllByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Ljcifs/netbios/NbtAddress;
    .registers 3
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 379
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;
    .registers 4
    .parameter "host"
    .parameter "type"
    .parameter "scope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    .registers 14
    .parameter "host"
    .parameter "type"
    .parameter "scope"
    .parameter "svr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x39

    const/16 v7, 0x30

    const/4 v8, 0x0

    .line 418
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_12

    .line 419
    :cond_d
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object v6

    .line 454
    :goto_11
    return-object v6

    .line 421
    :cond_12
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_26

    .line 422
    new-instance v6, Ljcifs/netbios/Name;

    invoke-direct {v6, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v6, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object v6

    goto :goto_11

    .line 424
    :cond_26
    const/4 v0, 0x0

    .line 425
    .local v0, IP:I
    const/4 v4, 0x0

    .line 426
    .local v4, hitDots:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 428
    .local v3, data:[C
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2d
    array-length v6, v3

    if-ge v5, v6, :cond_77

    .line 429
    aget-char v2, v3, v5

    .line 430
    .local v2, c:C
    if-lt v2, v7, :cond_36

    if-le v2, v9, :cond_40

    .line 431
    :cond_36
    new-instance v6, Ljcifs/netbios/Name;

    invoke-direct {v6, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v6, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object v6

    goto :goto_11

    .line 433
    :cond_40
    const/4 v1, 0x0

    .line 434
    .local v1, b:I
    :goto_41
    const/16 v6, 0x2e

    if-eq v2, v6, :cond_5d

    .line 435
    if-lt v2, v7, :cond_49

    if-le v2, v9, :cond_53

    .line 436
    :cond_49
    new-instance v6, Ljcifs/netbios/Name;

    invoke-direct {v6, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v6, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object v6

    goto :goto_11

    .line 438
    :cond_53
    mul-int/lit8 v6, v1, 0xa

    add-int/2addr v6, v2

    add-int/lit8 v1, v6, -0x30

    .line 440
    add-int/lit8 v5, v5, 0x1

    array-length v6, v3

    if-lt v5, v6, :cond_6b

    .line 445
    :cond_5d
    const/16 v6, 0xff

    if-le v1, v6, :cond_6e

    .line 446
    new-instance v6, Ljcifs/netbios/Name;

    invoke-direct {v6, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v6, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object v6

    goto :goto_11

    .line 443
    :cond_6b
    aget-char v2, v3, v5

    goto :goto_41

    .line 448
    :cond_6e
    shl-int/lit8 v6, v0, 0x8

    add-int v0, v6, v1

    .line 449
    add-int/lit8 v4, v4, 0x1

    .line 428
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 451
    .end local v1           #b:I
    .end local v2           #c:C
    :cond_77
    const/4 v6, 0x4

    if-ne v4, v6, :cond_82

    const-string v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 452
    :cond_82
    new-instance v6, Ljcifs/netbios/Name;

    invoke-direct {v6, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v6, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object v6

    goto :goto_11

    .line 454
    :cond_8c
    new-instance v6, Ljcifs/netbios/NbtAddress;

    sget-object v7, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    invoke-direct {v6, v7, v0, v8, v8}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    goto/16 :goto_11
.end method

.method static getCachedAddress(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;
    .registers 8
    .parameter "hostName"

    .prologue
    const/4 v1, 0x0

    .line 277
    sget v2, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v2, :cond_6

    .line 286
    :goto_5
    return-object v1

    .line 280
    :cond_6
    sget-object v2, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    monitor-enter v2

    .line 281
    :try_start_9
    sget-object v3, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NbtAddress$CacheEntry;

    .line 282
    .local v0, entry:Ljcifs/netbios/NbtAddress$CacheEntry;
    if-eqz v0, :cond_26

    iget-wide v3, v0, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_26

    iget-wide v3, v0, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_26

    .line 284
    const/4 v0, 0x0

    .line 286
    :cond_26
    if-eqz v0, :cond_2a

    iget-object v1, v0, Ljcifs/netbios/NbtAddress$CacheEntry;->address:Ljcifs/netbios/NbtAddress;

    :cond_2a
    monitor-exit v2

    goto :goto_5

    .line 287
    .end local v0           #entry:Ljcifs/netbios/NbtAddress$CacheEntry;
    :catchall_2c
    move-exception v1

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public static getLocalHost()Ljcifs/netbios/NbtAddress;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 361
    sget-object v0, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    return-object v0
.end method

.method public static getLocalName()Ljcifs/netbios/Name;
    .registers 1

    .prologue
    .line 364
    sget-object v0, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    iget-object v0, v0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    return-object v0
.end method

.method public static getWINSAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 533
    sget-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    sget v1, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    aget-object v0, v0, v1

    goto :goto_6
.end method

.method public static isWINS(Ljava/net/InetAddress;)Z
    .registers 4
    .parameter "svr"

    .prologue
    .line 536
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-eqz p0, :cond_1b

    sget-object v1, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 537
    invoke-virtual {p0}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    sget-object v2, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_18

    .line 538
    const/4 v1, 0x1

    .line 541
    :goto_17
    return v1

    .line 536
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 541
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method static switchWINS()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 544
    sget v0, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    sget v0, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    add-int/lit8 v0, v0, 0x1

    :goto_d
    sput v0, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    .line 545
    sget-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v0, v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    :goto_15
    return-object v0

    .line 544
    :cond_16
    const/4 v0, 0x0

    goto :goto_d

    .line 545
    :cond_18
    sget-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    sget v1, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    aget-object v0, v0, v1

    goto :goto_15
.end method

.method private static updateLookupTable(Ljcifs/netbios/Name;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 347
    sget-object v1, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    monitor-enter v1

    .line 348
    :try_start_3
    sget-object v0, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 350
    monitor-exit v1

    .line 351
    return-void

    .line 350
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method


# virtual methods
.method checkData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 690
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    sget-object v1, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    if-ne v0, v1, :cond_9

    .line 691
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    .line 693
    :cond_9
    return-void
.end method

.method checkNodeStatusData()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 695
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    if-nez v0, :cond_7

    .line 696
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    .line 698
    :cond_7
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "obj"

    .prologue
    .line 868
    if-eqz p1, :cond_10

    instance-of v0, p1, Ljcifs/netbios/NbtAddress;

    if-eqz v0, :cond_10

    check-cast p1, Ljcifs/netbios/NbtAddress;

    .end local p1
    iget v0, p1, Ljcifs/netbios/NbtAddress;->address:I

    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public firstCalledName()Ljava/lang/String;
    .registers 8

    .prologue
    .line 598
    iget-object v5, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v5, v5, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    iput-object v5, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 600
    iget-object v5, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 604
    const/4 v1, 0x0

    .local v1, dots:I
    move v2, v1

    .line 605
    .local v2, i:I
    iget-object v5, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 606
    .local v4, len:I
    iget-object v5, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, data:[C
    move v3, v2

    .line 607
    .end local v2           #i:I
    .local v3, i:I
    :goto_22
    if-ge v3, v4, :cond_57

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-char v5, v0, v3

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 608
    if-ne v2, v4, :cond_3a

    const/4 v5, 0x3

    if-ne v1, v5, :cond_3a

    .line 610
    const-string v5, "*SMBSERVER     "

    iput-object v5, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 627
    .end local v0           #data:[C
    .end local v1           #dots:I
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_37
    :goto_37
    iget-object v5, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    return-object v5

    .line 613
    .restart local v0       #data:[C
    .restart local v1       #dots:I
    .restart local v2       #i:I
    .restart local v4       #len:I
    :cond_3a
    if-ge v2, v4, :cond_55

    aget-char v5, v0, v2

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_55

    .line 614
    add-int/lit8 v1, v1, 0x1

    .line 615
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_22

    .line 619
    .end local v0           #data:[C
    .end local v1           #dots:I
    .end local v3           #i:I
    .end local v4           #len:I
    :cond_48
    iget-object v5, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v5, v5, Ljcifs/netbios/Name;->hexCode:I

    packed-switch v5, :pswitch_data_5a

    goto :goto_37

    .line 623
    :pswitch_50
    const-string v5, "*SMBSERVER     "

    iput-object v5, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    goto :goto_37

    .restart local v0       #data:[C
    .restart local v1       #dots:I
    .restart local v2       #i:I
    .restart local v4       #len:I
    :cond_55
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_22

    :cond_57
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_37

    .line 619
    nop

    :pswitch_data_5a
    .packed-switch 0x1b
        :pswitch_50
        :pswitch_50
        :pswitch_50
    .end packed-switch
.end method

.method public getAddress()[B
    .registers 4

    .prologue
    .line 812
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 814
    .local v0, addr:[B
    const/4 v1, 0x0

    iget v2, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 815
    const/4 v1, 0x1

    iget v2, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 816
    const/4 v1, 0x2

    iget v2, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 817
    const/4 v1, 0x3

    iget v2, p0, Ljcifs/netbios/NbtAddress;->address:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 818
    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 797
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    sget-object v1, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    if-ne v0, v1, :cond_b

    .line 798
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 800
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v0, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    goto :goto_a
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 779
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 780
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->macAddress:[B

    return-object v0
.end method

.method public getNameType()I
    .registers 2

    .prologue
    .line 847
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v0, v0, Ljcifs/netbios/Name;->hexCode:I

    return v0
.end method

.method public getNodeType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 722
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkData()V

    .line 723
    iget v0, p0, Ljcifs/netbios/NbtAddress;->nodeType:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 858
    iget v0, p0, Ljcifs/netbios/NbtAddress;->address:I

    return v0
.end method

.method public isActive()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 755
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 756
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isActive:Z

    return v0
.end method

.method public isBeingDeleted()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 733
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 734
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isBeingDeleted:Z

    return v0
.end method

.method public isGroupAddress()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 708
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkData()V

    .line 709
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->groupName:Z

    return v0
.end method

.method public isInConflict()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 744
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 745
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isInConflict:Z

    return v0
.end method

.method public isPermanent()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 766
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 767
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isPermanent:Z

    return v0
.end method

.method public nextCalledName()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 631
    iget-object v4, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    iget-object v5, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v5, v5, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    if-ne v4, v5, :cond_10

    .line 632
    const-string v3, "*SMBSERVER     "

    iput-object v3, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 659
    :cond_d
    :goto_d
    iget-object v3, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    :cond_f
    :goto_f
    return-object v3

    .line 633
    :cond_10
    iget-object v4, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    const-string v5, "*SMBSERVER     "

    if-ne v4, v5, :cond_4c

    .line 637
    :try_start_16
    sget-object v4, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    invoke-virtual {v4, p0}, Ljcifs/netbios/NameServiceClient;->getNodeStatus(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object v0

    .line 638
    .local v0, addrs:[Ljcifs/netbios/NbtAddress;
    iget-object v4, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v4, v4, Ljcifs/netbios/Name;->hexCode:I

    const/16 v5, 0x1d

    if-ne v4, v5, :cond_3c

    .line 639
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    array-length v4, v0

    if-ge v1, v4, :cond_f

    .line 640
    aget-object v4, v0, v1

    iget-object v4, v4, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v4, v4, Ljcifs/netbios/Name;->hexCode:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_39

    .line 641
    aget-object v4, v0, v1

    iget-object v4, v4, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v3, v4, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    goto :goto_f

    .line 639
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 645
    .end local v1           #i:I
    :cond_3c
    iget-boolean v4, p0, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    if-eqz v4, :cond_d

    .line 649
    const/4 v4, 0x0

    iput-object v4, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 650
    iget-object v4, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v3, v4, Ljcifs/netbios/Name;->name:Ljava/lang/String;
    :try_end_47
    .catch Ljava/net/UnknownHostException; {:try_start_16 .. :try_end_47} :catch_48

    goto :goto_f

    .line 652
    .end local v0           #addrs:[Ljcifs/netbios/NbtAddress;
    :catch_48
    move-exception v2

    .line 653
    .local v2, uhe:Ljava/net/UnknownHostException;
    iput-object v3, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    goto :goto_d

    .line 656
    .end local v2           #uhe:Ljava/net/UnknownHostException;
    :cond_4c
    iput-object v3, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-virtual {v1}, Ljcifs/netbios/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
