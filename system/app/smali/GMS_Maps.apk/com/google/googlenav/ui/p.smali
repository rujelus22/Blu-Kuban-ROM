.class public Lcom/google/googlenav/ui/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/g;


# static fields
.field static final a:C


# instance fields
.field final b:I

.field private c:Ljava/util/List;

.field private d:[J

.field private e:Ljava/util/Map;

.field private f:Ljava/util/Map;

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 62
    const v0, 0xec32

    const v1, 0xecff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcom/google/googlenav/ui/p;->a:C

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/p;->h:Z

    .line 113
    sget-char v0, Lcom/google/googlenav/ui/p;->a:C

    const v1, 0xec00

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/p;->b:I

    .line 114
    invoke-virtual {p0}, Lcom/google/googlenav/ui/p;->b()V

    .line 115
    return-void
.end method

.method public static a(Lcom/google/googlenav/ui/p;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7
    .parameter

    .prologue
    .line 354
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bz;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 355
    if-eqz p0, :cond_22

    .line 356
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/p;->f()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 357
    invoke-virtual {p0}, Lcom/google/googlenav/ui/p;->e()[J

    move-result-object v2

    .line 358
    const/4 v0, 0x0

    :goto_16
    array-length v3, v2

    if-ge v0, v3, :cond_22

    .line 359
    const/4 v3, 0x3

    aget-wide v4, v2, v0

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 362
    :cond_22
    const/4 v0, 0x1

    invoke-static {}, Lcom/google/googlenav/ui/p;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 363
    return-object v1
.end method

.method private e(J)Z
    .registers 5
    .parameter

    .prologue
    .line 382
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private f(J)V
    .registers 5
    .parameter

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    .line 391
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/p;->c(J)Lcom/google/googlenav/ui/r;

    move-result-object v0

    .line 392
    if-nez v0, :cond_a

    .line 400
    :goto_9
    return-void

    .line 396
    :cond_a
    iget-char v0, v0, Lcom/google/googlenav/ui/r;->d:C

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/google/googlenav/ui/p;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, p0, Lcom/google/googlenav/ui/p;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/google/googlenav/ui/p;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method private static j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 371
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/D;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 372
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 374
    return-object v0
.end method

.method private k()V
    .registers 2

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/google/googlenav/ui/p;->h:Z

    if-nez v0, :cond_7

    .line 503
    invoke-virtual {p0}, Lcom/google/googlenav/ui/p;->i()V

    .line 505
    :cond_7
    return-void
.end method


# virtual methods
.method public a(J)C
    .registers 4
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/p;->c(J)Lcom/google/googlenav/ui/r;

    move-result-object v0

    .line 143
    if-nez v0, :cond_d

    const v0, 0xec00

    :goto_c
    return v0

    :cond_d
    invoke-static {v0}, Lcom/google/googlenav/ui/r;->a(Lcom/google/googlenav/ui/r;)C

    move-result v0

    goto :goto_c
.end method

.method public a([BJ)Lcom/google/googlenav/ui/r;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 325
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    .line 326
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_d

    .line 346
    :cond_c
    :goto_c
    return-object v5

    .line 330
    :cond_d
    invoke-virtual {p0, p2, p3}, Lcom/google/googlenav/ui/p;->c(J)Lcom/google/googlenav/ui/r;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_17

    .line 333
    iput-object p1, v0, Lcom/google/googlenav/ui/r;->a:[B

    move-object v5, v0

    .line 334
    goto :goto_c

    .line 337
    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 341
    iget-object v0, p0, Lcom/google/googlenav/ui/p;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-char v4, v0

    .line 343
    new-instance v0, Lcom/google/googlenav/ui/r;

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/r;-><init>([BJCLcom/google/googlenav/ui/q;)V

    .line 344
    iget-object v1, p0, Lcom/google/googlenav/ui/p;->e:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v1, p0, Lcom/google/googlenav/ui/p;->f:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v0

    .line 346
    goto :goto_c
.end method

.method public a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    iget-object v0, p0, Lcom/google/googlenav/ui/p;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 640
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 642
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Set;)Ljava/util/Set;
    .registers 13
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v4, 0x0

    .line 234
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    .line 235
    invoke-virtual {p0}, Lcom/google/googlenav/ui/p;->c()I

    move-result v0

    new-array v5, v0, [J

    .line 238
    const/4 v1, 0x0

    .line 241
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :cond_12
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 242
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v2, v7, v9

    if-eqz v2, :cond_12

    .line 246
    invoke-virtual {p0}, Lcom/google/googlenav/ui/p;->c()I

    move-result v2

    if-ge v3, v2, :cond_37

    .line 247
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v5, v3

    move v0, v2

    :goto_35
    move v3, v0

    .line 253
    goto :goto_12

    .line 250
    :cond_37
    if-nez v1, :cond_3e

    .line 251
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 253
    :cond_3e
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_35

    .line 265
    :cond_43
    invoke-direct {p0, v6, v7}, Lcom/google/googlenav/ui/p;->e(J)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 266
    invoke-direct {p0, v6, v7}, Lcom/google/googlenav/ui/p;->f(J)V

    .line 258
    :cond_4c
    :goto_4c
    add-int/lit8 v4, v4, 0x1

    :cond_4e
    iget-object v0, p0, Lcom/google/googlenav/ui/p;->d:[J

    array-length v0, v0

    if-ge v4, v0, :cond_5b

    .line 259
    iget-object v0, p0, Lcom/google/googlenav/ui/p;->d:[J

    aget-wide v6, v0, v4

    .line 260
    cmp-long v0, v6, v9

    if-nez v0, :cond_43

    .line 281
    :cond_5b
    iput-object v5, p0, Lcom/google/googlenav/ui/p;->d:[J

    .line 282
    return-object v1

    .line 270
    :cond_5e
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 274
    array-length v0, v5

    if-ge v3, v0, :cond_71

    .line 275
    add-int/lit8 v0, v3, 0x1

    aput-wide v6, v5, v3

    move v3, v0

    goto :goto_4c

    .line 277
    :cond_71
    invoke-direct {p0, v6, v7}, Lcom/google/googlenav/ui/p;->f(J)V

    goto :goto_4c
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    .line 219
    iget v0, p0, Lcom/google/googlenav/ui/p;->g:I

    if-eq v0, p1, :cond_c

    .line 220
    invoke-virtual {p0}, Lcom/google/googlenav/ui/p;->b()V

    .line 221
    iput p1, p0, Lcom/google/googlenav/ui/p;->g:I

    .line 223
    :cond_c
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/Set;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 289
    if-eqz p1, :cond_c

    .line 291
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 292
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/p;->a(I)V

    .line 299
    :cond_c
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/p;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 302
    if-eqz p1, :cond_3b

    .line 303
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 304
    const/4 v0, 0x0

    :goto_17
    if-ge v0, v2, :cond_3b

    .line 305
    invoke-virtual {p1, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 308
    if-eqz v3, :cond_38

    .line 309
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    .line 310
    if-eqz v1, :cond_30

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 311
    :cond_30
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/googlenav/ui/p;->a([BJ)Lcom/google/googlenav/ui/r;

    .line 304
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 316
    :cond_3b
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    .line 452
    :try_start_3
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    .line 453
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bz;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 455
    const/16 v0, 0x11

    iget v3, p0, Lcom/google/googlenav/ui/p;->g:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 457
    const/4 v0, 0x0

    :goto_1a
    iget-object v3, p0, Lcom/google/googlenav/ui/p;->d:[J

    array-length v3, v3

    if-ge v0, v3, :cond_29

    .line 458
    iget-object v3, p0, Lcom/google/googlenav/ui/p;->d:[J

    aget-wide v3, v3, v0

    .line 459
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_47

    .line 482
    :cond_29
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 484
    const/4 v3, 0x4

    if-le v0, v3, :cond_37

    .line 485
    const/4 v3, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    .line 489
    :cond_37
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 490
    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 491
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I

    .line 495
    :goto_46
    return-void

    .line 462
    :cond_47
    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/ui/p;->e(J)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 457
    :cond_4d
    :goto_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 466
    :cond_50
    invoke-virtual {p0, v3, v4}, Lcom/google/googlenav/ui/p;->c(J)Lcom/google/googlenav/ui/r;

    move-result-object v3

    .line 467
    if-eqz v3, :cond_4d

    .line 468
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 470
    const/4 v5, 0x2

    iget-wide v6, v3, Lcom/google/googlenav/ui/r;->c:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 472
    const/4 v5, 0x3

    iget-object v3, v3, Lcom/google/googlenav/ui/r;->a:[B

    invoke-virtual {v4, v5, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 474
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6b} :catch_6c

    goto :goto_4d

    .line 492
    :catch_6c
    move-exception v0

    goto :goto_46
.end method

.method public a(C)Z
    .registers 3
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    .line 149
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/p;->f(C)Lcom/google/googlenav/ui/r;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(CLS/e;II)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    .line 160
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/p;->f(C)Lcom/google/googlenav/ui/r;

    move-result-object v1

    .line 161
    if-nez v1, :cond_b

    .line 168
    :cond_a
    :goto_a
    return v0

    .line 164
    :cond_b
    invoke-static {v1}, Lcom/google/googlenav/ui/r;->b(Lcom/google/googlenav/ui/r;)LS/f;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 167
    invoke-static {v1}, Lcom/google/googlenav/ui/r;->b(Lcom/google/googlenav/ui/r;)LS/f;

    move-result-object v0

    invoke-interface {p2, v0, p3, p4}, LS/e;->a(LS/f;II)V

    .line 168
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public b(C)I
    .registers 4
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/p;->f(C)Lcom/google/googlenav/ui/r;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/google/googlenav/ui/r;->b(Lcom/google/googlenav/ui/r;)LS/f;

    move-result-object v1

    if-nez v1, :cond_11

    .line 176
    :cond_f
    const/4 v0, -0x1

    .line 178
    :goto_10
    return v0

    :cond_11
    invoke-static {v0}, Lcom/google/googlenav/ui/r;->b(Lcom/google/googlenav/ui/r;)LS/f;

    move-result-object v0

    invoke-interface {v0}, LS/f;->b()I

    move-result v0

    goto :goto_10
.end method

.method public b(J)LS/f;
    .registers 4
    .parameter

    .prologue
    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/p;->c(J)Lcom/google/googlenav/ui/r;

    move-result-object v0

    .line 207
    if-nez v0, :cond_8

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_7
    return-object v0

    :cond_8
    invoke-static {v0}, Lcom/google/googlenav/ui/r;->b(Lcom/google/googlenav/ui/r;)LS/f;

    move-result-object v0

    goto :goto_7
.end method

.method public b()V
    .registers 5

    .prologue
    const v1, 0xec00

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/p;->g:I

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/p;->e:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/p;->f:Ljava/util/Map;

    .line 125
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/googlenav/ui/p;->d:[J

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/p;->c()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/p;->c:Ljava/util/List;

    move v0, v1

    .line 128
    :goto_25
    iget v2, p0, Lcom/google/googlenav/ui/p;->b:I

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_37

    .line 129
    iget-object v2, p0, Lcom/google/googlenav/ui/p;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_25

    .line 131
    :cond_37
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 518
    iput-boolean v7, p0, Lcom/google/googlenav/ui/p;->h:Z

    .line 519
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 520
    invoke-static {v0, p1}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/io/j;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v1

    .line 521
    if-nez v1, :cond_12

    .line 549
    :cond_11
    :goto_11
    return-void

    .line 525
    :cond_12
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/bz;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 528
    :try_start_19
    invoke-interface {v0, p1}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_20} :catch_4b

    .line 534
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/p;->g:I

    .line 536
    invoke-virtual {v1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 538
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/google/googlenav/ui/p;->d:[J

    .line 539
    const/4 v0, 0x0

    :goto_31
    if-ge v0, v2, :cond_11

    .line 540
    invoke-virtual {v1, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 542
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v4

    .line 544
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v5

    .line 546
    iget-object v3, p0, Lcom/google/googlenav/ui/p;->d:[J

    aput-wide v5, v3, v0

    .line 547
    invoke-virtual {p0, v4, v5, v6}, Lcom/google/googlenav/ui/p;->a([BJ)Lcom/google/googlenav/ui/r;

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 529
    :catch_4b
    move-exception v0

    goto :goto_11
.end method

.method public c()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/google/googlenav/ui/p;->b:I

    return v0
.end method

.method public c(C)I
    .registers 4
    .parameter

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    .line 184
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/p;->f(C)Lcom/google/googlenav/ui/r;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/google/googlenav/ui/r;->b(Lcom/google/googlenav/ui/r;)LS/f;

    move-result-object v1

    if-nez v1, :cond_11

    .line 186
    :cond_f
    const/4 v0, -0x1

    .line 188
    :goto_10
    return v0

    :cond_11
    invoke-static {v0}, Lcom/google/googlenav/ui/r;->b(Lcom/google/googlenav/ui/r;)LS/f;

    move-result-object v0

    invoke-interface {v0}, LS/f;->a()I

    move-result v0

    goto :goto_10
.end method

.method protected c(J)Lcom/google/googlenav/ui/r;
    .registers 5
    .parameter

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    .line 558
    iget-object v0, p0, Lcom/google/googlenav/ui/p;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/r;

    return-object v0
.end method

.method public d(C)I
    .registers 3
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x2

    return v0
.end method

.method public d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 367
    invoke-static {p0}, Lcom/google/googlenav/ui/p;->a(Lcom/google/googlenav/ui/p;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public d(J)[B
    .registers 4
    .parameter

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    .line 567
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/p;->c(J)Lcom/google/googlenav/ui/r;

    move-result-object v0

    .line 568
    if-nez v0, :cond_b

    .line 569
    const/4 v0, 0x0

    .line 572
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, v0, Lcom/google/googlenav/ui/r;->a:[B

    goto :goto_a
.end method

.method public e(C)LS/f;
    .registers 3
    .parameter

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/p;->f(C)Lcom/google/googlenav/ui/r;

    move-result-object v0

    .line 199
    if-nez v0, :cond_8

    .line 200
    const/4 v0, 0x0

    .line 202
    :goto_7
    return-object v0

    :cond_8
    invoke-static {v0}, Lcom/google/googlenav/ui/r;->b(Lcom/google/googlenav/ui/r;)LS/f;

    move-result-object v0

    goto :goto_7
.end method

.method public e()[J
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 406
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    move v0, v1

    move v2, v1

    .line 409
    :goto_6
    iget-object v3, p0, Lcom/google/googlenav/ui/p;->d:[J

    array-length v3, v3

    if-ge v0, v3, :cond_15

    .line 410
    iget-object v3, p0, Lcom/google/googlenav/ui/p;->d:[J

    aget-wide v3, v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 418
    :cond_15
    new-array v4, v2, [J

    move v3, v1

    move v0, v1

    .line 421
    :goto_19
    if-ge v0, v2, :cond_3e

    .line 422
    iget-object v1, p0, Lcom/google/googlenav/ui/p;->d:[J

    aget-wide v5, v1, v3

    .line 423
    invoke-direct {p0, v5, v6}, Lcom/google/googlenav/ui/p;->e(J)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 421
    :goto_25
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_19

    .line 413
    :cond_29
    iget-object v3, p0, Lcom/google/googlenav/ui/p;->d:[J

    aget-wide v3, v3, v0

    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/ui/p;->e(J)Z

    move-result v3

    if-nez v3, :cond_35

    .line 414
    add-int/lit8 v2, v2, 0x1

    .line 409
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 426
    :cond_38
    add-int/lit8 v1, v0, 0x1

    aput-wide v5, v4, v0

    move v0, v1

    goto :goto_25

    .line 428
    :cond_3e
    return-object v4
.end method

.method public f()I
    .registers 2

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    .line 436
    iget v0, p0, Lcom/google/googlenav/ui/p;->g:I

    return v0
.end method

.method protected f(C)Lcom/google/googlenav/ui/r;
    .registers 4
    .parameter

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/google/googlenav/ui/p;->k()V

    .line 553
    iget-object v0, p0, Lcom/google/googlenav/ui/p;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/r;

    return-object v0
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 4

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 586
    iget-object v1, p0, Lcom/google/googlenav/ui/p;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/r;

    .line 587
    invoke-virtual {v0}, Lcom/google/googlenav/ui/r;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_c

    .line 589
    :cond_1f
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v2, "DownloadedIconProvider"

    invoke-direct {v0, v2, v1}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public h()V
    .registers 2

    .prologue
    .line 443
    const-string v0, "SAVED_REMOTE_ICONS_DATA_BLOCK"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/p;->a(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method protected i()V
    .registers 2

    .prologue
    .line 511
    const-string v0, "SAVED_REMOTE_ICONS_DATA_BLOCK"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/p;->b(Ljava/lang/String;)V

    .line 512
    return-void
.end method
