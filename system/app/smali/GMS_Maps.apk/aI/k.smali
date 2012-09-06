.class LaI/k;
.super Lac/a;
.source "SourceFile"


# instance fields
.field final synthetic a:LaI/i;

.field private final b:LaT/h;

.field private final c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final d:Lat/B;

.field private final e:LaI/s;

.field private final f:I

.field private g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(LaI/i;LaI/s;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lat/B;I)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, LaI/k;->a:LaI/i;

    invoke-direct {p0}, Lac/a;-><init>()V

    .line 245
    iput-object p2, p0, LaI/k;->e:LaI/s;

    .line 246
    iput-object p3, p0, LaI/k;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 247
    iput-object p4, p0, LaI/k;->d:Lat/B;

    .line 248
    iput p5, p0, LaI/k;->f:I

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remoteSuggest ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, LaT/h;

    const-string v2, "rsd"

    const/16 v3, 0x16

    invoke-direct {v1, v0, v2, v3}, LaT/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, LaI/k;->b:LaT/h;

    .line 253
    iget-object v0, p0, LaI/k;->b:LaT/h;

    invoke-virtual {v0}, LaT/h;->a()V

    .line 254
    return-void
.end method

.method private a(I)I
    .registers 3
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, LaI/k;->a:LaI/i;

    invoke-static {v0}, LaI/i;->e(LaI/i;)I

    move-result v0

    return v0
.end method

.method private k()LaI/z;
    .registers 15

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v11, 0x2

    .line 315
    new-instance v5, LaI/z;

    iget-object v0, p0, LaI/k;->e:LaI/s;

    invoke-direct {v5, v0}, LaI/z;-><init>(LaI/s;)V

    .line 317
    iget-object v0, p0, LaI/k;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-eqz v0, :cond_be

    .line 318
    iget-object v0, p0, LaI/k;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v11, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    move v0, v1

    move v2, v1

    .line 319
    :goto_1c
    invoke-virtual {v6, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-ge v0, v3, :cond_ab

    .line 320
    invoke-virtual {v6, v11, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 321
    invoke-virtual {v7, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    .line 322
    new-instance v3, LaI/y;

    invoke-direct {v3}, LaI/y;-><init>()V

    invoke-virtual {v7, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, LaI/y;->a(Ljava/lang/String;)LaI/y;

    move-result-object v3

    invoke-virtual {v3, v8}, LaI/y;->a(I)LaI/y;

    move-result-object v3

    invoke-virtual {v3, v4}, LaI/y;->b(I)LaI/y;

    move-result-object v3

    invoke-direct {p0, v8}, LaI/k;->a(I)I

    move-result v9

    invoke-virtual {v3, v9}, LaI/y;->c(I)LaI/y;

    move-result-object v3

    iget-object v9, p0, LaI/k;->a:LaI/i;

    invoke-virtual {v9, v8}, LaI/i;->a(I)I

    move-result v9

    invoke-virtual {v3, v9}, LaI/y;->d(I)LaI/y;

    move-result-object v3

    invoke-virtual {v3, v7}, LaI/y;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaI/y;

    move-result-object v9

    .line 329
    invoke-virtual {v7, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 330
    invoke-virtual {v7, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-virtual {v9, v3}, LaI/y;->b(Ljava/lang/String;)LaI/y;

    move-result-object v10

    invoke-virtual {v10, v3}, LaI/y;->d(Ljava/lang/String;)LaI/y;

    .line 333
    :cond_66
    const/16 v3, 0xf

    invoke-virtual {v7, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 334
    const/16 v3, 0xf

    invoke-virtual {v7, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, LaI/y;->c(Ljava/lang/String;)LaI/y;

    .line 336
    :cond_77
    invoke-virtual {v7, v13}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 337
    invoke-virtual {v7, v13}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 338
    invoke-static {v3}, Lat/C;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v3

    invoke-virtual {v9, v3}, LaI/y;->a(Lat/B;)LaI/y;

    :cond_88
    move v3, v1

    .line 340
    :goto_89
    const/16 v10, 0xb

    invoke-virtual {v7, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v10

    if-ge v3, v10, :cond_9d

    .line 341
    const/16 v10, 0xb

    invoke-virtual {v7, v10, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v10

    invoke-virtual {v9, v10}, LaI/y;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaI/y;

    .line 340
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 343
    :cond_9d
    invoke-virtual {v9}, LaI/y;->a()LaI/w;

    move-result-object v3

    invoke-virtual {v5, v3}, LaI/z;->a(LaI/w;)V

    .line 345
    if-ne v8, v12, :cond_a7

    move v2, v4

    .line 319
    :cond_a7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1c

    .line 351
    :cond_ab
    if-eqz v2, :cond_be

    .line 352
    iget-object v0, p0, LaI/k;->a:LaI/i;

    invoke-static {v0}, LaI/i;->f(LaI/i;)LaI/w;

    move-result-object v0

    if-eqz v0, :cond_bf

    .line 353
    iget-object v0, p0, LaI/k;->a:LaI/i;

    invoke-static {v0}, LaI/i;->f(LaI/i;)LaI/w;

    move-result-object v0

    invoke-virtual {v5, v0}, LaI/z;->a(LaI/w;)V

    .line 361
    :cond_be
    :goto_be
    return-object v5

    .line 357
    :cond_bf
    invoke-virtual {v5, v12}, LaI/z;->c(I)V

    goto :goto_be
.end method

.method private l()V
    .registers 2

    .prologue
    .line 371
    monitor-enter p0

    .line 372
    :goto_1
    :try_start_1
    iget-object v0, p0, LaI/k;->a:LaI/i;

    invoke-static {v0}, LaI/i;->b(LaI/i;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 373
    iget-object v0, p0, LaI/k;->a:LaI/i;

    invoke-static {v0}, LaI/i;->b(LaI/i;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaI/k;

    .line 374
    if-ne v0, p0, :cond_1d

    .line 375
    monitor-exit p0

    .line 380
    :goto_1c
    return-void

    .line 377
    :cond_1d
    invoke-virtual {v0}, LaI/k;->Z()V

    goto :goto_1

    .line 379
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    goto :goto_1c
.end method


# virtual methods
.method public Z()V
    .registers 2

    .prologue
    .line 310
    invoke-super {p0}, Lac/a;->Z()V

    .line 311
    iget-object v0, p0, LaI/k;->b:LaT/h;

    invoke-virtual {v0}, LaT/h;->c()V

    .line 312
    return-void
.end method

.method public a()I
    .registers 2

    .prologue
    .line 258
    const/16 v0, 0x4c

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 276
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/gP;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 279
    const/4 v1, 0x5

    iget-object v2, p0, LaI/k;->a:LaI/i;

    invoke-static {v2}, LaI/i;->d(LaI/i;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 281
    iget v1, p0, LaI/k;->f:I

    if-eqz v1, :cond_1c

    .line 282
    const/4 v1, 0x4

    iget v2, p0, LaI/k;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 284
    :cond_1c
    iget-object v1, p0, LaI/k;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_26

    .line 285
    const/4 v1, 0x2

    iget-object v2, p0, LaI/k;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 287
    :cond_26
    iget-object v1, p0, LaI/k;->d:Lat/B;

    if-eqz v1, :cond_34

    .line 288
    const/4 v1, 0x3

    iget-object v2, p0, LaI/k;->d:Lat/B;

    invoke-static {v2}, Lat/C;->c(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 291
    :cond_34
    iget-object v1, p0, LaI/k;->e:LaI/s;

    invoke-virtual {v1}, LaI/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 292
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 293
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 294
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 295
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 296
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 444
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/gP;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, LaI/k;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 446
    const/4 v0, 0x1

    return v0
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public l_()V
    .registers 4

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 384
    iget-object v0, p0, LaI/k;->b:LaT/h;

    invoke-virtual {v0}, LaT/h;->b()V

    .line 387
    iget-object v0, p0, LaI/k;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 388
    iget-object v0, p0, LaI/k;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 389
    const/4 v1, -0x1

    invoke-static {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 391
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Las/f;->a(I)V

    .line 396
    :cond_21
    iget-object v0, p0, LaI/k;->a:LaI/i;

    invoke-static {v0}, LaI/i;->b(LaI/i;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, LaI/k;->A_()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 426
    :cond_33
    :goto_33
    return-void

    .line 401
    :cond_34
    iget-object v0, p0, LaI/k;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 403
    iget-object v1, p0, LaI/k;->e:LaI/s;

    invoke-virtual {v1}, LaI/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Laa/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 406
    invoke-virtual {p0}, LaI/k;->Z()V

    goto :goto_33

    .line 410
    :cond_4a
    invoke-direct {p0}, LaI/k;->l()V

    .line 416
    iget-object v0, p0, LaI/k;->a:LaI/i;

    invoke-virtual {v0}, LaI/i;->f()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 417
    invoke-direct {p0}, LaI/k;->k()LaI/z;

    move-result-object v0

    .line 418
    iget-object v1, p0, LaI/k;->e:LaI/s;

    invoke-static {v1}, LaI/f;->e(LaI/s;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 421
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v1

    invoke-virtual {v1}, LaI/o;->b()V

    .line 424
    :cond_68
    iget-object v1, p0, LaI/k;->a:LaI/i;

    invoke-virtual {v1, v0, v2}, LaI/i;->a(LaI/z;Z)V

    goto :goto_33
.end method

.method public m_()V
    .registers 5

    .prologue
    .line 430
    iget-object v0, p0, LaI/k;->b:LaT/h;

    invoke-virtual {v0}, LaT/h;->c()V

    .line 431
    invoke-direct {p0}, LaI/k;->l()V

    .line 434
    iget-object v0, p0, LaI/k;->a:LaI/i;

    invoke-virtual {v0}, LaI/i;->h()Z

    .line 437
    const/4 v0, 0x1

    .line 438
    iget-object v1, p0, LaI/k;->a:LaI/i;

    new-instance v2, LaI/z;

    iget-object v3, p0, LaI/k;->e:LaI/s;

    invoke-direct {v2, v3}, LaI/z;-><init>(LaI/s;)V

    invoke-virtual {v1, v2, v0}, LaI/i;->a(LaI/z;Z)V

    .line 439
    return-void
.end method
