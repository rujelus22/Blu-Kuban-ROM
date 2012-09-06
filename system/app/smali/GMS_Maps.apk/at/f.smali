.class Lat/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:[B

.field private static e:Lat/f;

.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Vector;

.field private b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 79
    sput-object v0, Lat/f;->d:[B

    .line 84
    sput-object v0, Lat/f;->e:Lat/f;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lat/f;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/f;->c:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lat/f;->b:I

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lat/f;->a:Ljava/util/Vector;

    .line 96
    return-void
.end method

.method private a([BLat/P;)Lat/I;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 330
    .line 332
    if-eqz p1, :cond_7

    array-length v1, p1

    if-nez v1, :cond_9

    :cond_7
    move-object v0, v2

    .line 370
    :goto_8
    return-object v0

    .line 338
    :cond_9
    :try_start_9
    invoke-static {p1}, Lcom/google/googlenav/common/io/i;->a([B)Ljava/io/DataInput;

    move-result-object v4

    .line 339
    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    .line 341
    invoke-virtual {p0}, Lat/f;->a()I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_57

    move-result v1

    if-eq v5, v1, :cond_19

    move-object v0, v2

    .line 343
    goto :goto_8

    :cond_19
    move v3, v0

    move-object v1, v2

    .line 346
    :goto_1b
    if-ge v3, v5, :cond_60

    .line 347
    :try_start_1d
    invoke-static {v4}, Lat/I;->a(Ljava/io/DataInput;)Lat/I;

    move-result-object v0

    .line 349
    iget-boolean v6, p0, Lat/f;->c:Z

    if-eqz v6, :cond_38

    .line 350
    new-instance v6, Lat/e;

    invoke-direct {v6, v0}, Lat/e;-><init>(Lat/I;)V

    .line 351
    iget-object v7, p0, Lat/f;->a:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lat/e;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    move-object v0, v2

    .line 353
    goto :goto_8

    .line 357
    :cond_38
    invoke-virtual {v0}, Lat/I;->c()Lat/P;

    move-result-object v6

    invoke-virtual {v6, p2}, Lat/P;->equals(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_3f} :catch_5b

    move-result v6

    if-eqz v6, :cond_51

    .line 359
    :try_start_42
    iget-boolean v1, p0, Lat/f;->c:Z

    if-nez v1, :cond_52

    .line 365
    :goto_46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lat/f;->c:Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_4a

    goto :goto_8

    .line 366
    :catch_4a
    move-exception v1

    .line 367
    :goto_4b
    const-string v2, "FLASH"

    invoke-static {v2, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_51
    move-object v0, v1

    .line 346
    :cond_52
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1b

    .line 366
    :catch_57
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_4b

    :catch_5b
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4b

    :cond_60
    move-object v0, v1

    goto :goto_46
.end method

.method public static a(Ljava/io/DataInput;)Lat/f;
    .registers 6
    .parameter

    .prologue
    .line 274
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 275
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 276
    new-instance v3, Lat/f;

    invoke-direct {v3}, Lat/f;-><init>()V

    .line 278
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v1, :cond_25

    .line 279
    invoke-static {p0}, Lat/e;->a(Ljava/io/DataInput;)Lat/e;

    move-result-object v4

    .line 280
    invoke-virtual {v3, v4}, Lat/f;->a(Lat/e;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 281
    new-instance v0, Ljava/io/IOException;

    const-string v1, "FlashRecord full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 284
    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, v3, Lat/f;->c:Z

    .line 285
    iput v2, v3, Lat/f;->b:I

    .line 287
    return-object v3
.end method

.method static f()V
    .registers 2

    .prologue
    .line 511
    sget-object v1, Lat/f;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Lat/f;->d:[B

    .line 513
    const/4 v0, 0x0

    sput-object v0, Lat/f;->e:Lat/f;

    .line 514
    monitor-exit v1

    .line 515
    return-void

    .line 514
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lat/f;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public a(J)J
    .registers 11
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lat/f;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    .line 195
    const-wide/16 v1, 0x0

    .line 197
    if-lez v3, :cond_25

    .line 198
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v3, :cond_21

    .line 199
    invoke-virtual {p0, v0}, Lat/f;->a(I)Lat/e;

    move-result-object v4

    .line 200
    invoke-virtual {v4}, Lat/e;->a()Lat/P;

    move-result-object v5

    invoke-virtual {v4}, Lat/e;->b()J

    move-result-wide v6

    invoke-static {v5, p1, p2, v6, v7}, Lat/D;->a(Lat/P;JJ)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 208
    :cond_21
    int-to-long v3, v3

    div-long v0, v1, v3

    .line 211
    :goto_24
    return-wide v0

    :cond_25
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_24
.end method

.method public a(Ljava/lang/String;Lat/P;)Lat/I;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 421
    iget v1, p0, Lat/f;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 452
    :cond_6
    :goto_6
    return-object v0

    .line 429
    :cond_7
    sget-object v2, Lat/f;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 430
    :try_start_a
    sget-object v1, Lat/f;->e:Lat/f;

    invoke-virtual {p0, v1}, Lat/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 431
    sget-object v1, Lat/f;->d:[B

    .line 433
    :goto_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_37

    .line 435
    if-nez v1, :cond_30

    .line 436
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v1

    .line 439
    if-eqz v1, :cond_30

    array-length v2, v1

    if-eqz v2, :cond_30

    .line 440
    sget-object v2, Lat/f;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 441
    :try_start_2b
    sput-object v1, Lat/f;->d:[B

    .line 442
    sput-object p0, Lat/f;->e:Lat/f;

    .line 443
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_3a

    .line 447
    :cond_30
    if-eqz v1, :cond_6

    .line 452
    invoke-direct {p0, v1, p2}, Lat/f;->a([BLat/P;)Lat/I;

    move-result-object v0

    goto :goto_6

    .line 433
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0

    .line 443
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    move-object v1, v0

    goto :goto_14
.end method

.method public a(I)Lat/e;
    .registers 3
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lat/f;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/e;

    return-object v0
.end method

.method public a(Lat/P;)Lat/e;
    .registers 5
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lat/f;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 122
    invoke-virtual {p0, v0}, Lat/f;->a(I)Lat/e;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lat/e;->a()Lat/P;

    move-result-object v2

    invoke-virtual {v2, p1}, Lat/P;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object v0, v1

    .line 128
    :goto_18
    return-object v0

    .line 121
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 300
    iget v0, p0, Lat/f;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 301
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t write unsaved FlashRecord"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_d
    invoke-virtual {p0}, Lat/f;->a()I

    move-result v1

    .line 306
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 307
    iget v0, p0, Lat/f;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 308
    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v1, :cond_26

    .line 309
    invoke-virtual {p0, v0}, Lat/f;->a(I)Lat/e;

    move-result-object v2

    .line 310
    invoke-virtual {v2, p1}, Lat/e;->a(Ljava/io/DataOutput;)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 312
    :cond_26
    return-void
.end method

.method a(Ljava/lang/String;I[B)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    iget v0, p0, Lat/f;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 471
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_d
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/google/googlenav/common/io/j;->a([BLjava/lang/String;)I

    .line 478
    iput p2, p0, Lat/f;->b:I

    .line 479
    return-void
.end method

.method public a(Lat/e;)Z
    .registers 4
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0}, Lat/f;->a()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_d

    iget v0, p0, Lat/f;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 108
    :cond_d
    const/4 v0, 0x0

    .line 113
    :goto_e
    return v0

    .line 111
    :cond_f
    iget-object v0, p0, Lat/f;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p1, p0}, Lat/e;->a(Lat/f;)V

    .line 113
    const/4 v0, 0x1

    goto :goto_e
.end method

.method a(Ljava/util/Hashtable;)[B
    .registers 7
    .parameter

    .prologue
    .line 385
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const v0, 0x11940

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 387
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 388
    invoke-virtual {p0}, Lat/f;->a()I

    move-result v4

    .line 390
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 391
    const/4 v0, 0x0

    move v1, v0

    :goto_16
    if-ge v1, v4, :cond_31

    .line 392
    invoke-virtual {p0, v1}, Lat/f;->a(I)Lat/e;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lat/e;->a()Lat/P;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/I;

    .line 394
    if-nez v0, :cond_2a

    .line 395
    const/4 v0, 0x0

    .line 400
    :goto_29
    return-object v0

    .line 397
    :cond_2a
    invoke-virtual {v0, v3}, Lat/I;->a(Ljava/io/DataOutput;)V

    .line 391
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 400
    :cond_31
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_29
.end method

.method public b()I
    .registers 5

    .prologue
    .line 151
    iget-object v0, p0, Lat/f;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 152
    const/4 v1, 0x1

    .line 154
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_16

    .line 155
    invoke-virtual {p0, v0}, Lat/f;->a(I)Lat/e;

    move-result-object v3

    invoke-virtual {v3}, Lat/e;->c()I

    move-result v3

    add-int/2addr v1, v3

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 158
    :cond_16
    return v1
.end method

.method public c()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lat/f;->b:I

    return v0
.end method

.method d()Z
    .registers 3

    .prologue
    .line 174
    iget v0, p0, Lat/f;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method e()V
    .registers 2

    .prologue
    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lat/f;->b:I

    .line 184
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    if-ne p0, p1, :cond_6

    move v0, v1

    .line 258
    :goto_5
    return v0

    .line 235
    :cond_6
    instance-of v0, p1, Lat/f;

    if-nez v0, :cond_c

    move v0, v2

    .line 236
    goto :goto_5

    .line 239
    :cond_c
    check-cast p1, Lat/f;

    .line 241
    iget v0, p0, Lat/f;->b:I

    iget v3, p1, Lat/f;->b:I

    if-eq v0, v3, :cond_16

    move v0, v2

    .line 242
    goto :goto_5

    .line 245
    :cond_16
    invoke-virtual {p0}, Lat/f;->a()I

    move-result v4

    .line 246
    invoke-virtual {p1}, Lat/f;->a()I

    move-result v0

    if-eq v4, v0, :cond_22

    move v0, v2

    .line 247
    goto :goto_5

    .line 250
    :cond_22
    iget-object v5, p1, Lat/f;->a:Ljava/util/Vector;

    move v3, v2

    .line 251
    :goto_25
    if-ge v3, v4, :cond_3f

    .line 252
    iget-object v0, p0, Lat/f;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/e;

    .line 253
    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lat/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    move v0, v2

    .line 254
    goto :goto_5

    .line 251
    :cond_3b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_25

    :cond_3f
    move v0, v1

    .line 258
    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 264
    iget v0, p0, Lat/f;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
