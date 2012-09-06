.class public Li/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/B;


# static fields
.field private static a:Li/E;


# instance fields
.field private final b:Lac/p;

.field private final c:Ljava/util/Map;

.field private final d:Landroid/content/Context;

.field private e:Li/C;

.field private f:Li/H;

.field private g:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lac/p;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Li/E;->c:Ljava/util/Map;

    .line 237
    iput-object p1, p0, Li/E;->b:Lac/p;

    .line 238
    iput-object p2, p0, Li/E;->d:Landroid/content/Context;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Li/E;->d:Landroid/content/Context;

    invoke-static {v1}, Lh/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Li/E;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li/E;->g:Ljava/lang/String;

    .line 241
    invoke-direct {p0}, Li/E;->c()V

    .line 243
    invoke-direct {p0}, Li/E;->e()V

    .line 244
    return-void
.end method

.method public static a(Lac/p;Landroid/content/Context;)Li/E;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 312
    sget-object v0, Li/E;->a:Li/E;

    if-nez v0, :cond_b

    .line 313
    new-instance v0, Li/E;

    invoke-direct {v0, p0, p1}, Li/E;-><init>(Lac/p;Landroid/content/Context;)V

    sput-object v0, Li/E;->a:Li/E;

    .line 315
    :cond_b
    sget-object v0, Li/E;->a:Li/E;

    return-object v0
.end method

.method static synthetic a(Li/E;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Li/E;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Li/E;Li/H;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Li/E;->b(Li/H;)V

    return-void
.end method

.method static synthetic a(Li/E;Li/H;Li/F;[B)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Li/E;->a(Li/H;Li/F;[B)V

    return-void
.end method

.method private declared-synchronized a(Li/F;)V
    .registers 7
    .parameter

    .prologue
    .line 275
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Li/E;->c:Ljava/util/Map;

    invoke-virtual {p1}, Li/F;->i()Li/G;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/F;

    .line 276
    iget-object v1, p0, Li/E;->c:Ljava/util/Map;

    invoke-virtual {p1}, Li/F;->i()Li/G;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Li/F;->b()J

    move-result-wide v1

    invoke-virtual {p1}, Li/F;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_27

    .line 278
    invoke-direct {p0, v0}, Li/E;->b(Li/F;)V

    .line 280
    :cond_27
    invoke-direct {p0}, Li/E;->d()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 281
    monitor-exit p0

    return-void

    .line 275
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Li/H;)V
    .registers 5
    .parameter

    .prologue
    .line 512
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Li/H;->a(Li/H;)I

    move-result v0

    invoke-direct {p0, v0}, Li/E;->b(I)I

    move-result v0

    .line 514
    invoke-static {p1}, Li/H;->a(Li/H;)I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 515
    invoke-direct {p0, p1}, Li/E;->b(Li/H;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_30

    .line 527
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 520
    :cond_14
    :try_start_14
    invoke-static {p1}, Li/H;->b(Li/H;)Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Li/E;->e:Li/C;

    invoke-virtual {p0, v1, v0, v2}, Li/E;->a(Ljava/util/Locale;ILi/C;)Li/v;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_12

    iget-object v1, p0, Li/E;->e:Li/C;

    if-eqz v1, :cond_12

    .line 523
    iget-object v1, p0, Li/E;->e:Li/C;

    invoke-interface {v1, v0}, Li/C;->a(Li/v;)V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Li/E;->e:Li/C;

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Li/E;->f:Li/H;
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_30

    goto :goto_12

    .line 512
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Li/H;Li/F;[B)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p2}, Li/E;->c(Li/F;)Ljava/io/File;

    move-result-object v1

    .line 468
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_51

    .line 470
    :try_start_c
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 471
    invoke-virtual {v0, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 472
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_51
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_17} :catch_36
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_54

    .line 489
    :try_start_17
    invoke-static {v1}, Li/v;->a(Ljava/io/File;)Li/v;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_51
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_72

    move-result-object v0

    .line 498
    :try_start_1b
    iget-object v1, p0, Li/E;->f:Li/H;

    if-ne p1, v1, :cond_31

    iget-object v1, p0, Li/E;->e:Li/C;

    if-eqz v1, :cond_31

    .line 499
    invoke-virtual {p0, v0}, Li/E;->a(Li/v;)V

    .line 500
    iget-object v1, p0, Li/E;->e:Li/C;

    invoke-interface {v1, v0}, Li/C;->a(Li/v;)V

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Li/E;->e:Li/C;

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Li/E;->f:Li/H;

    .line 505
    :cond_31
    invoke-direct {p0, p2}, Li/E;->a(Li/F;)V
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_51

    .line 506
    :goto_34
    monitor-exit p0

    return-void

    .line 473
    :catch_36
    move-exception v0

    .line 476
    :try_start_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot save bundle to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 477
    invoke-direct {p0, p1}, Li/E;->b(Li/H;)V
    :try_end_50
    .catchall {:try_start_37 .. :try_end_50} :catchall_51

    goto :goto_34

    .line 467
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0

    .line 479
    :catch_54
    move-exception v0

    .line 481
    :try_start_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot save bundle to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 482
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 483
    invoke-direct {p0, p1}, Li/E;->b(Li/H;)V

    goto :goto_34

    .line 490
    :catch_72
    move-exception v0

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Li/F;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 493
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 494
    invoke-direct {p0, p1}, Li/E;->b(Li/H;)V
    :try_end_93
    .catchall {:try_start_55 .. :try_end_93} :catchall_51

    goto :goto_34
.end method

.method private b(I)I
    .registers 3
    .parameter

    .prologue
    .line 544
    packed-switch p1, :pswitch_data_8

    .line 550
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 546
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    .line 544
    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic b(Li/E;)V
    .registers 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Li/E;->d()V

    return-void
.end method

.method static synthetic b(Li/E;Li/H;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Li/E;->a(Li/H;)V

    return-void
.end method

.method private b(Li/F;)V
    .registers 7
    .parameter

    .prologue
    .line 296
    invoke-virtual {p1}, Li/F;->e()Ljava/io/File;

    move-result-object v1

    .line 297
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 298
    if-nez v2, :cond_b

    .line 305
    :goto_a
    return-void

    .line 301
    :cond_b
    const/4 v0, 0x0

    :goto_c
    array-length v3, v2

    if-ge v0, v3, :cond_1c

    .line 302
    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 304
    :cond_1c
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_a
.end method

.method private declared-synchronized b(Li/H;)V
    .registers 3
    .parameter

    .prologue
    .line 530
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Li/E;->f:Li/H;

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Li/E;->e:Li/C;

    if-eqz v0, :cond_14

    .line 531
    iget-object v0, p0, Li/E;->e:Li/C;

    invoke-interface {v0}, Li/C;->a()V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Li/E;->e:Li/C;

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Li/E;->f:Li/H;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 535
    :cond_14
    monitor-exit p0

    return-void

    .line 530
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Li/F;)Ljava/io/File;
    .registers 5
    .parameter

    .prologue
    .line 581
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Li/F;->e()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Li/F;->f()I

    move-result v2

    invoke-virtual {p0, v2}, Li/E;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private c()V
    .registers 6

    .prologue
    .line 251
    iget-object v0, p0, Li/E;->d:Landroid/content/Context;

    invoke-virtual {p0}, Li/E;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lt/q;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 254
    const/4 v0, 0x0

    :goto_13
    array-length v2, v1

    if-ge v0, v2, :cond_2c

    .line 255
    aget-object v2, v1, v0

    iget-object v3, p0, Li/E;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Li/F;->a(Ljava/lang/String;Ljava/lang/String;)Li/F;

    move-result-object v2

    .line 256
    if-eqz v2, :cond_29

    .line 257
    iget-object v3, p0, Li/E;->c:Ljava/util/Map;

    invoke-virtual {v2}, Li/F;->i()Li/G;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 260
    :cond_2c
    return-void
.end method

.method private declared-synchronized d()V
    .registers 5

    .prologue
    .line 263
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    iget-object v0, p0, Li/E;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/F;

    .line 265
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_27

    .line 266
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_27
    invoke-virtual {v0}, Li/F;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2f

    goto :goto_10

    .line 263
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :cond_32
    :try_start_32
    iget-object v0, p0, Li/E;->d:Landroid/content/Context;

    invoke-virtual {p0}, Li/E;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_2f

    .line 272
    monitor-exit p0

    return-void
.end method

.method private e()V
    .registers 4

    .prologue
    .line 284
    iget-object v0, p0, Li/E;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 285
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 286
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/F;

    .line 287
    invoke-virtual {v0}, Li/F;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 288
    invoke-direct {p0, v0}, Li/E;->b(Li/F;)V

    .line 289
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 292
    :cond_23
    invoke-direct {p0}, Li/E;->d()V

    .line 293
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/Locale;ILi/C;)Li/v;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 349
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Li/E;->c:Ljava/util/Map;

    new-instance v1, Li/G;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Li/G;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/F;
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_5d

    .line 352
    if-eqz v0, :cond_64

    .line 354
    :try_start_15
    invoke-direct {p0, v0}, Li/E;->c(Li/F;)Ljava/io/File;

    move-result-object v1

    .line 355
    invoke-static {v1}, Li/v;->a(Ljava/io/File;)Li/v;
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_44

    move-result-object v2

    .line 356
    :try_start_1d
    invoke-virtual {p0, v2}, Li/E;->a(Li/v;)V

    .line 357
    invoke-virtual {v0}, Li/F;->g()V

    .line 358
    invoke-direct {p0}, Li/E;->d()V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_26} :catch_62

    .line 364
    :goto_26
    if-eqz v0, :cond_2e

    :try_start_28
    invoke-virtual {v0}, Li/F;->c()Z

    move-result v1

    if-nez v1, :cond_30

    :cond_2e
    if-nez v2, :cond_42

    .line 365
    :cond_30
    new-instance v1, Li/H;

    if-eqz v2, :cond_60

    :goto_34
    invoke-direct {v1, p0, p1, p2, v0}, Li/H;-><init>(Li/E;Ljava/util/Locale;ILi/F;)V

    iput-object v1, p0, Li/E;->f:Li/H;

    .line 366
    iput-object p3, p0, Li/E;->e:Li/C;

    .line 367
    iget-object v0, p0, Li/E;->b:Lac/p;

    iget-object v1, p0, Li/E;->f:Li/H;

    invoke-interface {v0, v1}, Lac/p;->c(Lac/g;)V
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_5d

    .line 370
    :cond_42
    monitor-exit p0

    return-object v2

    .line 359
    :catch_44
    move-exception v1

    move-object v2, v3

    .line 360
    :goto_46
    :try_start_46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse speech bundle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5c
    .catchall {:try_start_46 .. :try_end_5c} :catchall_5d

    goto :goto_26

    .line 349
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_60
    move-object v0, v3

    .line 365
    goto :goto_34

    .line 359
    :catch_62
    move-exception v1

    goto :goto_46

    :cond_64
    move-object v2, v3

    goto :goto_26
.end method

.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 232
    const-string v0, "/voice/"

    return-object v0
.end method

.method protected a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 563
    packed-switch p1, :pswitch_data_c

    .line 570
    const-string v0, "voice_instructions.zip"

    :goto_5
    return-object v0

    .line 565
    :pswitch_6
    const-string v0, "voice_instructions_imperial.zip"

    goto :goto_5

    .line 567
    :pswitch_9
    const-string v0, "voice_instructions_yards.zip"

    goto :goto_5

    .line 563
    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method a(Li/v;)V
    .registers 2
    .parameter

    .prologue
    .line 332
    return-void
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    const-string v0, "VoiceBundles"

    return-object v0
.end method
