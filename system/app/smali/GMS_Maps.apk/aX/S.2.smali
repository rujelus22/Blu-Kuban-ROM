.class public Lax/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax/N;
.implements Lax/Q;
.implements Lax/R;
.implements Lcom/google/googlenav/ui/wizard/bn;


# instance fields
.field private a:Z

.field private final b:Lax/U;

.field private final c:Lax/g;

.field private final d:Lax/e;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/google/googlenav/ui/wizard/ju;

.field private final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Lax/U;Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "SYNC_DATA_LOCAL"

    iput-object v0, p0, Lax/S;->e:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lax/S;->h:Ljava/util/List;

    .line 91
    iput-object p1, p0, Lax/S;->b:Lax/U;

    .line 92
    iput-object p2, p0, Lax/S;->g:Lcom/google/googlenav/ui/wizard/ju;

    .line 93
    new-instance v0, Lax/g;

    invoke-direct {v0}, Lax/g;-><init>()V

    iput-object v0, p0, Lax/S;->c:Lax/g;

    .line 94
    new-instance v0, Lax/e;

    invoke-direct {v0}, Lax/e;-><init>()V

    iput-object v0, p0, Lax/S;->d:Lax/e;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lax/S;->f:Z

    .line 96
    invoke-direct {p0}, Lax/S;->i()V

    .line 97
    return-void
.end method

.method static synthetic a(Lax/S;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lax/S;->h:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 366
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 367
    invoke-virtual {p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 368
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_25

    .line 369
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 370
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 372
    invoke-interface {p2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 378
    :goto_20
    return-void

    .line 368
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 377
    :cond_25
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20
.end method

.method private c(ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 197
    new-instance v0, Lax/T;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lax/T;-><init>(Lax/S;LY/c;ILjava/lang/String;)V

    invoke-virtual {v0}, Lax/T;->g()V

    .line 207
    return-void
.end method

.method private declared-synchronized c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 7
    .parameter

    .prologue
    .line 270
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 271
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_51

    move-result v0

    if-eqz v0, :cond_f

    .line 300
    :goto_d
    monitor-exit p0

    return-void

    .line 279
    :cond_f
    const/4 v0, 0x6

    :try_start_10
    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    .line 281
    if-eqz v0, :cond_1e

    .line 282
    iget-object v0, p0, Lax/S;->c:Lax/g;

    invoke-virtual {v0, v1}, Lax/g;->c(I)V

    .line 283
    invoke-direct {p0, v1}, Lax/S;->f(I)V

    .line 286
    :cond_1e
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 287
    const/4 v0, 0x0

    :goto_24
    if-ge v0, v2, :cond_46

    .line 288
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 290
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 291
    iget-object v4, p0, Lax/S;->c:Lax/g;

    invoke-virtual {v4, v1, v3}, Lax/g;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    .line 293
    :cond_37
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 294
    iget-object v4, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v4, v1, v3}, Lax/e;->b(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    .line 287
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 298
    :cond_46
    iget-object v0, p0, Lax/S;->d:Lax/e;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lax/e;->a(IJ)V
    :try_end_50
    .catchall {:try_start_10 .. :try_end_50} :catchall_51

    goto :goto_d

    .line 270
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(ILjava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 608
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    const/16 v1, 0x9

    const-string v2, "i"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method private d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 423
    if-eqz p1, :cond_f

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 425
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lax/S;->f:Z

    .line 427
    :cond_f
    return-void
.end method

.method private d(Z)V
    .registers 3
    .parameter

    .prologue
    .line 121
    iput-boolean p1, p0, Lax/S;->a:Z

    .line 122
    if-eqz p1, :cond_9

    const-string v0, "SYNC_DATA"

    :goto_6
    iput-object v0, p0, Lax/S;->e:Ljava/lang/String;

    .line 123
    return-void

    .line 122
    :cond_9
    const-string v0, "SYNC_DATA_LOCAL"

    goto :goto_6
.end method

.method private declared-synchronized e(Z)V
    .registers 4
    .parameter

    .prologue
    .line 545
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lax/S;->f:Z

    .line 549
    invoke-virtual {p0}, Lax/S;->d()V

    .line 552
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lax/S;->d(Z)V

    .line 554
    if-eqz p1, :cond_1f

    .line 559
    invoke-virtual {p0}, Lax/S;->d()V

    .line 572
    :goto_10
    invoke-direct {p0}, Lax/S;->j()V

    .line 575
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lax/S;->e(I)V

    .line 576
    const/4 v0, 0x1

    sget-object v1, Lax/I;->f:Lax/I;

    invoke-virtual {p0, v0, v1}, Lax/S;->a(ILax/I;)V
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_28

    .line 577
    monitor-exit p0

    return-void

    .line 564
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v0}, Lax/e;->c()V

    .line 568
    invoke-virtual {p0}, Lax/S;->e()V
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_28

    goto :goto_10

    .line 545
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f(I)V
    .registers 3
    .parameter

    .prologue
    .line 213
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lax/S;->c(ILjava/lang/String;)V

    .line 214
    return-void
.end method

.method private declared-synchronized i()V
    .registers 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->c:Lax/g;

    invoke-virtual {v0, p0}, Lax/g;->a(Lax/Q;)V

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lax/S;->d(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 118
    monitor-exit p0

    return-void

    .line 115
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()V
    .registers 3

    .prologue
    .line 220
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->c:Lax/g;

    invoke-virtual {v0}, Lax/g;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 221
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lax/S;->f(I)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_b

    .line 220
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 223
    :cond_22
    monitor-exit p0

    return-void
.end method

.method private k()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 417
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbo/j;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 418
    const/4 v1, 0x1

    iget-boolean v2, p0, Lax/S;->f:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 419
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 306
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v0}, Lax/e;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter

    .prologue
    .line 313
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v0, p1}, Lax/e;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v0, p1, p2}, Lax/e;->a(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_10

    .line 131
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_17

    move-result-object v0

    .line 135
    :goto_e
    monitor-exit p0

    return-object v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lax/S;->c:Lax/g;

    invoke-virtual {v0, p1, p2}, Lax/g;->a(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_17

    move-result-object v0

    goto :goto_e

    .line 129
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILax/I;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 396
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lax/S;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-nez v0, :cond_7

    .line 402
    :goto_5
    monitor-exit p0

    return-void

    .line 399
    :cond_7
    :try_start_7
    iget-object v0, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v0, p1}, Lax/e;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lax/S;->b:Lax/U;

    invoke-interface {v1, v0, p1, p2}, Lax/U;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILax/I;)V

    .line 401
    iget-object v1, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v1, v0}, Lax/e;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_18

    goto :goto_5

    .line 396
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILax/O;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->c:Lax/g;

    invoke-virtual {v0, p1, p2}, Lax/g;->a(ILax/O;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 159
    monitor-exit p0

    return-void

    .line 158
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lax/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lax/S;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public declared-synchronized a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 245
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lax/S;->a:Z

    if-nez v0, :cond_13

    .line 246
    const-string v0, "MAPS"

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MyPlaces: updateStorage called with sync off"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_40

    .line 262
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    .line 251
    :cond_13
    const/4 v0, 0x1

    :try_start_14
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 252
    const/4 v0, 0x0

    :goto_19
    if-ge v0, v1, :cond_26

    .line 253
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {p0, v2}, Lax/S;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 256
    :cond_26
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 257
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 258
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 260
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Las/f;->a(I)V
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_40

    goto :goto_11

    .line 245
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lax/S;->g:Lcom/google/googlenav/ui/wizard/ju;

    .line 497
    return-void
.end method

.method public declared-synchronized a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 618
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->d:Lax/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lax/e;->c(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 620
    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lax/S;->d(ILjava/lang/String;)V

    .line 621
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lax/S;->e(Z)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 622
    monitor-exit p0

    return-void

    .line 618
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 166
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v1, p1, v0}, Lax/e;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 168
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lax/S;->c(ILjava/lang/String;)V

    .line 169
    sget-object v0, Lax/I;->d:Lax/I;

    invoke-virtual {p0, p1, v0}, Lax/S;->a(ILax/I;)V
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_20

    .line 170
    const/4 v0, 0x1

    .line 173
    :goto_1c
    monitor-exit p0

    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1c

    .line 166
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a_(ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-direct {p0, p1, p2}, Lax/S;->c(ILjava/lang/String;)V

    .line 267
    return-void
.end method

.method public declared-synchronized b(I)Ljava/util/List;
    .registers 6
    .parameter

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->c:Lax/g;

    invoke-virtual {v0, p1}, Lax/g;->b(I)Ljava/util/List;

    move-result-object v1

    .line 144
    iget-object v0, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v0, p1}, Lax/e;->c(I)Ljava/util/List;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 146
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 147
    invoke-direct {p0, v0, v1}, Lax/S;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_26

    goto :goto_11

    .line 141
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :cond_29
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized b()V
    .registers 3

    .prologue
    .line 348
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->c:Lax/g;

    invoke-virtual {v0}, Lax/g;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 349
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lax/S;->e(I)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_b

    .line 348
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 351
    :cond_22
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->c:Lax/g;

    invoke-virtual {v0, p1, p2}, Lax/g;->b(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 190
    monitor-exit p0

    return-void

    .line 189
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 639
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v0, p1}, Lax/e;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 640
    monitor-exit p0

    return-void

    .line 639
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 626
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->d:Lax/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lax/e;->c(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 628
    const-string v1, "2"

    invoke-direct {p0, v0, v1}, Lax/S;->d(ILjava/lang/String;)V

    .line 629
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lax/S;->e(Z)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 630
    monitor-exit p0

    return-void

    .line 626
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->c:Lax/g;

    invoke-virtual {v0, p1, p2}, Lax/g;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 184
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 181
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 2

    .prologue
    .line 358
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v0}, Lax/e;->a()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 359
    monitor-exit p0

    return-void

    .line 358
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(I)V
    .registers 3
    .parameter

    .prologue
    .line 412
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->c:Lax/g;

    invoke-virtual {v0, p1}, Lax/g;->c(I)V

    .line 413
    iget-object v0, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v0, p1}, Lax/e;->d(I)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 414
    monitor-exit p0

    return-void

    .line 412
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 635
    return-void
.end method

.method public declared-synchronized d(I)Lax/N;
    .registers 3
    .parameter

    .prologue
    .line 330
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->c:Lax/g;

    invoke-virtual {v0, p1}, Lax/g;->a(I)Lax/P;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 332
    monitor-exit p0

    return-object p0

    .line 330
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .registers 5

    .prologue
    .line 438
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4b

    move-result-object v0

    .line 441
    :try_start_9
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbo/j;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 442
    const/4 v2, 0x1

    invoke-direct {p0}, Lax/S;->k()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 443
    const/4 v2, 0x2

    iget-object v3, p0, Lax/S;->c:Lax/g;

    invoke-virtual {v3}, Lax/g;->c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 444
    const/4 v2, 0x3

    iget-object v3, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v3}, Lax/e;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 446
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 447
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 448
    invoke-static {v3, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 449
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lax/S;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_4b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_42} :catch_44
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_42} :catch_4e

    .line 455
    :goto_42
    monitor-exit p0

    return-void

    .line 450
    :catch_44
    move-exception v0

    .line 451
    :try_start_45
    const-string v1, "MAPSError saving Sync prefs"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4b

    goto :goto_42

    .line 438
    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 452
    :catch_4e
    move-exception v0

    .line 453
    :try_start_4f
    const-string v1, "MAPSOOME saving Sync prefs"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_4b

    goto :goto_42
.end method

.method public declared-synchronized e()V
    .registers 4

    .prologue
    .line 465
    monitor-enter p0

    :try_start_1
    const-string v0, "SyncedDataViewImpl.loadSavedState"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 466
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lax/S;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 469
    if-eqz v0, :cond_45

    array-length v1, v0

    if-eqz v1, :cond_45

    .line 470
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_53

    .line 473
    :try_start_23
    sget-object v0, Lbo/j;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 475
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {p0, v1}, Lax/S;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 477
    iget-object v1, p0, Lax/S;->c:Lax/g;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lax/g;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 479
    iget-object v1, p0, Lax/S;->d:Lax/e;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v0}, Lax/e;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_53
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_45} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_45} :catch_56

    .line 489
    :cond_45
    :goto_45
    :try_start_45
    const-string v0, "SyncedDataViewImpl.loadSavedState"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_53

    .line 490
    monitor-exit p0

    return-void

    .line 481
    :catch_4c
    move-exception v0

    .line 482
    :try_start_4d
    const-string v1, "MAPSError loading Sync prefs"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_53

    goto :goto_45

    .line 465
    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0

    .line 483
    :catch_56
    move-exception v0

    .line 485
    :try_start_57
    const-string v1, "MAPSError loading Sync prefs"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_53

    goto :goto_45
.end method

.method public declared-synchronized e(I)V
    .registers 3
    .parameter

    .prologue
    .line 341
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v0, p1}, Lax/e;->b(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 342
    monitor-exit p0

    return-void

    .line 341
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .registers 9

    .prologue
    .line 501
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lax/S;->a:Z

    if-nez v0, :cond_f

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->s()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_45

    move-result v0

    if-nez v0, :cond_11

    .line 526
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 506
    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lax/S;->f:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v0}, Lax/e;->d()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 509
    const/4 v0, 0x0

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lax/S;->d(ILjava/lang/String;)V

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/S;->f:Z

    .line 513
    :cond_26
    iget-boolean v0, p0, Lax/S;->f:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lax/S;->g:Lcom/google/googlenav/ui/wizard/ju;

    if-eqz v0, :cond_48

    .line 515
    iget-object v0, p0, Lax/S;->g:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x5a6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a5

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V
    :try_end_44
    .catchall {:try_start_11 .. :try_end_44} :catchall_45

    goto :goto_f

    .line 501
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    .line 524
    :cond_48
    :try_start_48
    iget-boolean v0, p0, Lax/S;->f:Z

    invoke-direct {p0, v0}, Lax/S;->e(Z)V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_45

    goto :goto_f
.end method

.method public declared-synchronized g()V
    .registers 2

    .prologue
    .line 584
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lax/S;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    if-nez v0, :cond_7

    .line 600
    :goto_5
    monitor-exit p0

    return-void

    .line 589
    :cond_7
    :try_start_7
    iget-object v0, p0, Lax/S;->b:Lax/U;

    invoke-interface {v0}, Lax/U;->g()V

    .line 590
    iget-object v0, p0, Lax/S;->c:Lax/g;

    invoke-virtual {v0}, Lax/g;->b()V

    .line 591
    iget-object v0, p0, Lax/S;->d:Lax/e;

    invoke-virtual {v0}, Lax/e;->c()V

    .line 593
    invoke-virtual {p0}, Lax/S;->d()V

    .line 595
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lax/S;->d(Z)V

    .line 597
    invoke-virtual {p0}, Lax/S;->e()V

    .line 599
    invoke-direct {p0}, Lax/S;->j()V
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_24

    goto :goto_5

    .line 584
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 604
    iget-boolean v0, p0, Lax/S;->a:Z

    return v0
.end method
