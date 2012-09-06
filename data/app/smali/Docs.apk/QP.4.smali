.class public LQP;
.super Ljava/lang/Object;
.source "DocumentFileManagerImpl.java"

# interfaces
.implements LQN;


# instance fields
.field private a:J

.field private final a:LQU;

.field private final a:LQZ;

.field private final a:LZJ;

.field private final a:LZU;

.field private final a:Landroid/content/Context;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "LQS;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/locks/Lock;

.field private final a:Llu;


# direct methods
.method public constructor <init>(LQZ;LQU;Llu;LZJ;Landroid/content/Context;LZU;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LQP;->a:Ljava/util/Map;

    .line 157
    iput-object p2, p0, LQP;->a:LQU;

    .line 158
    iput-object p3, p0, LQP;->a:Llu;

    .line 159
    iput-object p1, p0, LQP;->a:LQZ;

    .line 160
    iput-object p4, p0, LQP;->a:LZJ;

    .line 161
    iput-object p5, p0, LQP;->a:Landroid/content/Context;

    .line 162
    iput-object p6, p0, LQP;->a:LZU;

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQP;->a:J

    .line 165
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, LQP;->a:Ljava/util/concurrent/locks/Lock;

    .line 166
    return-void
.end method

.method private declared-synchronized a(J)J
    .registers 9
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 283
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, LQP;->a:Llu;

    invoke-interface {v2, p1, p2}, Llu;->a(J)LkS;

    move-result-object v2

    .line 284
    if-nez v2, :cond_25

    .line 285
    const-string v2, "DocumentFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content instance in not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_4a

    .line 303
    :goto_23
    monitor-exit p0

    return-wide v0

    .line 289
    :cond_25
    :try_start_25
    invoke-direct {p0, v2}, LQP;->a(LkS;)LQS;

    move-result-object v3

    .line 290
    invoke-virtual {v3}, LQS;->a()LQV;

    move-result-object v4

    sget-object v5, LQV;->c:LQV;

    if-eq v4, v5, :cond_4d

    .line 291
    const-string v2, "DocumentFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content instance in use: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_25 .. :try_end_49} :catchall_4a

    goto :goto_23

    .line 283
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 295
    :cond_4d
    :try_start_4d
    invoke-virtual {v3}, LQS;->b()J

    move-result-wide v0

    .line 297
    iget-object v4, p0, LQP;->a:Llu;

    invoke-interface {v4, v2}, Llu;->a(LkS;)V

    .line 298
    invoke-virtual {v3}, LQS;->d()V

    .line 300
    iget-object v2, p0, LQP;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v2, "DocumentFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting content instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_4d .. :try_end_84} :catchall_4a

    goto :goto_23
.end method

.method private declared-synchronized a(LkS;)LQO;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 271
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, LQP;->a(LkS;)LQS;

    move-result-object v3

    .line 272
    invoke-virtual {v3}, LQS;->a()V

    .line 273
    invoke-virtual {v3}, LQS;->a()Z

    move-result v1

    if-nez v1, :cond_14

    .line 274
    invoke-virtual {v3}, LQS;->c()V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_22

    .line 279
    :goto_12
    monitor-exit p0

    return-object v0

    .line 277
    :cond_14
    :try_start_14
    invoke-direct {p0, v3}, LQP;->a(LQS;)V

    .line 279
    new-instance v0, LQQ;

    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-object v5, LQM;->a:LQM;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, LQQ;-><init>(LQP;LkR;LQS;Ljava/lang/String;LQM;)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_22

    goto :goto_12

    .line 271
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(LkS;)LQS;
    .registers 5
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, LQP;->a:Ljava/util/Map;

    invoke-virtual {p1}, LkS;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQS;

    .line 308
    if-nez v0, :cond_18

    .line 309
    iget-object v0, p0, LQP;->a:LQU;

    invoke-virtual {v0, p1}, LQU;->a(LkS;)LQS;

    move-result-object v0

    .line 311
    :cond_18
    return-object v0
.end method

.method static synthetic a(LQP;)LQZ;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, LQP;->a:LQZ;

    return-object v0
.end method

.method static synthetic a(LQP;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, LQP;->a:Ljava/util/Map;

    return-object v0
.end method

.method private a(LQS;)V
    .registers 5
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, LQP;->a:Ljava/util/Map;

    invoke-virtual {p1}, LQS;->a()LkS;

    move-result-object v1

    invoke-virtual {v1}, LkS;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 8
    .parameter

    .prologue
    .line 472
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_26

    aget-object v3, v1, v0

    .line 473
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 474
    invoke-direct {p0, v3}, LQP;->a(Ljava/io/File;)V

    .line 472
    :cond_13
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 476
    :cond_16
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 477
    iget-object v5, p0, LQP;->a:Llu;

    invoke-interface {v5, v4}, Llu;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 478
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_13

    .line 482
    :cond_26
    return-void
.end method

.method private a(Z)V
    .registers 6
    .parameter

    .prologue
    .line 355
    if-eqz p1, :cond_2f

    .line 357
    :try_start_2
    iget-object v0, p0, LQP;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_3f

    .line 368
    :cond_7
    :try_start_7
    invoke-direct {p0}, LQP;->c()V

    .line 369
    invoke-direct {p0, p1}, LQP;->b(Z)V

    .line 371
    if-eqz p1, :cond_18

    .line 373
    iget-object v0, p0, LQP;->a:LZJ;

    invoke-interface {v0}, LZJ;->b()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, LQP;->a(Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_61

    .line 376
    :cond_18
    :try_start_18
    iget-object v0, p0, LQP;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 379
    monitor-enter p0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1e} :catch_3f

    .line 380
    :try_start_1e
    iget-object v0, p0, LQP;->a:LQZ;

    invoke-interface {v0}, LQZ;->a()J

    move-result-wide v0

    iget-object v2, p0, LQP;->a:LQZ;

    invoke-interface {v2}, LQZ;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, LQP;->a:J

    .line 381
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_68

    .line 388
    :goto_2e
    return-void

    .line 361
    :cond_2f
    :try_start_2f
    iget-object v0, p0, LQP;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_7

    .line 362
    const-string v0, "DocumentFileManager"

    const-string v1, "Garbage collection already in progress."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3e} :catch_3f

    goto :goto_2e

    .line 382
    :catch_3f
    move-exception v0

    .line 385
    const-string v1, "DocumentFileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Garbage collection failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQP;->a:J

    goto :goto_2e

    .line 376
    :catchall_61
    move-exception v0

    :try_start_62
    iget-object v1, p0, LQP;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_68} :catch_3f

    .line 381
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw v0
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6b} :catch_3f
.end method

.method private declared-synchronized a(LkS;)Z
    .registers 5
    .parameter

    .prologue
    .line 391
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LQP;->a:Ljava/util/Map;

    invoke-virtual {p1}, LkS;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_16

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Z)V
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 416
    const-wide v2, 0x7fffffffffffffffL

    .line 419
    if-nez p1, :cond_8a

    .line 426
    iget-object v0, p0, LQP;->a:LQZ;

    invoke-interface {v0}, LQZ;->a()J

    move-result-wide v2

    .line 427
    iget-object v0, p0, LQP;->a:LQZ;

    invoke-interface {v0}, LQZ;->b()J

    move-result-wide v4

    .line 428
    cmp-long v0, v4, v2

    if-gtz v0, :cond_3b

    .line 429
    const-string v0, "DocumentFileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Garbage collection skipped "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_3a
    :goto_3a
    return-void

    .line 434
    :cond_3b
    sub-long v2, v4, v2

    .line 436
    iget-object v0, p0, LQP;->a:LQZ;

    invoke-interface {v0}, LQZ;->a()I

    move-result v0

    .line 439
    :goto_43
    iget-object v4, p0, LQP;->a:Llu;

    invoke-interface {v4}, Llu;->a()Landroid/database/Cursor;

    move-result-object v4

    .line 440
    if-eqz v4, :cond_3a

    .line 445
    :try_start_4b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_85

    move-result v5

    if-nez v5, :cond_55

    .line 467
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_3a

    .line 449
    :cond_55
    :try_start_55
    invoke-static {}, LMf;->a()LMf;

    move-result-object v5

    invoke-virtual {v5}, LMf;->f()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 452
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 453
    :goto_65
    sub-int v7, v6, v0

    if-ge v1, v7, :cond_78

    .line 454
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 455
    invoke-direct {p0, v7, v8}, LQP;->a(J)J
    :try_end_70
    .catchall {:try_start_55 .. :try_end_70} :catchall_85

    move-result-wide v7

    .line 456
    sub-long/2addr v2, v7

    .line 457
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-gtz v7, :cond_7c

    .line 467
    :cond_78
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_3a

    .line 462
    :cond_7c
    :try_start_7c
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_85

    move-result v7

    if-eqz v7, :cond_78

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 467
    :catchall_85
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_8a
    move v0, v1

    goto :goto_43
.end method

.method private c()V
    .registers 7

    .prologue
    .line 395
    iget-object v0, p0, LQP;->a:Llu;

    invoke-interface {v0}, Llu;->a()Ljava/util/List;

    move-result-object v0

    .line 396
    if-nez v0, :cond_9

    .line 413
    :cond_8
    return-void

    .line 400
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LkS;

    .line 401
    invoke-direct {p0, v0}, LQP;->a(LkS;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 404
    const-string v2, "DocumentFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to garbage collect instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, LkS;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 410
    :cond_3c
    const-string v2, "DocumentFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting unreferenced content instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, LkS;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-direct {p0, v0}, LQP;->a(LkS;)LQS;

    move-result-object v0

    invoke-virtual {v0}, LQS;->d()V

    goto :goto_d
.end method


# virtual methods
.method public declared-synchronized a(LkR;LQM;)LQO;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 232
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0, p1, p2}, LQP;->c(LkR;LQM;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_25

    move-result v1

    if-nez v1, :cond_a

    .line 256
    :goto_8
    monitor-exit p0

    return-object v0

    .line 237
    :cond_a
    :try_start_a
    invoke-virtual {p1, p2}, LkR;->a(LQM;)J

    move-result-wide v1

    .line 238
    iget-object v3, p0, LQP;->a:Llu;

    invoke-interface {v3, v1, v2}, Llu;->a(J)LkS;

    move-result-object v1

    .line 239
    invoke-direct {p0, v1}, LQP;->a(LkS;)LQS;

    move-result-object v3

    .line 240
    invoke-virtual {v3}, LQS;->a()V

    .line 242
    invoke-virtual {v3}, LQS;->a()Z

    move-result v2

    if-nez v2, :cond_28

    .line 243
    invoke-virtual {v3}, LQS;->c()V
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_25

    goto :goto_8

    .line 232
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    .line 247
    :cond_28
    :try_start_28
    invoke-direct {p0, v3}, LQP;->a(LQS;)V

    .line 250
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 251
    invoke-virtual {v1, v0}, LkS;->a(Ljava/util/Date;)V

    .line 252
    iget-object v2, p0, LQP;->a:LQZ;

    invoke-interface {v2, v1}, LQZ;->a(LkS;)V

    .line 253
    invoke-virtual {p1, v0}, LkR;->c(Ljava/util/Date;)V

    .line 254
    iget-object v0, p0, LQP;->a:LQZ;

    invoke-interface {v0, p1}, LQZ;->a(LkR;)V

    .line 256
    new-instance v0, LQQ;

    invoke-virtual {v1}, LkS;->a()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LQQ;-><init>(LQP;LkR;LQS;Ljava/lang/String;LQM;)V
    :try_end_4c
    .catchall {:try_start_28 .. :try_end_4c} :catchall_25

    goto :goto_8
.end method

.method public declared-synchronized a(LkR;Ljava/lang/String;Ljava/lang/String;LQM;Ljava/lang/String;)LQO;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    sget-object v0, LQM;->a:LQM;

    if-ne p4, v0, :cond_36

    invoke-virtual {p1}, LkR;->g()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    .line 208
    :goto_c
    if-eqz v0, :cond_38

    iget-object v1, p0, LQP;->a:LZU;

    invoke-interface {v1}, LZU;->b()Z

    move-result v1

    if-nez v1, :cond_38

    .line 209
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External storage not ready for writing pinned file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, LkR;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_33

    .line 207
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_c

    .line 213
    :cond_38
    if-nez p5, :cond_42

    .line 214
    :try_start_3a
    invoke-virtual {p1}, LkR;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LRa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 217
    :cond_42
    iget-object v1, p0, LQP;->a:LQU;

    invoke-virtual {v1, p2, v0, p5}, LQU;->a(Ljava/lang/String;ZLjava/lang/String;)LQS;

    move-result-object v3

    .line 218
    invoke-virtual {v3}, LQS;->b()V

    .line 219
    invoke-direct {p0, v3}, LQP;->a(LQS;)V

    .line 221
    invoke-virtual {v3}, LQS;->a()LkS;

    .line 223
    new-instance v0, LQQ;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LQQ;-><init>(LQP;LkR;LQS;Ljava/lang/String;LQM;)V
    :try_end_5a
    .catchall {:try_start_3a .. :try_end_5a} :catchall_33

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized a(LkI;)Ljava/util/List;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkI;",
            ")",
            "Ljava/util/List",
            "<",
            "LQO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LQP;->a:Llu;

    invoke-interface {v0, p1}, Llu;->a(LkI;)Ljava/util/Set;

    move-result-object v0

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LkJ;

    .line 264
    iget-object v3, p0, LQP;->a:Llu;

    invoke-virtual {v0}, LkJ;->a()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Llu;->a(J)LkS;

    move-result-object v0

    .line 265
    invoke-direct {p0, v0}, LQP;->a(LkS;)LQO;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2e

    goto :goto_10

    .line 261
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 267
    :cond_31
    monitor-exit p0

    return-object v1
.end method

.method public a()V
    .registers 3

    .prologue
    .line 341
    const-string v0, "DocumentFileManager"

    const-string v1, "GC started"

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LQP;->a(Z)V

    .line 343
    const-string v0, "DocumentFileManager"

    const-string v1, "GC completed"

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method

.method a(J)V
    .registers 8
    .parameter

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 324
    monitor-enter p0

    .line 325
    :try_start_2
    iget-wide v1, p0, LQP;->a:J

    sub-long/2addr v1, p1

    iput-wide v1, p0, LQP;->a:J

    .line 326
    iget-wide v1, p0, LQP;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_10

    .line 327
    const/4 v0, 0x1

    .line 329
    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_17

    .line 331
    if-eqz v0, :cond_16

    .line 332
    invoke-virtual {p0}, LQP;->a()V

    .line 334
    :cond_16
    return-void

    .line 329
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public a(LkR;LQM;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 184
    if-eqz p2, :cond_b

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 185
    invoke-virtual {p1, p2}, LkR;->a(LQM;)Z

    move-result v0

    .line 186
    return v0

    .line 184
    :cond_b
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public b()V
    .registers 3

    .prologue
    .line 348
    const-string v0, "DocumentFileManager"

    const-string v1, "Cache cleanup started"

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LQP;->a(Z)V

    .line 350
    const-string v0, "DocumentFileManager"

    const-string v1, "Cache cleanup completed"

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void
.end method

.method public b(LkR;LQM;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 191
    if-eqz p2, :cond_14

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, LafQ;->a(Z)V

    .line 192
    invoke-virtual {p1, p2}, LkR;->a(LQM;)J

    move-result-wide v2

    .line 193
    iget-object v0, p0, LQP;->a:Llu;

    invoke-interface {v0, v2, v3}, Llu;->a(J)LkS;

    move-result-object v0

    .line 194
    if-nez v0, :cond_16

    .line 197
    :goto_13
    return v1

    :cond_14
    move v0, v1

    .line 191
    goto :goto_4

    .line 197
    :cond_16
    invoke-direct {p0, v0}, LQP;->a(LkS;)LQS;

    move-result-object v0

    invoke-virtual {v0}, LQS;->a()Z

    move-result v1

    goto :goto_13
.end method

.method public c(LkR;LQM;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    if-eqz p2, :cond_2d

    move v0, v1

    :goto_8
    invoke-static {v0}, LafQ;->a(Z)V

    .line 173
    invoke-virtual {p0, p1, p2}, LQP;->b(LkR;LQM;)Z

    move-result v3

    .line 174
    sget-object v0, LQM;->a:LQM;

    if-ne p2, v0, :cond_2f

    invoke-virtual {p1}, LkR;->g()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, LQP;->a:Landroid/content/Context;

    invoke-static {v0}, LXH;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2f

    move v0, v1

    .line 177
    :goto_22
    invoke-virtual {p0, p1, p2}, LQP;->a(LkR;LQM;)Z

    move-result v4

    .line 179
    if-eqz v3, :cond_31

    if-nez v0, :cond_2c

    if-eqz v4, :cond_31

    :cond_2c
    :goto_2c
    return v1

    :cond_2d
    move v0, v2

    .line 171
    goto :goto_8

    :cond_2f
    move v0, v2

    .line 174
    goto :goto_22

    :cond_31
    move v1, v2

    .line 179
    goto :goto_2c
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 486
    const-string v0, "DocumentFileManagerImpl[%d files]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LQP;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
