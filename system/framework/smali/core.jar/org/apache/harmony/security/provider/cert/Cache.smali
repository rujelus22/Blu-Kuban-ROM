.class public Lorg/apache/harmony/security/provider/cert/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field private static final HASH_MASK:J = -0x10000L

.field private static final INDEX_MASK:I = 0xffff

.field private static final PREFIX_HASH_MASK:J = -0x100000000L


# instance fields
.field private final cache:[Ljava/lang/Object;

.field private cache_is_full:Z

.field private final cache_size:I

.field private final encodings:[[B

.field private final hashes:[J

.field private final hashes_idx:[J

.field private last_cached:I

.field private final prefix_size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 154
    const/16 v0, 0x1c

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(II)V

    .line 155
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "pref_size"

    .prologue
    .line 147
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(II)V

    .line 148
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter "pref_size"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->last_cached:I

    .line 124
    iput-boolean v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_is_full:Z

    .line 133
    iput p2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    .line 134
    iput p1, p0, Lorg/apache/harmony/security/provider/cert/Cache;->prefix_size:I

    .line 135
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes:[J

    .line 136
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    .line 137
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->encodings:[[B

    .line 138
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache:[Ljava/lang/Object;

    .line 139
    return-void
.end method

.method private getSuffHash([B)J
    .registers 7
    .parameter "arr"

    .prologue
    .line 317
    const-wide/16 v0, 0x0

    .line 318
    .local v0, hash_addon:J
    array-length v3, p1

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_5
    array-length v3, p1

    iget v4, p0, Lorg/apache/harmony/security/provider/cert/Cache;->prefix_size:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_14

    .line 319
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 318
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 321
    :cond_14
    const/16 v3, 0x10

    shl-long v3, v0, v3

    return-wide v3
.end method


# virtual methods
.method public contains(J)Z
    .registers 9
    .parameter "prefix_hash"

    .prologue
    const/4 v1, 0x0

    .line 191
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_8

    .line 198
    :cond_7
    :goto_7
    return v1

    .line 194
    :cond_8
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    invoke-static {v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 195
    .local v0, idx:I
    iget v2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    if-eq v0, v2, :cond_7

    .line 198
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aget-wide v2, v2, v0

    const-wide v4, -0x100000000L

    and-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-nez v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method public get(J[B)Ljava/lang/Object;
    .registers 11
    .parameter "hash"
    .parameter "encoding"

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-direct {p0, p3}, Lorg/apache/harmony/security/provider/cert/Cache;->getSuffHash([B)J

    move-result-wide v3

    or-long/2addr p1, v3

    .line 215
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_d

    .line 232
    :cond_c
    :goto_c
    return-object v2

    .line 218
    :cond_d
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    invoke-static {v3, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v3, -0x1

    .line 219
    .local v1, idx:I
    iget v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    if-eq v1, v3, :cond_c

    .line 222
    :cond_1b
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aget-wide v3, v3, v1

    const-wide/32 v5, -0x10000

    and-long/2addr v3, v5

    cmp-long v3, v3, p1

    if-nez v3, :cond_c

    .line 223
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aget-wide v3, v3, v1

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    long-to-int v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 224
    .local v0, i:I
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->encodings:[[B

    aget-object v3, v3, v0

    invoke-static {p3, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 225
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache:[Ljava/lang/Object;

    aget-object v2, v2, v0

    goto :goto_c

    .line 227
    :cond_41
    add-int/lit8 v1, v1, 0x1

    .line 228
    iget v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    if-ne v1, v3, :cond_1b

    goto :goto_c
.end method

.method public getHash([B)J
    .registers 7
    .parameter "arr"

    .prologue
    .line 170
    const-wide/16 v0, 0x0

    .line 171
    .local v0, hash:J
    const/4 v2, 0x1

    .local v2, i:I
    :goto_3
    iget v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->prefix_size:I

    if-ge v2, v3, :cond_10

    .line 172
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 176
    :cond_10
    const/16 v3, 0x20

    shl-long/2addr v0, v3

    .line 177
    return-wide v0
.end method

.method public put(J[BLjava/lang/Object;)V
    .registers 17
    .parameter "hash"
    .parameter "encoding"
    .parameter "object"

    .prologue
    .line 243
    iget v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->last_cached:I

    iget v8, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    if-ne v7, v8, :cond_c

    .line 247
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->last_cached:I

    .line 248
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_is_full:Z

    .line 251
    :cond_c
    iget v3, p0, Lorg/apache/harmony/security/provider/cert/Cache;->last_cached:I

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->last_cached:I

    .line 254
    .local v3, index:I
    invoke-direct {p0, p3}, Lorg/apache/harmony/security/provider/cert/Cache;->getSuffHash([B)J

    move-result-wide v7

    or-long/2addr p1, v7

    .line 256
    iget-boolean v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_is_full:Z

    if-eqz v7, :cond_bc

    .line 258
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes:[J

    aget-wide v7, v7, v3

    add-int/lit8 v9, v3, 0x1

    int-to-long v9, v9

    or-long v1, v7, v9

    .line 259
    .local v1, idx_hash:J
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    invoke-static {v7, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 260
    .local v0, idx:I
    if-gez v0, :cond_47

    .line 263
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WARNING! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    add-int/lit8 v7, v0, 0x1

    neg-int v0, v7

    .line 266
    :cond_47
    add-int/lit8 v7, v3, 0x1

    int-to-long v7, v7

    or-long v4, p1, v7

    .line 267
    .local v4, new_hash_idx:J
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    invoke-static {v7, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v6

    .line 268
    .local v6, new_idx:I
    if-ltz v6, :cond_8c

    .line 270
    if-eq v0, v6, :cond_7f

    .line 273
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "WARNING: "

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">> idx: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " new_idx: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    .end local v4           #new_hash_idx:J
    .end local v6           #new_idx:I
    :cond_7f
    :goto_7f
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes:[J

    aput-wide p1, v7, v3

    .line 309
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->encodings:[[B

    aput-object p3, v7, v3

    .line 310
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache:[Ljava/lang/Object;

    aput-object p4, v7, v3

    .line 311
    return-void

    .line 277
    .restart local v4       #new_hash_idx:J
    .restart local v6       #new_idx:I
    :cond_8c
    add-int/lit8 v7, v6, 0x1

    neg-int v6, v7

    .line 279
    if-le v6, v0, :cond_a5

    .line 280
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    sub-int v10, v6, v0

    add-int/lit8 v10, v10, -0x1

    invoke-static {v7, v8, v9, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    add-int/lit8 v8, v6, -0x1

    aput-wide v4, v7, v8

    goto :goto_7f

    .line 283
    :cond_a5
    if-le v0, v6, :cond_b7

    .line 284
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    iget-object v8, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    add-int/lit8 v9, v6, 0x1

    sub-int v10, v0, v6

    invoke-static {v7, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aput-wide v4, v7, v6

    goto :goto_7f

    .line 288
    :cond_b7
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aput-wide v4, v7, v6

    goto :goto_7f

    .line 292
    .end local v0           #idx:I
    .end local v1           #idx_hash:J
    .end local v4           #new_hash_idx:J
    .end local v6           #new_idx:I
    :cond_bc
    add-int/lit8 v7, v3, 0x1

    int-to-long v7, v7

    or-long v1, p1, v7

    .line 293
    .restart local v1       #idx_hash:J
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    invoke-static {v7, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 294
    .restart local v0       #idx:I
    if-gez v0, :cond_cc

    .line 296
    add-int/lit8 v7, v0, 0x1

    neg-int v0, v7

    .line 298
    :cond_cc
    add-int/lit8 v0, v0, -0x1

    .line 299
    iget v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    if-eq v0, v7, :cond_eb

    .line 301
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    iget v8, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    sub-int/2addr v8, v3

    iget-object v9, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    iget v10, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    sub-int/2addr v10, v3

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lorg/apache/harmony/security/provider/cert/Cache;->cache_size:I

    sub-int/2addr v11, v3

    sub-int v11, v0, v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    :cond_eb
    iget-object v7, p0, Lorg/apache/harmony/security/provider/cert/Cache;->hashes_idx:[J

    aput-wide v1, v7, v0

    goto :goto_7f
.end method
