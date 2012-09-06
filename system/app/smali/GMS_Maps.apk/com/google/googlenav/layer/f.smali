.class public Lcom/google/googlenav/layer/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/lang/Object;

.field private g:Lcom/google/googlenav/ui/p;

.field private h:Z

.field private i:Z

.field private j:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private k:Lcom/google/googlenav/layer/l;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v2, p0, Lcom/google/googlenav/layer/f;->a:I

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/layer/f;->c:J

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/layer/f;->e:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/layer/f;->f:Ljava/lang/Object;

    .line 95
    new-instance v0, Lcom/google/googlenav/ui/p;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/p;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/layer/f;->g:Lcom/google/googlenav/ui/p;

    .line 96
    iput-boolean v2, p0, Lcom/google/googlenav/layer/f;->h:Z

    .line 110
    iput-boolean v2, p0, Lcom/google/googlenav/layer/f;->i:Z

    .line 131
    invoke-direct {p0}, Lcom/google/googlenav/layer/f;->i()V

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/layer/g;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/googlenav/layer/f;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/layer/f;
    .registers 1

    .prologue
    .line 167
    sget-object v0, Lcom/google/googlenav/layer/h;->a:Lcom/google/googlenav/layer/f;

    return-object v0
.end method

.method private i()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 139
    const/16 v0, 0x24b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    new-instance v2, Lcom/google/googlenav/layer/m;

    const-string v3, "LayerTransit"

    new-array v4, v7, [LT/f;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->p()LS/g;

    move-result-object v0

    sget-char v5, Lcom/google/googlenav/ui/bn;->aF:C

    invoke-interface {v0, v5}, LS/g;->e(C)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    aput-object v0, v4, v6

    invoke-direct {v2, v3, v1, v4, v6}, Lcom/google/googlenav/layer/m;-><init>(Ljava/lang/String;Ljava/lang/String;[LT/f;I)V

    .line 146
    const-string v0, "LayerTransit"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/layer/f;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v0

    .line 148
    if-nez v0, :cond_63

    .line 149
    new-instance v3, Lcom/google/googlenav/layer/i;

    const-string v0, "__LAYERS"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "LayerTransit"

    aput-object v5, v4, v6

    invoke-direct {v3, v0, v4}, Lcom/google/googlenav/layer/i;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/googlenav/layer/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v0, Lcom/google/googlenav/layer/e;

    const-string v4, "LayerTransit"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v5, v1}, Lcom/google/googlenav/layer/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lcom/google/googlenav/layer/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Lcom/google/googlenav/layer/i;->a(Ljava/lang/String;Lcom/google/googlenav/layer/e;)V

    .line 156
    iget-object v1, p0, Lcom/google/googlenav/layer/f;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_59
    invoke-virtual {v0}, Lcom/google/googlenav/layer/e;->b()Lcom/google/googlenav/layer/m;

    move-result-object v1

    if-nez v1, :cond_62

    .line 162
    invoke-virtual {v0, v2}, Lcom/google/googlenav/layer/e;->a(Lcom/google/googlenav/layer/m;)V

    .line 164
    :cond_62
    return-void

    .line 158
    :cond_63
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    const-string v1, "__LAYERS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/i;

    .line 159
    const-string v1, "LayerTransit"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/i;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v0

    goto :goto_59
.end method


# virtual methods
.method public a(I)I
    .registers 4
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 312
    iget-boolean v1, p0, Lcom/google/googlenav/layer/f;->h:Z

    if-eqz v1, :cond_9

    if-eq p1, v0, :cond_9

    add-int/lit16 v0, p1, 0x3e8

    :cond_9
    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/layer/i;
    .registers 4
    .parameter

    .prologue
    .line 322
    iget-object v1, p0, Lcom/google/googlenav/layer/f;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/i;

    monitor-exit v1

    return-object v0

    .line 324
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 12
    .parameter

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v1, 0x0

    .line 216
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/f;->a:I

    .line 219
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 222
    const-string v0, "__LAYERS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 226
    const/16 v0, 0xc

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/googlenav/layer/f;->c:J

    .line 237
    :goto_20
    iget-object v3, p0, Lcom/google/googlenav/layer/f;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 242
    :try_start_23
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/i;

    .line 243
    if-eqz v0, :cond_4d

    .line 244
    invoke-virtual {v0}, Lcom/google/googlenav/layer/i;->b()[Ljava/lang/String;

    move-result-object v4

    .line 245
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    :goto_34
    if-ltz v0, :cond_48

    .line 246
    iget-object v5, p0, Lcom/google/googlenav/layer/f;->e:Ljava/util/Map;

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_d2

    .line 245
    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    .line 231
    :cond_40
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/f;->b:Ljava/lang/String;

    goto :goto_20

    .line 248
    :cond_48
    :try_start_48
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_4d
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    move v0, v1

    .line 253
    :goto_53
    if-ge v0, v2, :cond_6b

    .line 254
    new-instance v4, Lcom/google/googlenav/layer/i;

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/googlenav/layer/i;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 256
    iget-object v5, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/googlenav/layer/i;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 262
    :cond_6b
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    move v2, v1

    .line 263
    :goto_71
    if-ge v2, v4, :cond_b1

    .line 264
    new-instance v5, Lcom/google/googlenav/layer/e;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/googlenav/layer/e;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 266
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_87
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/i;

    .line 267
    invoke-virtual {v5}, Lcom/google/googlenav/layer/e;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/googlenav/layer/i;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v7

    if-eqz v7, :cond_87

    .line 268
    invoke-virtual {v5}, Lcom/google/googlenav/layer/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lcom/google/googlenav/layer/i;->a(Ljava/lang/String;Lcom/google/googlenav/layer/e;)V

    .line 269
    iget-object v6, p0, Lcom/google/googlenav/layer/f;->e:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/google/googlenav/layer/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_ad
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_71

    .line 274
    :cond_b1
    monitor-exit v3
    :try_end_b2
    .catchall {:try_start_48 .. :try_end_b2} :catchall_d2

    .line 277
    invoke-virtual {p1, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    move v0, v1

    .line 278
    :goto_b7
    if-ge v0, v2, :cond_d5

    .line 279
    new-instance v3, Lcom/google/googlenav/layer/m;

    invoke-virtual {p1, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/layer/m;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 281
    invoke-virtual {v3}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/googlenav/layer/f;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v4

    .line 282
    if-eqz v4, :cond_cf

    .line 283
    invoke-virtual {v4, v3}, Lcom/google/googlenav/layer/e;->a(Lcom/google/googlenav/layer/m;)V

    .line 278
    :cond_cf
    add-int/lit8 v0, v0, 0x1

    goto :goto_b7

    .line 274
    :catchall_d2
    move-exception v0

    :try_start_d3
    monitor-exit v3
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw v0

    .line 290
    :cond_d5
    invoke-virtual {p1, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    move v0, v1

    .line 291
    :goto_da
    if-ge v0, v2, :cond_110

    .line 292
    invoke-virtual {p1, v9, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 293
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 294
    iget-object v4, p0, Lcom/google/googlenav/layer/f;->g:Lcom/google/googlenav/ui/p;

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/googlenav/ui/p;->a([BJ)Lcom/google/googlenav/ui/r;

    .line 296
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 297
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/googlenav/layer/f;->h:Z

    .line 298
    iget-object v4, p0, Lcom/google/googlenav/layer/f;->g:Lcom/google/googlenav/ui/p;

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/google/googlenav/layer/f;->a(I)I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v4, v1, v5, v6}, Lcom/google/googlenav/ui/p;->a([BJ)Lcom/google/googlenav/ui/r;

    .line 291
    :cond_10d
    add-int/lit8 v0, v0, 0x1

    goto :goto_da

    .line 303
    :cond_110
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/layer/l;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-boolean v0, p0, Lcom/google/googlenav/layer/f;->i:Z

    if-eqz v0, :cond_a

    .line 185
    iput-object p1, p0, Lcom/google/googlenav/layer/f;->j:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 186
    iput-object p2, p0, Lcom/google/googlenav/layer/f;->k:Lcom/google/googlenav/layer/l;

    .line 213
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 189
    :cond_a
    iput-object v1, p0, Lcom/google/googlenav/layer/f;->j:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 190
    iput-object v1, p0, Lcom/google/googlenav/layer/f;->k:Lcom/google/googlenav/layer/l;

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 194
    packed-switch v0, :pswitch_data_2c

    goto :goto_9

    .line 196
    :pswitch_17
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/layer/f;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 198
    if-eqz p2, :cond_9

    .line 199
    invoke-interface {p2}, Lcom/google/googlenav/layer/l;->a()V

    goto :goto_9

    .line 210
    :pswitch_24
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/f;->h()V

    goto :goto_9

    .line 194
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_9
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 457
    iput-boolean p1, p0, Lcom/google/googlenav/layer/f;->i:Z

    .line 461
    if-nez p1, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/layer/f;->j:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_f

    .line 463
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->j:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v1, p0, Lcom/google/googlenav/layer/f;->k:Lcom/google/googlenav/layer/l;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/layer/f;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/layer/l;)V

    .line 465
    :cond_f
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/layer/e;
    .registers 4
    .parameter

    .prologue
    .line 343
    iget-object v1, p0, Lcom/google/googlenav/layer/f;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 344
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/i;

    .line 345
    if-nez v0, :cond_10

    .line 346
    const/4 v0, 0x0

    monitor-exit v1

    .line 348
    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/googlenav/layer/i;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v0

    monitor-exit v1

    goto :goto_f

    .line 349
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public b()Lcom/google/googlenav/layer/m;
    .registers 2

    .prologue
    .line 369
    const-string v0, "TrafficIncident"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/layer/f;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/google/googlenav/layer/e;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public c(Ljava/lang/String;)Lcom/google/googlenav/layer/m;
    .registers 3
    .parameter

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/google/googlenav/layer/f;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/googlenav/layer/e;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c()Ljava/util/List;
    .registers 5

    .prologue
    .line 381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 383
    invoke-virtual {p0}, Lcom/google/googlenav/layer/f;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/m;

    .line 384
    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->k()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 385
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 389
    :cond_23
    return-object v1
.end method

.method public d()Ljava/util/List;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 398
    const-string v0, "__LAYERS"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/layer/f;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/i;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/google/googlenav/layer/i;->b()[Ljava/lang/String;

    move-result-object v0

    .line 401
    :goto_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 402
    :goto_12
    array-length v3, v0

    if-ge v1, v3, :cond_32

    .line 403
    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/google/googlenav/layer/f;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v3

    .line 404
    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Lcom/google/googlenav/layer/e;->c()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 405
    invoke-virtual {v3}, Lcom/google/googlenav/layer/e;->b()Lcom/google/googlenav/layer/m;

    move-result-object v3

    .line 406
    if-eqz v3, :cond_2c

    .line 407
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 399
    :cond_2f
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_d

    .line 412
    :cond_32
    return-object v2
.end method

.method public d(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/google/googlenav/layer/f;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/i;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public e()I
    .registers 2

    .prologue
    .line 420
    iget v0, p0, Lcom/google/googlenav/layer/f;->a:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .registers 3

    .prologue
    .line 428
    iget-wide v0, p0, Lcom/google/googlenav/layer/f;->c:J

    return-wide v0
.end method

.method public h()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 432
    iget-object v1, p0, Lcom/google/googlenav/layer/f;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_5
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 434
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 435
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_28

    .line 436
    iput v2, p0, Lcom/google/googlenav/layer/f;->a:I

    .line 437
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/layer/f;->b:Ljava/lang/String;

    .line 438
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/layer/f;->c:J

    .line 439
    iput-boolean v2, p0, Lcom/google/googlenav/layer/f;->i:Z

    .line 440
    iput-object v3, p0, Lcom/google/googlenav/layer/f;->k:Lcom/google/googlenav/layer/l;

    .line 441
    iput-object v3, p0, Lcom/google/googlenav/layer/f;->j:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 442
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->g:Lcom/google/googlenav/ui/p;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/p;->b()V

    .line 443
    iput-boolean v2, p0, Lcom/google/googlenav/layer/f;->h:Z

    .line 444
    return-void

    .line 435
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method
