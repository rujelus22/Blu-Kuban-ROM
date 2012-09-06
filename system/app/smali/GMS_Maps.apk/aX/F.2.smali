.class public Lax/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lt/f;

.field private b:Ljava/util/Map;

.field private c:Ljava/util/Map;

.field private d:J

.field private e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private f:Lcom/google/googlenav/common/io/j;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/j;)V
    .registers 4
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lax/F;->f:Lcom/google/googlenav/common/io/j;

    .line 98
    new-instance v0, Lt/f;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lt/f;-><init>(I)V

    iput-object v0, p0, Lax/F;->a:Lt/f;

    .line 99
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lax/F;->b:Ljava/util/Map;

    .line 100
    if-eqz p1, :cond_19

    .line 101
    invoke-direct {p0}, Lax/F;->a()V

    .line 103
    :cond_19
    return-void
.end method

.method private a(J)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "star_details_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 10

    .prologue
    .line 221
    const-string v0, "PlaceDetailsCache.loadIndexFromPersistentStore"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lax/F;->c:Ljava/util/Map;

    .line 223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lax/F;->d:J

    .line 224
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbo/a;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lax/F;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 226
    iget-object v0, p0, Lax/F;->f:Lcom/google/googlenav/common/io/j;

    const-string v1, "star_details_index"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 227
    if-eqz v0, :cond_73

    .line 230
    :try_start_22
    invoke-static {v0}, Lax/F;->b([B)V

    .line 233
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 234
    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 237
    iget-object v0, p0, Lax/F;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 238
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 241
    iget-object v0, p0, Lax/F;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 242
    const/4 v0, 0x0

    :goto_3f
    if-ge v0, v1, :cond_73

    .line 243
    iget-object v2, p0, Lax/F;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 244
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    .line 245
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 246
    iget-object v5, p0, Lax/F;->c:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-wide v5, p0, Lax/F;->d:J

    const-wide/16 v7, 0x1

    add-long v2, v3, v7

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lax/F;->d:J
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_67} :catch_6a

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 249
    :catch_6a
    move-exception v0

    .line 252
    const-string v1, "PlaceDetailsCache"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    invoke-direct {p0}, Lax/F;->c()V

    .line 256
    :cond_73
    const-string v0, "PlaceDetailsCache.loadIndexFromPersistentStore"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 403
    iget-object v0, p0, Lax/F;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lax/F;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 405
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_25

    .line 406
    iget-object v2, p0, Lax/F;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 407
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 408
    iget-object v1, p0, Lax/F;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    .line 412
    :cond_25
    iget-object v0, p0, Lax/F;->f:Lcom/google/googlenav/common/io/j;

    invoke-interface {v0, p2}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 413
    invoke-direct {p0}, Lax/F;->b()V

    .line 414
    return-void

    .line 405
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method static a([B)V
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x4

    .line 422
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 423
    array-length v1, p0

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, p0, v5, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 424
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 425
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v5, :cond_21

    .line 426
    const/16 v3, 0x18

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 427
    const/16 v3, 0x8

    shl-long/2addr v1, v3

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 429
    :cond_21
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 262
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 263
    :goto_6
    const/4 v2, 0x4

    if-ge v0, v2, :cond_10

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 268
    :cond_10
    iget-object v0, p0, Lax/F;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 269
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 270
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 273
    invoke-static {v0}, Lax/F;->a([B)V

    .line 276
    iget-object v1, p0, Lax/F;->f:Lcom/google/googlenav/common/io/j;

    const-string v2, "star_details_index"

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I

    move-result v0

    .line 278
    if-gez v0, :cond_4b

    .line 279
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Persistent store write failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_42} :catch_42

    .line 281
    :catch_42
    move-exception v0

    .line 284
    const-string v1, "PlaceDetailsCache"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    invoke-direct {p0}, Lax/F;->c()V

    .line 287
    :cond_4b
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lax/F;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 342
    if-nez v0, :cond_2b

    .line 343
    :goto_c
    if-eqz v2, :cond_14

    .line 344
    iget-wide v3, p0, Lax/F;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 346
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lax/F;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 350
    :try_start_1c
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 351
    :goto_21
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2d

    .line 352
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_2b
    move v2, v1

    .line 342
    goto :goto_c

    .line 356
    :cond_2d
    invoke-virtual {p2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 357
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 358
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 361
    invoke-static {v1}, Lax/F;->a([B)V

    .line 364
    iget-object v4, p0, Lax/F;->f:Lcom/google/googlenav/common/io/j;

    invoke-interface {v4, v1, v3}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I

    move-result v1

    .line 365
    if-gez v1, :cond_65

    .line 366
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persistent store write failed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_5b} :catch_5b

    .line 382
    :catch_5b
    move-exception v0

    .line 385
    const-string v1, "PlaceDetailsCache"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    invoke-direct {p0, p1, v3}, Lax/F;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_64
    :goto_64
    return-void

    .line 373
    :cond_65
    if-eqz v2, :cond_64

    .line 374
    :try_start_67
    iget-object v1, p0, Lax/F;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-wide v1, p0, Lax/F;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    iput-wide v1, p0, Lax/F;->d:J

    .line 376
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbo/a;->h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 377
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 378
    const/4 v0, 0x2

    invoke-virtual {v1, v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 379
    iget-object v0, p0, Lax/F;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 380
    invoke-direct {p0}, Lax/F;->b()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_8f} :catch_5b

    goto :goto_64
.end method

.method static b([B)V
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x4

    .line 438
    array-length v0, p0

    if-ge v0, v6, :cond_c

    .line 439
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing checksum"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_c
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 442
    array-length v1, p0

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, p0, v6, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 443
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 444
    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v6, :cond_36

    .line 445
    aget-byte v3, p0, v0

    const/16 v4, 0x18

    shr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    if-eq v3, v4, :cond_30

    .line 446
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Checksum mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_30
    const/16 v3, 0x8

    shl-long/2addr v1, v3

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 450
    :cond_36
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 392
    iget-object v0, p0, Lax/F;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 393
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lax/F;->d:J

    .line 394
    iget-object v0, p0, Lax/F;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->clear()V

    .line 395
    iget-object v0, p0, Lax/F;->f:Lcom/google/googlenav/common/io/j;

    const-string v1, "star_details_"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->c(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method private e(Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lax/F;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 297
    if-nez v0, :cond_d

    move-object v0, v1

    .line 333
    :cond_c
    :goto_c
    return-object v0

    .line 300
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lax/F;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 304
    :try_start_15
    iget-object v0, p0, Lax/F;->f:Lcom/google/googlenav/common/io/j;

    invoke-interface {v0, v2}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 305
    if-nez v0, :cond_30

    .line 306
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Block not found"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_25} :catch_25

    .line 328
    :catch_25
    move-exception v0

    .line 331
    const-string v3, "PlaceDetailsCache"

    invoke-static {v3, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    invoke-direct {p0, p1, v2}, Lax/F;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 333
    goto :goto_c

    .line 310
    :cond_30
    :try_start_30
    invoke-static {v0}, Lax/F;->b([B)V

    .line 313
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 314
    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 317
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v4, Lbo/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 318
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 319
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 323
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 325
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URL mismatch: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] != ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_7e} :catch_25
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 110
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lax/F;->a:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_2c

    .line 111
    if-eqz v0, :cond_e

    .line 133
    :cond_c
    :goto_c
    monitor-exit p0

    return-object v0

    .line 116
    :cond_e
    :try_start_e
    iget-object v0, p0, Lax/F;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 117
    if-nez v0, :cond_c

    .line 122
    iget-object v0, p0, Lax/F;->f:Lcom/google/googlenav/common/io/j;

    if-nez v0, :cond_1e

    move-object v0, v1

    .line 123
    goto :goto_c

    .line 125
    :cond_1e
    invoke-direct {p0, p1}, Lax/F;->e(Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 126
    if-nez v0, :cond_26

    move-object v0, v1

    .line 127
    goto :goto_c

    .line 131
    :cond_26
    iget-object v1, p0, Lax/F;->a:Lt/f;

    invoke-virtual {v1, p1, v0}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_2c

    goto :goto_c

    .line 110
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 182
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/F;->a:Lt/f;

    invoke-virtual {v0, p1, p2}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 186
    iget-object v0, p0, Lax/F;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_21

    .line 198
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 192
    :cond_14
    :try_start_14
    iget-object v0, p0, Lax/F;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lax/F;->f:Lcom/google/googlenav/common/io/j;

    if-eqz v0, :cond_12

    .line 196
    invoke-direct {p0, p1, p2}, Lax/F;->b(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_21

    goto :goto_12

    .line 182
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 142
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lax/F;->a:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_27

    .line 143
    if-eqz v0, :cond_e

    .line 153
    :cond_c
    :goto_c
    monitor-exit p0

    return v1

    .line 148
    :cond_e
    :try_start_e
    iget-object v0, p0, Lax/F;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 153
    iget-object v0, p0, Lax/F;->f:Lcom/google/googlenav/common/io/j;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lax/F;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_27

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    :goto_23
    move v1, v0

    goto :goto_c

    :cond_25
    const/4 v0, 0x0

    goto :goto_23

    .line 142
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lax/F;->a:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 163
    if-eqz v0, :cond_19

    .line 164
    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_33

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    .line 176
    :goto_15
    monitor-exit p0

    return v0

    :cond_17
    move v0, v2

    .line 164
    goto :goto_15

    .line 169
    :cond_19
    :try_start_19
    iget-object v0, p0, Lax/F;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v2

    .line 170
    goto :goto_15

    .line 176
    :cond_23
    iget-object v0, p0, Lax/F;->f:Lcom/google/googlenav/common/io/j;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lax/F;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_33

    move-result v0

    if-eqz v0, :cond_31

    :goto_2f
    move v0, v1

    goto :goto_15

    :cond_31
    move v1, v2

    goto :goto_2f

    .line 162
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 206
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/F;->a:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lax/F;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lax/F;->f:Lcom/google/googlenav/common/io/j;

    if-eqz v0, :cond_24

    .line 213
    iget-object v0, p0, Lax/F;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 214
    if-eqz v0, :cond_24

    .line 215
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lax/F;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lax/F;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 218
    :cond_24
    monitor-exit p0

    return-void

    .line 206
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method
