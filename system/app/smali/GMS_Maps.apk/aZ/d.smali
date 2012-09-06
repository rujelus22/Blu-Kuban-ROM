.class Laz/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laz/a;


# direct methods
.method constructor <init>(Laz/a;)V
    .registers 2
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Laz/d;->a:Laz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v13, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 371
    const-wide/16 v0, 0x0

    .line 372
    sget-object v3, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v3}, Lr/aJ;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 373
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    .line 374
    invoke-interface {v0}, Lr/aH;->g()J

    move-result-wide v0

    .line 385
    :goto_19
    :try_start_19
    iget-object v3, p0, Laz/d;->a:Laz/a;

    const/4 v6, 0x4

    invoke-static {v3, v6}, Laz/a;->a(Laz/a;I)I

    .line 387
    new-instance v6, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lbo/r;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v6, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 388
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v3

    .line 389
    sget-object v7, Laz/a;->a:Ljava/lang/String;

    invoke-interface {v3, v7}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v3

    .line 390
    if-eqz v3, :cond_39

    array-length v7, v3
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_16b

    if-nez v7, :cond_4e

    .line 449
    :cond_39
    iget-object v2, p0, Laz/d;->a:Laz/a;

    invoke-static {v2, v0, v1}, Laz/a;->a(Laz/a;J)J

    .line 450
    iget-object v0, p0, Laz/d;->a:Laz/a;

    invoke-static {v0}, Laz/a;->h(Laz/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 456
    :cond_47
    :goto_47
    return-void

    .line 377
    :cond_48
    const-string v3, "Tile store should be set if not unit tests"

    invoke-static {v4, v3}, Lcom/google/common/base/P;->a(ZLjava/lang/Object;)V

    goto :goto_19

    .line 394
    :cond_4e
    :try_start_4e
    invoke-virtual {v6, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_16b
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_10e

    .line 399
    :try_start_51
    iget-object v7, p0, Laz/d;->a:Laz/a;

    monitor-enter v7
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_16b

    .line 402
    :try_start_54
    iget-object v3, p0, Laz/d;->a:Laz/a;

    invoke-static {v3}, Laz/a;->b(Laz/a;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 403
    iget-object v3, p0, Laz/d;->a:Laz/a;

    invoke-static {v3}, Laz/a;->c(Laz/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 404
    iget-object v3, p0, Laz/d;->a:Laz/a;

    const/4 v8, 0x0

    invoke-static {v3, v8}, Laz/a;->a(Laz/a;Laz/f;)Laz/f;

    .line 405
    iget-object v3, p0, Laz/d;->a:Laz/a;

    const/4 v8, 0x0

    invoke-static {v3, v8}, Laz/a;->a(Laz/a;Ln/am;)Ln/am;

    .line 407
    iget-object v3, p0, Laz/d;->a:Laz/a;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v8

    invoke-static {v3, v8, v9}, Laz/a;->a(Laz/a;J)J

    .line 409
    iget-object v3, p0, Laz/d;->a:Laz/a;

    invoke-static {v3}, Laz/a;->f(Laz/a;)J
    :try_end_81
    .catchall {:try_start_54 .. :try_end_81} :catchall_16d

    move-result-wide v8

    cmp-long v3, v8, v0

    if-eqz v3, :cond_11f

    move v3, v5

    .line 411
    :goto_87
    :try_start_87
    iget-object v8, p0, Laz/d;->a:Laz/a;

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v9

    invoke-static {v8, v9}, Laz/a;->a(Laz/a;I)I

    .line 412
    iget-object v8, p0, Laz/d;->a:Laz/a;

    invoke-static {v8}, Laz/a;->d(Laz/a;)I

    move-result v8

    if-eq v8, v5, :cond_a1

    iget-object v8, p0, Laz/d;->a:Laz/a;

    invoke-static {v8}, Laz/a;->d(Laz/a;)I

    move-result v8

    if-ne v8, v10, :cond_a7

    .line 413
    :cond_a1
    iget-object v8, p0, Laz/d;->a:Laz/a;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Laz/a;->a(Laz/a;I)I

    .line 418
    :cond_a7
    iget-object v8, p0, Laz/d;->a:Laz/a;

    if-nez v3, :cond_bb

    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_bb

    const/4 v2, 0x3

    invoke-virtual {v6, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-static {v2}, Ln/am;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/am;

    move-result-object v2

    :cond_bb
    invoke-static {v8, v2}, Laz/a;->a(Laz/a;Ln/am;)Ln/am;

    .line 423
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 427
    iget-object v8, p0, Laz/d;->a:Laz/a;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Laz/a;->b(Laz/a;I)I

    .line 428
    :goto_c9
    if-ge v4, v2, :cond_153

    .line 429
    const/4 v8, 0x1

    invoke-virtual {v6, v8, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v8

    invoke-static {v8}, Laz/f;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Laz/f;

    move-result-object v8

    .line 431
    iget-object v9, p0, Laz/d;->a:Laz/a;

    iget-object v10, p0, Laz/d;->a:Laz/a;

    invoke-static {v10}, Laz/a;->g(Laz/a;)I

    move-result v10

    new-instance v11, Ljava/lang/Integer;

    invoke-virtual {v8}, Laz/f;->f()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Laz/a;->b(Laz/a;I)I

    .line 433
    invoke-static {v8}, Laz/f;->b(Laz/f;)I

    move-result v9

    if-eqz v9, :cond_fc

    invoke-static {v8}, Laz/f;->b(Laz/f;)I

    move-result v9

    if-ne v9, v13, :cond_122

    .line 437
    :cond_fc
    if-eqz v3, :cond_102

    .line 438
    const/4 v9, 0x4

    invoke-static {v8, v9}, Laz/f;->a(Laz/f;I)I

    .line 440
    :cond_102
    iget-object v9, p0, Laz/d;->a:Laz/a;

    invoke-static {v9}, Laz/a;->b(Laz/a;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10b
    .catchall {:try_start_87 .. :try_end_10b} :catchall_12e

    .line 428
    :goto_10b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c9

    .line 395
    :catch_10e
    move-exception v2

    .line 449
    iget-object v2, p0, Laz/d;->a:Laz/a;

    invoke-static {v2, v0, v1}, Laz/a;->a(Laz/a;J)J

    .line 450
    iget-object v0, p0, Laz/d;->a:Laz/a;

    invoke-static {v0}, Laz/a;->h(Laz/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_47

    :cond_11f
    move v3, v4

    .line 409
    goto/16 :goto_87

    .line 441
    :cond_122
    :try_start_122
    invoke-static {v8}, Laz/f;->b(Laz/f;)I

    move-result v9

    if-ne v9, v5, :cond_149

    .line 442
    iget-object v9, p0, Laz/d;->a:Laz/a;

    invoke-static {v9, v8}, Laz/a;->a(Laz/a;Laz/f;)Laz/f;

    goto :goto_10b

    .line 447
    :catchall_12e
    move-exception v2

    :goto_12f
    monitor-exit v7
    :try_end_130
    .catchall {:try_start_122 .. :try_end_130} :catchall_12e

    :try_start_130
    throw v2
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_131

    .line 449
    :catchall_131
    move-exception v2

    move v4, v3

    :goto_133
    iget-object v3, p0, Laz/d;->a:Laz/a;

    invoke-static {v3, v0, v1}, Laz/a;->a(Laz/a;J)J

    .line 450
    iget-object v0, p0, Laz/d;->a:Laz/a;

    invoke-static {v0}, Laz/a;->h(Laz/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 452
    if-eqz v4, :cond_148

    .line 453
    iget-object v0, p0, Laz/d;->a:Laz/a;

    invoke-virtual {v0}, Laz/a;->e()V

    :cond_148
    throw v2

    .line 444
    :cond_149
    :try_start_149
    iget-object v9, p0, Laz/d;->a:Laz/a;

    invoke-static {v9}, Laz/a;->c(Laz/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 447
    :cond_153
    monitor-exit v7
    :try_end_154
    .catchall {:try_start_149 .. :try_end_154} :catchall_12e

    .line 449
    iget-object v2, p0, Laz/d;->a:Laz/a;

    invoke-static {v2, v0, v1}, Laz/a;->a(Laz/a;J)J

    .line 450
    iget-object v0, p0, Laz/d;->a:Laz/a;

    invoke-static {v0}, Laz/a;->h(Laz/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 452
    if-eqz v3, :cond_47

    .line 453
    iget-object v0, p0, Laz/d;->a:Laz/a;

    invoke-virtual {v0}, Laz/a;->e()V

    goto/16 :goto_47

    .line 449
    :catchall_16b
    move-exception v2

    goto :goto_133

    .line 447
    :catchall_16d
    move-exception v2

    move v3, v4

    goto :goto_12f
.end method
