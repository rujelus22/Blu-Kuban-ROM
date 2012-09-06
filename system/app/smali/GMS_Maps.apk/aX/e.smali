.class public Lax/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lax/e;->a:Ljava/util/List;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lax/e;->b:I

    .line 65
    return-void
.end method

.method private a(IJLjava/util/Map;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-interface {p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 147
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/hc;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 148
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 149
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_f

    .line 151
    :cond_20
    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 152
    const/4 v0, 0x2

    invoke-virtual {v1, v0, p2, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 153
    return-object v1
.end method

.method private a(Ljava/lang/String;Lax/f;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 285
    iget-object v0, p2, Lax/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 286
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 291
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 296
    :goto_27
    return-object v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private a(Ljava/util/List;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 102
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/hc;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 103
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 104
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/f;

    .line 107
    iget-wide v5, v0, Lax/f;->c:J

    const-wide/high16 v7, -0x8000

    cmp-long v5, v5, v7

    if-eqz v5, :cond_39

    iget-wide v5, v0, Lax/f;->c:J

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    cmp-long v5, v2, v5

    if-ltz v5, :cond_1c

    .line 109
    :cond_39
    iget v5, v0, Lax/f;->a:I

    iget-wide v6, v0, Lax/f;->b:J

    iget-object v0, v0, Lax/f;->d:Ljava/util/Map;

    invoke-direct {p0, v5, v6, v7, v0}, Lax/e;->a(IJLjava/util/Map;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_1c

    .line 113
    :cond_47
    return-object v1
.end method

.method private a(Lax/f;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 333
    iget-object v0, p1, Lax/f;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 307
    invoke-virtual {p2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 310
    :cond_9
    invoke-virtual {p2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_24

    .line 325
    :goto_10
    return v0

    .line 312
    :pswitch_11
    invoke-virtual {p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 313
    const/16 v3, 0xa

    if-gt v2, v3, :cond_1f

    .line 314
    invoke-virtual {p1, v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_10

    :cond_1f
    move v0, v1

    .line 318
    goto :goto_10

    :pswitch_21
    move v0, v1

    .line 322
    goto :goto_10

    .line 310
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_11
        :pswitch_21
    .end packed-switch
.end method

.method private b(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lax/e;->e(I)Lax/f;

    move-result-object v1

    .line 127
    iget-object v0, v1, Lax/f;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 129
    if-nez v0, :cond_1a

    .line 130
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/hc;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 131
    iget-object v2, v1, Lax/f;->d:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_1a
    const-wide/high16 v2, -0x8000

    iput-wide v2, v1, Lax/f;->c:J

    .line 134
    return-object v0
.end method

.method private e(I)Lax/f;
    .registers 4
    .parameter

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lax/e;->f(I)Lax/f;

    move-result-object v0

    .line 263
    if-nez v0, :cond_10

    .line 264
    new-instance v0, Lax/f;

    invoke-direct {v0, p1}, Lax/f;-><init>(I)V

    .line 265
    iget-object v1, p0, Lax/e;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_10
    return-object v0
.end method

.method private f(I)Lax/f;
    .registers 5
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lax/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/f;

    .line 272
    iget v2, v0, Lax/f;->a:I

    if-ne v2, p1, :cond_6

    .line 276
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6
    .parameter

    .prologue
    .line 92
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 93
    iget-object v0, p0, Lax/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/f;

    .line 94
    iget v3, v0, Lax/f;->a:I

    if-ne v3, p1, :cond_a

    .line 95
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 98
    :cond_1e
    invoke-direct {p0, v1}, Lax/e;->a(Ljava/util/List;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lax/e;->f(I)Lax/f;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_f

    .line 256
    iget-object v0, v0, Lax/f;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 258
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a()V
    .registers 5

    .prologue
    .line 72
    iget-object v0, p0, Lax/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/f;

    .line 73
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lax/f;->b:J

    goto :goto_6

    .line 75
    :cond_17
    return-void
.end method

.method public a(IJ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lax/e;->e(I)Lax/f;

    move-result-object v0

    iput-wide p2, v0, Lax/f;->b:J

    .line 239
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 243
    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 244
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_25

    .line 245
    invoke-virtual {p1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 246
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 247
    invoke-direct {p0, v2}, Lax/e;->e(I)Lax/f;

    move-result-object v2

    .line 248
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v3

    iput-wide v3, v2, Lax/f;->c:J

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 250
    :cond_25
    return-void
.end method

.method public a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 174
    invoke-virtual {p2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lax/e;->b(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 175
    iget v0, p0, Lax/e;->b:I

    const v4, 0x7fffffff

    if-ge v0, v4, :cond_30

    iget v0, p0, Lax/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lax/e;->b:I

    :goto_18
    iput v0, p0, Lax/e;->b:I

    .line 176
    iget v0, p0, Lax/e;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 178
    invoke-virtual {v3, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 181
    :try_start_26
    invoke-static {p2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_32

    move-result-object v0

    .line 185
    const/4 v1, 0x3

    invoke-virtual {v3, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move v1, v2

    .line 186
    :goto_2f
    return v1

    :cond_30
    move v0, v1

    .line 175
    goto :goto_18

    .line 182
    :catch_32
    move-exception v0

    goto :goto_2f
.end method

.method public b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lax/e;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lax/e;->a(Ljava/util/List;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lax/e;->e(I)Lax/f;

    .line 140
    return-void
.end method

.method public b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 16
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 373
    invoke-static {p1, v11}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    iput v0, p0, Lax/e;->b:I

    .line 375
    invoke-static {p1, v12}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 377
    if-nez v3, :cond_11

    .line 395
    :cond_10
    return-void

    .line 380
    :cond_11
    invoke-virtual {v3, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    move v2, v1

    .line 381
    :goto_16
    if-ge v2, v4, :cond_10

    .line 382
    invoke-virtual {v3, v11, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 383
    invoke-virtual {v5, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 384
    invoke-direct {p0, v0}, Lax/e;->e(I)Lax/f;

    move-result-object v6

    .line 385
    invoke-static {v5, v12}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v7

    iput-wide v7, v6, Lax/f;->b:J

    .line 387
    invoke-virtual {v5, v13}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v7

    move v0, v1

    .line 388
    :goto_2f
    if-ge v0, v7, :cond_45

    .line 389
    invoke-virtual {v5, v13, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v8

    .line 390
    invoke-virtual {v8, v13}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v9

    .line 391
    invoke-virtual {v9, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 392
    iget-object v10, v6, Lax/f;->d:Ljava/util/Map;

    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 381
    :cond_45
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16
.end method

.method public b(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 233
    :cond_9
    :goto_9
    return v0

    .line 197
    :cond_a
    invoke-virtual {p2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 198
    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 205
    invoke-direct {p0, p1}, Lax/e;->f(I)Lax/f;

    move-result-object v3

    .line 206
    if-eqz v3, :cond_9

    .line 212
    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lax/e;->a(Ljava/lang/String;Lax/f;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 214
    if-eqz v4, :cond_9

    .line 223
    invoke-virtual {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lax/e;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 228
    :cond_34
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 229
    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lax/e;->a(Lax/f;Ljava/lang/String;)V

    move v0, v1

    .line 230
    goto :goto_9
.end method

.method public c(I)Ljava/util/List;
    .registers 5
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lax/e;->e(I)Lax/f;

    move-result-object v0

    .line 159
    iget-object v1, v0, Lax/f;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 160
    iget-object v0, v0, Lax/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 161
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 163
    :cond_28
    return-object v1
.end method

.method public c()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lax/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 339
    return-void
.end method

.method public d(I)V
    .registers 4
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lax/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 343
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/f;

    .line 344
    iget v0, v0, Lax/f;->a:I

    if-ne v0, p1, :cond_6

    .line 345
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 349
    :cond_19
    return-void
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 353
    iget-object v0, p0, Lax/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/f;

    .line 354
    iget-object v0, v0, Lax/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 355
    const/4 v0, 0x0

    .line 358
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method public e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 363
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbo/j;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 364
    const/4 v1, 0x2

    invoke-virtual {p0}, Lax/e;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 366
    const/4 v1, 0x1

    iget v2, p0, Lax/e;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 367
    return-object v0
.end method
