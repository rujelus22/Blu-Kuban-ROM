.class public Lam/a;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Lam/i;

.field private final b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private d:Lcom/google/googlenav/a;

.field private e:Lam/n;

.field private f:Lam/c;


# direct methods
.method public constructor <init>(Lam/i;)V
    .registers 5
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 101
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ec;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lam/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 103
    iget-object v0, p0, Lam/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    sget v2, Lcom/google/googlenav/ui/bn;->bF:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 106
    iput-object p1, p0, Lam/a;->a:Lam/i;

    .line 107
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lam/h;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 419
    sget-object v0, Lam/b;->a:[I

    invoke-virtual {p2}, Lam/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 431
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 421
    :pswitch_d
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    goto :goto_c

    .line 424
    :pswitch_13
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    goto :goto_c

    .line 427
    :pswitch_19
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    goto :goto_c

    .line 419
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_d
        :pswitch_13
        :pswitch_19
    .end packed-switch
.end method

.method private a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lam/h;I)Ljava/util/List;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 345
    const/4 v0, 0x0

    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_41

    .line 346
    aget-object v2, p1, v0

    .line 348
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v3

    .line 350
    if-gez v3, :cond_15

    .line 345
    :cond_12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 355
    :cond_15
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v4

    .line 357
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_12

    .line 363
    iget-object v6, p0, Lam/a;->a:Lam/i;

    invoke-virtual {v6, v4, v5}, Lam/i;->a(J)Lam/m;

    move-result-object v4

    .line 364
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lam/m;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 369
    invoke-direct {p0, v2, p2}, Lam/a;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lam/h;)I

    move-result v2

    .line 371
    new-instance v5, Lam/f;

    add-int v6, p3, v0

    invoke-direct {v5, v6, v3, v2, v4}, Lam/f;-><init>(IIILam/m;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 373
    :cond_41
    return-object v1
.end method

.method private a(Lcom/google/googlenav/a;Z)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 130
    invoke-virtual {p1}, Lcom/google/googlenav/a;->c()Z

    move-result v0

    if-nez v0, :cond_a

    .line 169
    :cond_9
    :goto_9
    return-void

    .line 134
    :cond_a
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ec;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 137
    invoke-virtual {p1}, Lcom/google/googlenav/a;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 138
    invoke-virtual {p1}, Lcom/google/googlenav/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 141
    invoke-virtual {p1}, Lcom/google/googlenav/a;->g()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 143
    :try_start_28
    invoke-virtual {p1}, Lcom/google/googlenav/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/az;->a(Ljava/lang/String;)J

    move-result-wide v1

    .line 144
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_34} :catch_65

    .line 150
    :cond_34
    :goto_34
    invoke-virtual {p1}, Lcom/google/googlenav/a;->f()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 151
    invoke-virtual {p1}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 153
    invoke-static {v1, v7}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 155
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 158
    :cond_4c
    const/16 v2, 0x18

    invoke-static {v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 159
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 163
    :cond_58
    iget-object v1, p0, Lam/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 165
    if-eqz p2, :cond_9

    .line 166
    iget-object v1, p0, Lam/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_9

    .line 145
    :catch_65
    move-exception v1

    goto :goto_34
.end method

.method private k()I
    .registers 4

    .prologue
    .line 297
    iget-object v0, p0, Lam/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_d

    .line 298
    iget-object v0, p0, Lam/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 302
    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method private l()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    .line 308
    invoke-direct {p0}, Lam/a;->m()Ljava/util/List;

    move-result-object v2

    .line 309
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/m;

    .line 310
    iget-object v3, p0, Lam/a;->a:Lam/i;

    invoke-virtual {v3, v0}, Lam/i;->a(Lam/m;)V

    goto :goto_b

    .line 314
    :cond_1d
    iget-object v0, p0, Lam/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lam/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 319
    invoke-direct {p0}, Lam/a;->n()Lam/h;

    move-result-object v1

    .line 320
    invoke-static {v1}, Lam/d;->a(Lam/h;)Lam/d;

    move-result-object v4

    .line 321
    invoke-direct {p0, v0, v1, v5}, Lam/a;->a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lam/h;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lam/d;->a(Ljava/util/List;)V

    .line 323
    invoke-static {v1}, Lam/d;->a(Lam/h;)Lam/d;

    move-result-object v0

    .line 324
    invoke-direct {p0, v3, v1, v5}, Lam/a;->a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lam/h;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lam/d;->a(Ljava/util/List;)V

    .line 327
    iget-object v3, p0, Lam/a;->e:Lam/n;

    invoke-direct {p0}, Lam/a;->n()Lam/h;

    move-result-object v5

    invoke-virtual {v3, v5}, Lam/n;->a(Lam/h;)V

    .line 328
    iget-object v3, p0, Lam/a;->e:Lam/n;

    invoke-virtual {v3, v4}, Lam/n;->a(Lam/d;)V

    .line 329
    iget-object v3, p0, Lam/a;->e:Lam/n;

    invoke-virtual {v3, v0}, Lam/n;->b(Lam/d;)V

    .line 330
    iget-object v0, p0, Lam/a;->e:Lam/n;

    invoke-virtual {v0, v2}, Lam/n;->a(Ljava/util/List;)V

    .line 333
    iget-object v0, p0, Lam/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v2

    .line 335
    iget-object v0, p0, Lam/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v4, 0x7

    invoke-static {v0, v4}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v4

    .line 337
    iget-object v0, p0, Lam/a;->e:Lam/n;

    div-long/2addr v2, v6

    div-long/2addr v4, v6

    invoke-virtual/range {v0 .. v5}, Lam/n;->a(Lam/h;JJ)V

    .line 339
    return-void
.end method

.method private m()Ljava/util/List;
    .registers 15

    .prologue
    .line 377
    iget-object v0, p0, Lam/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 379
    iget-object v0, p0, Lam/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v3

    .line 381
    iget-object v0, p0, Lam/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v5

    .line 383
    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-nez v0, :cond_1c

    .line 387
    :cond_1c
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v7

    .line 388
    array-length v8, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_23
    if-ge v1, v8, :cond_45

    aget-object v9, v2, v1

    .line 389
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v10

    .line 391
    const-wide/16 v12, 0x0

    cmp-long v0, v5, v12

    if-eqz v0, :cond_43

    cmp-long v0, v5, v10

    if-nez v0, :cond_43

    const/4 v0, 0x1

    .line 392
    :goto_37
    new-instance v10, Lam/m;

    invoke-direct {v10, v9, v0, v3, v4}, Lam/m;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ZJ)V

    .line 393
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    .line 391
    :cond_43
    const/4 v0, 0x0

    goto :goto_37

    .line 395
    :cond_45
    return-object v7
.end method

.method private n()Lam/h;
    .registers 3

    .prologue
    .line 402
    iget-object v0, p0, Lam/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 411
    sget-object v0, Lam/h;->b:Lam/h;

    :goto_d
    return-object v0

    .line 404
    :pswitch_e
    sget-object v0, Lam/h;->a:Lam/h;

    goto :goto_d

    .line 406
    :pswitch_11
    sget-object v0, Lam/h;->b:Lam/h;

    goto :goto_d

    .line 408
    :pswitch_14
    sget-object v0, Lam/h;->c:Lam/h;

    goto :goto_d

    .line 402
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 268
    const/16 v0, 0x7c

    return v0
.end method

.method public a(I)Lam/a;
    .registers 5
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lam/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 202
    iget-object v0, p0, Lam/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 203
    return-object p0
.end method

.method public a(II)Lam/a;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lam/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 217
    iget-object v0, p0, Lam/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 218
    iget-object v0, p0, Lam/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 219
    return-object p0
.end method

.method public a(Lam/c;)Lam/a;
    .registers 2
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lam/a;->f:Lam/c;

    .line 263
    return-object p0
.end method

.method public a(Lam/h;)Lam/a;
    .registers 5
    .parameter

    .prologue
    .line 243
    sget-object v0, Lam/b;->a:[I

    invoke-virtual {p1}, Lam/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 258
    :goto_b
    return-object p0

    .line 245
    :pswitch_c
    const/4 v0, 0x1

    .line 257
    :goto_d
    iget-object v1, p0, Lam/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_b

    .line 248
    :pswitch_15
    const/4 v0, 0x0

    .line 249
    goto :goto_d

    .line 251
    :pswitch_17
    const/4 v0, 0x2

    .line 252
    goto :goto_d

    .line 243
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method

.method public a(Ljava/util/List;)Lam/a;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Lam/a;->d:Lcom/google/googlenav/a;

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v2

    .line 116
    :goto_15
    if-ge v3, v4, :cond_31

    .line 118
    if-nez v3, :cond_2f

    const/4 v0, 0x1

    move v1, v0

    .line 119
    :goto_1b
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/a;

    invoke-direct {p0, v0, v1}, Lam/a;->a(Lcom/google/googlenav/a;Z)V

    .line 116
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_15

    .line 114
    :cond_28
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/a;

    goto :goto_8

    :cond_2f
    move v1, v2

    .line 118
    goto :goto_1b

    .line 121
    :cond_31
    return-object p0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lam/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 274
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 4
    .parameter

    .prologue
    .line 278
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ec;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lam/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 281
    invoke-direct {p0}, Lam/a;->k()I

    move-result v0

    .line 282
    if-nez v0, :cond_27

    .line 283
    new-instance v0, Lam/n;

    iget-object v1, p0, Lam/a;->d:Lcom/google/googlenav/a;

    invoke-direct {v0, v1}, Lam/n;-><init>(Lcom/google/googlenav/a;)V

    iput-object v0, p0, Lam/a;->e:Lam/n;

    .line 284
    invoke-direct {p0}, Lam/a;->l()V

    .line 285
    iget-object v0, p0, Lam/a;->f:Lam/c;

    if-eqz v0, :cond_25

    .line 286
    iget-object v0, p0, Lam/a;->f:Lam/c;

    iget-object v1, p0, Lam/a;->e:Lam/n;

    invoke-interface {v0, v1}, Lam/c;->a(Lam/n;)V

    .line 293
    :cond_25
    :goto_25
    const/4 v0, 0x1

    return v0

    .line 289
    :cond_27
    new-instance v0, Lam/n;

    iget-object v1, p0, Lam/a;->d:Lcom/google/googlenav/a;

    invoke-direct {v0, v1}, Lam/n;-><init>(Lcom/google/googlenav/a;)V

    iput-object v0, p0, Lam/a;->e:Lam/n;

    goto :goto_25
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 439
    .line 440
    monitor-enter p0

    .line 441
    :try_start_1
    iget-object v0, p0, Lam/a;->f:Lam/c;

    .line 442
    const/4 v1, 0x0

    iput-object v1, p0, Lam/a;->f:Lam/c;

    .line 443
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_15

    .line 444
    if-eqz v0, :cond_14

    .line 445
    invoke-direct {p0}, Lam/a;->k()I

    move-result v1

    if-nez v1, :cond_18

    .line 446
    iget-object v1, p0, Lam/a;->e:Lam/n;

    invoke-interface {v0, v1}, Lam/c;->b(Lam/n;)V

    .line 451
    :cond_14
    :goto_14
    return-void

    .line 443
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0

    .line 448
    :cond_18
    invoke-interface {v0}, Lam/c;->a()V

    goto :goto_14
.end method

.method public m_()V
    .registers 3

    .prologue
    .line 457
    .line 458
    monitor-enter p0

    .line 459
    :try_start_1
    iget-object v0, p0, Lam/a;->f:Lam/c;

    .line 460
    const/4 v1, 0x0

    iput-object v1, p0, Lam/a;->f:Lam/c;

    .line 461
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_d

    .line 462
    if-eqz v0, :cond_c

    .line 463
    invoke-interface {v0}, Lam/c;->a()V

    .line 465
    :cond_c
    return-void

    .line 461
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method
