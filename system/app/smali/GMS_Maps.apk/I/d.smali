.class public Li/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/S;


# static fields
.field private static final a:[B


# instance fields
.field private b:Z

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private e:Li/aa;

.field private volatile f:Z

.field private g:Li/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/high16 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Li/d;->a:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Li/aa;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Li/d;->f:Z

    .line 97
    new-instance v0, Li/i;

    invoke-direct {v0}, Li/i;-><init>()V

    iput-object v0, p0, Li/d;->g:Li/i;

    .line 269
    iput-object p1, p0, Li/d;->c:Landroid/content/Context;

    .line 270
    iput-object p2, p0, Li/d;->d:Landroid/os/Handler;

    .line 271
    iput-object p3, p0, Li/d;->e:Li/aa;

    .line 272
    iget-object v2, p0, Li/d;->g:Li/i;

    monitor-enter v2

    move v0, v1

    .line 273
    :goto_17
    const/16 v3, 0x14

    if-gt v0, v3, :cond_3e

    .line 274
    :try_start_1b
    iget-object v3, p0, Li/d;->g:Li/i;

    iget-object v3, v3, Li/i;->a:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "._speech_nav_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".wav"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 276
    :cond_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_1b .. :try_end_3f} :catchall_53

    .line 283
    iput-boolean v1, p0, Li/d;->b:Z

    .line 285
    iget-object v0, p0, Li/d;->e:Li/aa;

    new-instance v1, Li/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Li/h;-><init>(Li/d;Li/e;)V

    invoke-interface {v0, v1}, Li/aa;->a(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    move-result v0

    if-eqz v0, :cond_52

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Li/d;->f:Z

    .line 289
    :cond_52
    return-void

    .line 276
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0
.end method

.method static synthetic a(Li/d;)Li/i;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Li/d;->g:Li/i;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Ljava/io/File;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 354
    if-eqz p2, :cond_e

    .line 355
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Li/d;->c:Landroid/content/Context;

    invoke-static {v1}, Lh/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 361
    :goto_d
    return-object v0

    .line 358
    :cond_e
    iget-object v0, p0, Li/d;->c:Landroid/content/Context;

    const-string v1, "da_speech"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 359
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_d
.end method

.method static synthetic a(Li/d;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Li/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Li/k;)V
    .registers 4
    .parameter

    .prologue
    .line 442
    iget-object v1, p0, Li/d;->g:Li/i;

    monitor-enter v1

    .line 443
    :try_start_3
    iget-object v0, p0, Li/d;->g:Li/i;

    iget-object v0, v0, Li/i;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 444
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 445
    invoke-direct {p0}, Li/d;->e()V

    .line 446
    return-void

    .line 444
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 599
    if-nez p1, :cond_3

    .line 627
    :goto_2
    return-void

    .line 604
    :cond_3
    iget-object v1, p0, Li/d;->g:Li/i;

    monitor-enter v1

    .line 608
    :try_start_6
    iget-object v0, p0, Li/d;->g:Li/i;

    iget-object v0, v0, Li/i;->c:Li/k;

    .line 609
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_3c

    .line 610
    if-eqz v0, :cond_2f

    .line 611
    invoke-virtual {v0}, Li/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 612
    invoke-virtual {v0}, Li/k;->d()Li/f;

    move-result-object v1

    .line 613
    if-eqz v1, :cond_2f

    .line 614
    iget-object v2, p0, Li/d;->g:Li/i;

    monitor-enter v2

    .line 615
    :try_start_20
    iget-object v3, p0, Li/d;->g:Li/i;

    iget-object v3, v3, Li/i;->d:Lt/f;

    invoke-virtual {v0}, Li/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 616
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_3f

    .line 617
    invoke-virtual {v0, v1}, Li/k;->a(Li/a;)V

    .line 623
    :cond_2f
    :goto_2f
    iget-object v1, p0, Li/d;->g:Li/i;

    monitor-enter v1

    .line 624
    :try_start_32
    iget-object v0, p0, Li/d;->g:Li/i;

    const/4 v2, 0x0

    iput-object v2, v0, Li/i;->c:Li/k;

    .line 625
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_46

    .line 626
    invoke-direct {p0}, Li/d;->e()V

    goto :goto_2

    .line 609
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0

    .line 616
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0

    .line 620
    :cond_42
    invoke-virtual {v0}, Li/k;->a()V

    goto :goto_2f

    .line 625
    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0
.end method

.method public static a(Ljava/io/File;)Z
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x46

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 303
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_9} :catch_d0

    .line 308
    const/16 v3, 0x2c

    :try_start_b
    new-array v3, v3, [B

    .line 309
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    array-length v5, v3
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_c2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_b9

    if-eq v4, v5, :cond_18

    .line 343
    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_c7

    .line 349
    :goto_17
    return v0

    .line 313
    :cond_18
    const/4 v4, 0x0

    :try_start_19
    aget-byte v4, v3, v4

    const/16 v5, 0x52

    if-ne v4, v5, :cond_50

    const/4 v4, 0x1

    aget-byte v4, v3, v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_50

    const/4 v4, 0x2

    aget-byte v4, v3, v4

    if-ne v4, v6, :cond_50

    const/4 v4, 0x3

    aget-byte v4, v3, v4

    if-ne v4, v6, :cond_50

    const/16 v4, 0x8

    aget-byte v4, v3, v4

    const/16 v5, 0x57

    if-ne v4, v5, :cond_50

    const/16 v4, 0x9

    aget-byte v4, v3, v4

    const/16 v5, 0x41

    if-ne v4, v5, :cond_50

    const/16 v4, 0xa

    aget-byte v4, v3, v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_50

    const/16 v4, 0xb

    aget-byte v4, v3, v4
    :try_end_4c
    .catchall {:try_start_19 .. :try_end_4c} :catchall_c2
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_4c} :catch_b9

    const/16 v5, 0x45

    if-eq v4, v5, :cond_55

    .line 343
    :cond_50
    :try_start_50
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_ca

    :goto_53
    move v0, v1

    .line 346
    goto :goto_17

    .line 320
    :cond_55
    const/16 v4, 0x28

    :try_start_57
    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x29

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0x2a

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0x2b

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v3, v4

    .line 324
    if-lez v3, :cond_83

    add-int/lit8 v4, v3, 0x2c

    int-to-long v4, v4

    invoke-virtual {p0}, Ljava/io/File;->length()J
    :try_end_7e
    .catchall {:try_start_57 .. :try_end_7e} :catchall_c2
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_7e} :catch_b9

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_89

    .line 343
    :cond_83
    :try_start_83
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_17

    .line 344
    :catch_87
    move-exception v1

    goto :goto_17

    .line 330
    :cond_89
    :try_start_89
    sget-object v4, Li/d;->a:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 331
    sget-object v4, Li/d;->a:[B

    array-length v4, v4

    new-array v4, v4, [B

    .line 332
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_98
    .catchall {:try_start_89 .. :try_end_98} :catchall_c2
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_98} :catch_b9

    move-result v5

    if-eq v5, v3, :cond_a3

    .line 343
    :try_start_9b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a0

    goto/16 :goto_17

    .line 344
    :catch_a0
    move-exception v1

    goto/16 :goto_17

    .line 336
    :cond_a3
    :try_start_a3
    sget-object v3, Li/d;->a:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_c2
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a8} :catch_b9

    move-result v3

    if-eqz v3, :cond_b3

    .line 343
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_b0

    goto/16 :goto_17

    .line 344
    :catch_b0
    move-exception v1

    goto/16 :goto_17

    .line 343
    :cond_b3
    :try_start_b3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_cc

    :goto_b6
    move v0, v1

    .line 349
    goto/16 :goto_17

    .line 339
    :catch_b9
    move-exception v1

    .line 343
    :try_start_ba
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_bf

    goto/16 :goto_17

    .line 344
    :catch_bf
    move-exception v1

    goto/16 :goto_17

    .line 342
    :catchall_c2
    move-exception v0

    .line 343
    :try_start_c3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_ce

    .line 346
    :goto_c6
    throw v0

    .line 344
    :catch_c7
    move-exception v1

    goto/16 :goto_17

    :catch_ca
    move-exception v0

    goto :goto_53

    :catch_cc
    move-exception v0

    goto :goto_b6

    :catch_ce
    move-exception v1

    goto :goto_c6

    .line 304
    :catch_d0
    move-exception v1

    goto/16 :goto_17
.end method

.method private a(Z)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 573
    if-eqz p1, :cond_a

    .line 574
    :try_start_3
    invoke-virtual {p0}, Li/d;->c()Landroid/os/StatFs;

    move-result-object v0

    .line 583
    :goto_7
    if-nez v0, :cond_f

    .line 589
    :goto_9
    return v1

    .line 576
    :cond_a
    invoke-virtual {p0}, Li/d;->d()Landroid/os/StatFs;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_d} :catch_26

    move-result-object v0

    goto :goto_7

    .line 586
    :cond_f
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    .line 587
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    .line 588
    mul-long/2addr v2, v4

    .line 589
    const-wide/32 v4, 0x80000

    cmp-long v0, v2, v4

    if-lez v0, :cond_24

    const/4 v0, 0x1

    :goto_22
    move v1, v0

    goto :goto_9

    :cond_24
    move v0, v1

    goto :goto_22

    .line 578
    :catch_26
    move-exception v0

    goto :goto_9
.end method

.method static synthetic b(Li/d;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Li/d;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Li/d;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Li/d;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 450
    .line 451
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 453
    iget-object v4, p0, Li/d;->g:Li/i;

    monitor-enter v4

    .line 454
    :try_start_b
    iget-object v0, p0, Li/d;->g:Li/i;

    iget-object v0, v0, Li/i;->c:Li/k;

    if-eqz v0, :cond_13

    .line 455
    monitor-exit v4

    .line 539
    :cond_12
    :goto_12
    return-void

    .line 457
    :cond_13
    :goto_13
    iget-object v0, p0, Li/d;->g:Li/i;

    iget-object v0, v0, Li/i;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_fd

    .line 459
    iget-object v0, p0, Li/d;->g:Li/i;

    iget-object v0, v0, Li/i;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/k;

    .line 460
    iget-object v2, p0, Li/d;->g:Li/i;

    iget-object v2, v2, Li/i;->d:Lt/f;

    invoke-virtual {v0}, Li/k;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 461
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 468
    :catchall_39
    move-exception v0

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_39

    throw v0

    .line 464
    :cond_3c
    :try_start_3c
    iget-object v1, p0, Li/d;->g:Li/i;

    iput-object v0, v1, Li/i;->c:Li/k;

    move-object v2, v0

    .line 468
    :goto_41
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_39

    .line 472
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_46
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Li/k;

    .line 474
    iget-object v4, p0, Li/d;->g:Li/i;

    monitor-enter v4

    .line 475
    :try_start_56
    iget-object v0, p0, Li/d;->g:Li/i;

    iget-object v0, v0, Li/i;->d:Lt/f;

    invoke-virtual {v1}, Li/k;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a;

    .line 476
    monitor-exit v4
    :try_end_65
    .catchall {:try_start_56 .. :try_end_65} :catchall_6b

    .line 477
    if-eqz v0, :cond_46

    .line 478
    invoke-virtual {v1, v0}, Li/k;->a(Li/a;)V

    goto :goto_46

    .line 476
    :catchall_6b
    move-exception v0

    :try_start_6c
    monitor-exit v4
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v0

    .line 483
    :cond_6e
    if-eqz v2, :cond_12

    .line 494
    iget-boolean v0, p0, Li/d;->b:Z

    if-eqz v0, :cond_81

    invoke-direct {p0, v7}, Li/d;->a(Z)Z

    move-result v0

    if-nez v0, :cond_81

    .line 495
    const-string v0, "d"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dc;->a(Ljava/lang/String;)V

    .line 496
    iput-boolean v6, p0, Li/d;->b:Z

    .line 498
    :cond_81
    iget-boolean v0, p0, Li/d;->b:Z

    if-nez v0, :cond_97

    invoke-direct {p0, v6}, Li/d;->a(Z)Z

    move-result v0

    if-nez v0, :cond_97

    .line 499
    const-string v0, "s"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dc;->a(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Li/d;->a()V

    .line 504
    iput-boolean v7, p0, Li/d;->f:Z

    goto/16 :goto_12

    .line 510
    :cond_97
    iget-object v1, p0, Li/d;->g:Li/i;

    monitor-enter v1

    .line 511
    :try_start_9a
    iget-object v0, p0, Li/d;->g:Li/i;

    iget-object v0, v0, Li/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_ab

    .line 516
    iget-object v0, p0, Li/d;->g:Li/i;

    iget-object v0, v0, Li/i;->d:Lt/f;

    invoke-virtual {v0}, Lt/f;->g()Ljava/lang/Object;

    .line 518
    :cond_ab
    iget-object v0, p0, Li/d;->g:Li/i;

    iget-object v0, v0, Li/i;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Li/d;->g:Li/i;

    iget-object v3, v3, Li/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 519
    monitor-exit v1
    :try_end_c0
    .catchall {:try_start_9a .. :try_end_c0} :catchall_f7

    .line 521
    if-eqz v0, :cond_12

    .line 522
    iget-boolean v1, p0, Li/d;->b:Z

    invoke-direct {p0, v0, v1}, Li/d;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 523
    invoke-virtual {v2, v0, v1}, Li/k;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 525
    iget-object v3, p0, Li/d;->e:Li/aa;

    invoke-virtual {v2}, Li/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v0, v1, v6}, Li/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 526
    if-eqz v0, :cond_12

    .line 527
    const-string v0, "x"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dc;->a(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v2}, Li/k;->a()V

    .line 531
    iget-object v1, p0, Li/d;->g:Li/i;

    monitor-enter v1

    .line 532
    :try_start_e6
    iget-object v0, p0, Li/d;->g:Li/i;

    iget-object v0, v0, Li/i;->c:Li/k;

    if-ne v0, v2, :cond_f1

    .line 533
    iget-object v0, p0, Li/d;->g:Li/i;

    const/4 v2, 0x0

    iput-object v2, v0, Li/i;->c:Li/k;

    .line 535
    :cond_f1
    monitor-exit v1
    :try_end_f2
    .catchall {:try_start_e6 .. :try_end_f2} :catchall_fa

    .line 536
    invoke-direct {p0}, Li/d;->e()V

    goto/16 :goto_12

    .line 519
    :catchall_f7
    move-exception v0

    :try_start_f8
    monitor-exit v1
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f7

    throw v0

    .line 535
    :catchall_fa
    move-exception v0

    :try_start_fb
    monitor-exit v1
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v0

    :cond_fd
    move-object v2, v1

    goto/16 :goto_41
.end method


# virtual methods
.method public a(Li/U;)Li/a;
    .registers 5
    .parameter

    .prologue
    .line 400
    iget-object v1, p0, Li/d;->g:Li/i;

    monitor-enter v1

    .line 401
    :try_start_3
    iget-object v0, p0, Li/d;->g:Li/i;

    iget-object v0, v0, Li/i;->d:Lt/f;

    invoke-virtual {p1}, Li/U;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a;

    monitor-exit v1

    return-object v0

    .line 402
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public a()V
    .registers 5

    .prologue
    .line 407
    iget-boolean v0, p0, Li/d;->f:Z

    if-eqz v0, :cond_5

    .line 427
    :cond_4
    return-void

    .line 411
    :cond_5
    iget-object v1, p0, Li/d;->g:Li/i;

    monitor-enter v1

    .line 412
    :try_start_8
    iget-object v0, p0, Li/d;->g:Li/i;

    iget-object v0, v0, Li/i;->b:Ljava/util/LinkedList;

    .line 413
    iget-object v2, p0, Li/d;->g:Li/i;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Li/i;->b:Ljava/util/LinkedList;

    .line 414
    iget-object v2, p0, Li/d;->g:Li/i;

    iget-object v2, v2, Li/i;->c:Li/k;

    if-eqz v2, :cond_2c

    .line 415
    iget-object v2, p0, Li/d;->g:Li/i;

    iget-object v2, v2, Li/i;->c:Li/k;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v2, p0, Li/d;->e:Li/aa;

    invoke-interface {v2}, Li/aa;->c()I

    .line 417
    iget-object v2, p0, Li/d;->g:Li/i;

    const/4 v3, 0x0

    iput-object v3, v2, Li/i;->c:Li/k;

    .line 419
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_43

    .line 420
    if-eqz v0, :cond_4

    .line 423
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/k;

    .line 424
    invoke-virtual {v0}, Li/k;->a()V

    goto :goto_33

    .line 419
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public a(Li/U;Li/T;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 366
    iget-boolean v0, p0, Li/d;->f:Z

    if-eqz v0, :cond_9

    .line 367
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Li/T;->a(Li/U;Li/a;)V

    .line 382
    :cond_8
    :goto_8
    return-void

    .line 370
    :cond_9
    invoke-virtual {p0, p1}, Li/d;->a(Li/U;)Li/a;

    move-result-object v0

    check-cast v0, Li/f;

    .line 371
    if-eqz v0, :cond_1c

    .line 372
    const-string v1, "h"

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dc;->a(Ljava/lang/String;)V

    .line 375
    if-eqz p2, :cond_8

    .line 376
    invoke-interface {p2, p1, v0}, Li/T;->a(Li/U;Li/a;)V

    goto :goto_8

    .line 380
    :cond_1c
    const-string v0, "m"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dc;->a(Ljava/lang/String;)V

    .line 381
    new-instance v0, Li/k;

    invoke-direct {v0, p0, p1, p2}, Li/k;-><init>(Li/d;Li/U;Li/T;)V

    invoke-direct {p0, v0}, Li/d;->a(Li/k;)V

    goto :goto_8
.end method

.method public b()V
    .registers 3

    .prologue
    .line 431
    iget-object v0, p0, Li/d;->e:Li/aa;

    if-eqz v0, :cond_e

    .line 432
    iget-object v0, p0, Li/d;->e:Li/aa;

    invoke-interface {v0}, Li/aa;->c()I

    .line 433
    iget-object v0, p0, Li/d;->e:Li/aa;

    invoke-interface {v0}, Li/aa;->a()V

    .line 435
    :cond_e
    iget-object v1, p0, Li/d;->g:Li/i;

    monitor-enter v1

    .line 436
    :try_start_11
    iget-object v0, p0, Li/d;->g:Li/i;

    iget-object v0, v0, Li/i;->d:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 437
    monitor-exit v1

    .line 438
    return-void

    .line 437
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method protected c()Landroid/os/StatFs;
    .registers 3

    .prologue
    .line 549
    iget-object v0, p0, Li/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lh/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 550
    if-nez v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected d()Landroid/os/StatFs;
    .registers 3

    .prologue
    .line 560
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Li/d;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
