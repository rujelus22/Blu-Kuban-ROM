.class Ljava/net/AddressCache;
.super Ljava/lang/Object;
.source "AddressCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/AddressCache$AddressCacheEntry;
    }
.end annotation


# static fields
.field private static final DEFAULT_NEGATIVE_TTL_NANOS:J = 0x2540be400L

.field private static final DEFAULT_POSITIVE_TTL_NANOS:J = 0x8bb2c97000L

.field private static final MAX_ENTRIES:I = 0x200


# instance fields
.field private final cache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/AddressCache$AddressCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    iput-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    .line 41
    return-void
.end method

.method private customTtl(Ljava/lang/String;J)J
    .registers 12
    .parameter "propertyName"
    .parameter "defaultTtlNanos"

    .prologue
    .line 121
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, ttlString:Ljava/lang/String;
    if-nez v3, :cond_d

    .line 123
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, p2

    .line 136
    :goto_c
    return-wide v4

    .line 126
    :cond_d
    :try_start_d
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 128
    .local v1, ttlS:J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_1d

    .line 129
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_c

    .line 130
    :cond_1d
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_26

    .line 131
    const-wide/high16 v4, -0x8000

    goto :goto_c

    .line 133
    :cond_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_29} :catch_30

    move-result-wide v4

    const-wide/32 v6, 0x3b9aca00

    mul-long/2addr v6, v1

    add-long/2addr v4, v6

    goto :goto_c

    .line 135
    .end local v1           #ttlS:J
    :catch_30
    move-exception v0

    .line 136
    .local v0, ex:Ljava/lang/NumberFormatException;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, p2

    goto :goto_c
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v0}, Llibcore/util/BasicLruCache;->evictAll()V

    .line 65
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .parameter "hostname"

    .prologue
    .line 73
    iget-object v1, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v1, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/AddressCache$AddressCacheEntry;

    .line 75
    .local v0, entry:Ljava/net/AddressCache$AddressCacheEntry;
    if-eqz v0, :cond_17

    iget-wide v1, v0, Ljava/net/AddressCache$AddressCacheEntry;->expiryNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_17

    .line 76
    iget-object v1, v0, Ljava/net/AddressCache$AddressCacheEntry;->value:Ljava/lang/Object;

    .line 80
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 11
    .parameter "hostname"
    .parameter "value"
    .parameter "isPositive"

    .prologue
    .line 105
    if-eqz p3, :cond_1c

    const-string v4, "networkaddress.cache.ttl"

    .line 106
    .local v4, propertyName:Ljava/lang/String;
    :goto_4
    if-eqz p3, :cond_1f

    const-wide v0, 0x8bb2c97000L

    .line 107
    .local v0, defaultTtlNanos:J
    :goto_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    add-long v2, v5, v0

    .line 109
    .local v2, expiryNanos:J
    iget-object v5, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    new-instance v6, Ljava/net/AddressCache$AddressCacheEntry;

    invoke-direct {v6, p2, v2, v3}, Ljava/net/AddressCache$AddressCacheEntry;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v5, p1, v6}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void

    .line 105
    .end local v0           #defaultTtlNanos:J
    .end local v2           #expiryNanos:J
    .end local v4           #propertyName:Ljava/lang/String;
    :cond_1c
    const-string v4, "networkaddress.cache.negative.ttl"

    goto :goto_4

    .line 106
    .restart local v4       #propertyName:Ljava/lang/String;
    :cond_1f
    const-wide v0, 0x2540be400L

    goto :goto_b
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "hostname"
    .parameter "detailMessage"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/net/AddressCache;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 97
    return-void
.end method

.method public put(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .registers 4
    .parameter "hostname"
    .parameter "addresses"

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljava/net/AddressCache;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 89
    return-void
.end method

.method public putUnknownHost(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "hostname"
    .parameter "detailMessage"

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2}, Ljava/net/AddressCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method
