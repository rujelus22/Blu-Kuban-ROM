.class public Lr/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/s;


# static fields
.field private static final a:Ln/al;

.field private static final b:[B


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lr/aB;

.field private final f:Ljava/util/HashMap;

.field private g:Lr/w;

.field private final h:I

.field private final i:Lcom/google/android/maps/driveabout/vector/dg;

.field private j:I

.field private k:Lcom/google/googlenav/common/a;

.field private l:Lr/as;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Ln/K;

    invoke-direct {v0}, Ln/K;-><init>()V

    sput-object v0, Lr/aq;->a:Ln/al;

    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lr/aq;->b:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILr/aB;Lcom/google/android/maps/driveabout/vector/dg;Lr/t;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lr/aq;->j:I

    .line 102
    new-instance v0, LR/a;

    invoke-direct {v0}, LR/a;-><init>()V

    iput-object v0, p0, Lr/aq;->k:Lcom/google/googlenav/common/a;

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lr/aq;->l:Lr/as;

    .line 373
    iput-object p1, p0, Lr/aq;->c:Ljava/lang/String;

    .line 374
    iput p2, p0, Lr/aq;->d:I

    .line 375
    iput-object p3, p0, Lr/aq;->e:Lr/aB;

    .line 376
    invoke-static {}, Lr/aq;->h()I

    move-result v0

    iput v0, p0, Lr/aq;->h:I

    .line 377
    iget v0, p0, Lr/aq;->h:I

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lr/aq;->f:Ljava/util/HashMap;

    .line 378
    iput-object p4, p0, Lr/aq;->i:Lcom/google/android/maps/driveabout/vector/dg;

    .line 379
    if-eqz p5, :cond_31

    .line 380
    new-instance v0, Lr/as;

    iget-object v1, p0, Lr/aq;->i:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-direct {v0, v1, p5}, Lr/as;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lr/t;)V

    iput-object v0, p0, Lr/aq;->l:Lr/as;

    .line 382
    :cond_31
    return-void
.end method

.method private a(Ln/am;Ln/al;[BI)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v8, -0x1

    .line 573
    iget-object v1, p0, Lr/aq;->g:Lr/w;

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Uninitialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    :cond_10
    instance-of v1, p2, Ln/M;

    if-eqz v1, :cond_1c

    .line 575
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t insert a MutableVectorTile into SD cache"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 577
    :cond_1c
    invoke-virtual {p1}, Ln/am;->b()I

    move-result v1

    const/16 v2, 0x15

    if-le v1, v2, :cond_25

    .line 659
    :goto_24
    return-void

    .line 578
    :cond_25
    iget-object v1, p0, Lr/aq;->i:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v1, p1}, Lh/a;->a(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;)Landroid/util/Pair;

    move-result-object v10

    .line 580
    array-length v1, p3

    if-lez v1, :cond_108

    .line 584
    instance-of v1, p2, Ln/k;

    if-eqz v1, :cond_104

    move-object v1, p2

    .line 585
    check-cast v1, Ln/k;

    invoke-interface {v1}, Ln/k;->a()J

    move-result-wide v1

    .line 588
    cmp-long v3, v1, v8

    if-eqz v3, :cond_101

    .line 589
    iget-object v3, p0, Lr/aq;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v6

    sub-long/2addr v1, v6

    iget-object v3, p0, Lr/aq;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v6

    add-long/2addr v1, v6

    .line 590
    cmp-long v3, v1, v4

    if-gez v3, :cond_101

    move-wide v2, v4

    :goto_50
    move-object v1, p2

    .line 596
    check-cast v1, Ln/k;

    invoke-interface {v1}, Ln/k;->b()J

    move-result-wide v6

    .line 599
    cmp-long v1, v6, v8

    if-eqz v1, :cond_fe

    .line 600
    iget-object v1, p0, Lr/aq;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v1, p0, Lr/aq;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 602
    cmp-long v1, v6, v4

    if-gez v1, :cond_fe

    .line 612
    :goto_6d
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    array-length v1, p3

    add-int/lit8 v1, v1, 0x18

    invoke-direct {v7, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 614
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 616
    const/16 v1, 0x18

    :try_start_7c
    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 619
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 620
    invoke-virtual {v8, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 621
    invoke-virtual {v8, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 622
    invoke-virtual {v8, p3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_8c
    .catchall {:try_start_7c .. :try_end_8c} :catchall_ea
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_8c} :catch_dc

    .line 626
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 628
    :try_start_90
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 629
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_96} :catch_f9

    .line 635
    :goto_96
    iget-object v11, p0, Lr/aq;->f:Ljava/util/HashMap;

    monitor-enter v11

    .line 637
    :try_start_99
    iget-object v1, p0, Lr/aq;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lr/aA;

    move-object v9, v0

    .line 638
    if-eqz v9, :cond_fb

    .line 645
    iget v1, v9, Lr/aA;->d:I

    move/from16 v0, p4

    invoke-static {v1, v0}, Lr/Z;->a(II)I

    move-result v5

    .line 648
    :goto_ad
    new-instance v1, Lr/aA;

    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-eqz v9, :cond_f5

    iget-object v8, v9, Lr/aA;->h:Lr/aF;

    :goto_bf
    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lr/aA;-><init>(JLjava/lang/String;I[BLn/al;Lr/aF;)V

    .line 651
    iget v2, p0, Lr/aq;->j:I

    iget v3, p0, Lr/aq;->h:I

    if-ge v2, v3, :cond_d6

    .line 653
    iget-object v2, p0, Lr/aq;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    if-nez v9, :cond_d6

    .line 655
    iget v1, p0, Lr/aq;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lr/aq;->j:I

    .line 658
    :cond_d6
    monitor-exit v11

    goto/16 :goto_24

    :catchall_d9
    move-exception v1

    monitor-exit v11
    :try_end_db
    .catchall {:try_start_99 .. :try_end_db} :catchall_d9

    throw v1

    .line 623
    :catch_dc
    move-exception v1

    .line 626
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 628
    :try_start_e1
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 629
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e7} :catch_e8

    goto :goto_96

    .line 630
    :catch_e8
    move-exception v1

    goto :goto_96

    .line 626
    :catchall_ea
    move-exception v1

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 628
    :try_start_ee
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 629
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f4} :catch_f7

    .line 632
    :goto_f4
    throw v1

    .line 648
    :cond_f5
    const/4 v8, 0x0

    goto :goto_bf

    .line 630
    :catch_f7
    move-exception v2

    goto :goto_f4

    :catch_f9
    move-exception v1

    goto :goto_96

    :cond_fb
    move/from16 v5, p4

    goto :goto_ad

    :cond_fe
    move-wide v4, v6

    goto/16 :goto_6d

    :cond_101
    move-wide v2, v1

    goto/16 :goto_50

    :cond_104
    move-wide v4, v8

    move-wide v2, v8

    goto/16 :goto_6d

    :cond_108
    move-object v6, p3

    goto :goto_96
.end method

.method private a(ILjava/util/Locale;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 745
    :try_start_0
    iget-object v1, p0, Lr/aq;->f:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_1f

    .line 746
    :try_start_3
    iget-object v0, p0, Lr/aq;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 747
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    invoke-virtual {v0, p1, p2}, Lr/w;->a(ILjava/util/Locale;)V

    .line 748
    invoke-direct {p0}, Lr/aq;->j()V

    .line 749
    iget-object v0, p0, Lr/aq;->l:Lr/as;

    if-eqz v0, :cond_19

    .line 750
    iget-object v0, p0, Lr/aq;->l:Lr/as;

    invoke-virtual {v0}, Lr/as;->b()V

    .line 752
    :cond_19
    monitor-exit v1

    .line 753
    const/4 v0, 0x1

    .line 756
    :goto_1b
    return v0

    .line 752
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 754
    :catch_1f
    move-exception v0

    .line 755
    const-string v1, "SDCardTileCache"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 756
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private b(Ljava/io/File;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 406
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    if-eqz v0, :cond_8

    move v0, v6

    .line 444
    :goto_7
    return v0

    .line 410
    :cond_8
    new-instance v4, Lr/v;

    invoke-direct {v4, p1}, Lr/v;-><init>(Ljava/io/File;)V

    .line 411
    iget-object v0, p0, Lr/aq;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->d()J

    move-result-wide v8

    .line 414
    :try_start_13
    iget-object v0, p0, Lr/aq;->c:Ljava/lang/String;

    iget-object v1, p0, Lr/aq;->l:Lr/as;

    invoke-static {v0, v4, v1}, Lr/w;->a(Ljava/lang/String;Lr/Y;Lr/H;)Lr/w;

    move-result-object v0

    iput-object v0, p0, Lr/aq;->g:Lr/w;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1d} :catch_5f

    move v0, v7

    .line 422
    :goto_1e
    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lr/aq;->i()J

    move-result-wide v0

    iget-object v2, p0, Lr/aq;->g:Lr/w;

    invoke-virtual {v2}, Lr/w;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_62

    :cond_2e
    move v0, v6

    .line 424
    :goto_2f
    if-eqz v0, :cond_56

    .line 426
    :try_start_31
    iget-object v0, p0, Lr/aq;->c:Ljava/lang/String;

    iget v1, p0, Lr/aq;->d:I

    const/4 v2, -0x1

    new-instance v3, Ljava/util/Locale;

    const-string v5, ""

    invoke-direct {v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lr/aq;->l:Lr/as;

    invoke-static/range {v0 .. v5}, Lr/w;->a(Ljava/lang/String;IILjava/util/Locale;Lr/Y;Lr/H;)Lr/w;

    move-result-object v0

    iput-object v0, p0, Lr/aq;->g:Lr/w;

    .line 428
    invoke-direct {p0}, Lr/aq;->j()V

    .line 429
    iget-object v0, p0, Lr/aq;->l:Lr/as;

    if-eqz v0, :cond_56

    .line 430
    iget-object v0, p0, Lr/aq;->l:Lr/as;

    invoke-virtual {v0}, Lr/as;->a()V

    .line 431
    iget-object v0, p0, Lr/aq;->l:Lr/as;

    invoke-virtual {v0}, Lr/as;->b()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_56} :catch_64

    .line 439
    :cond_56
    iget-object v0, p0, Lr/aq;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->d()J

    move-result-wide v0

    sub-long/2addr v0, v8

    move v0, v6

    .line 444
    goto :goto_7

    .line 415
    :catch_5f
    move-exception v0

    move v0, v6

    .line 416
    goto :goto_1e

    :cond_62
    move v0, v7

    .line 422
    goto :goto_2f

    .line 433
    :catch_64
    move-exception v0

    .line 434
    const-string v1, "SDCardTileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 435
    goto :goto_7
.end method

.method static h()I
    .registers 2

    .prologue
    .line 392
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->h()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    .line 393
    const/16 v1, 0x100

    mul-int/lit8 v0, v0, 0x20

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private j()V
    .registers 5

    .prologue
    .line 762
    new-instance v0, LW/b;

    invoke-direct {v0}, LW/b;-><init>()V

    .line 763
    iget-object v1, p0, Lr/aq;->g:Lr/w;

    invoke-virtual {v1}, Lr/w;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LW/b;->writeLong(J)V

    .line 764
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    invoke-virtual {v0}, LW/b;->a()[B

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disk_creation_time_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lr/aq;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I

    .line 766
    return-void
.end method


# virtual methods
.method public a(Ln/am;Ln/al;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 668
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t store unencrypted tiles into SD cache."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ln/am;Ln/al;[B)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 561
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lr/aq;->a(Ln/am;Ln/al;[BI)V

    .line 562
    return-void
.end method

.method public a(Ln/am;Lr/aF;I)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 505
    iget-object v1, p0, Lr/aq;->g:Lr/w;

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Uninitialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 507
    :cond_c
    iget-object v9, p0, Lr/aq;->f:Ljava/util/HashMap;

    monitor-enter v9

    .line 508
    :try_start_f
    iget-object v1, p0, Lr/aq;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lr/aA;

    move-object v7, v0

    .line 509
    if-eqz v7, :cond_5b

    .line 511
    iget-object v1, v7, Lr/aA;->h:Lr/aF;

    if-eqz v1, :cond_7e

    .line 512
    if-eqz p2, :cond_46

    .line 513
    new-instance v8, Lr/b;

    iget-object v1, v7, Lr/aA;->h:Lr/aF;

    invoke-direct {v8, v1, p2}, Lr/b;-><init>(Lr/aF;Lr/aF;)V

    .line 519
    :goto_28
    iget-object v1, v7, Lr/aA;->f:Ln/al;

    if-eqz v1, :cond_49

    .line 521
    new-instance v1, Lr/aA;

    iget-wide v2, v7, Lr/aA;->b:J

    iget-object v4, v7, Lr/aA;->c:Ljava/lang/String;

    iget v5, v7, Lr/aA;->d:I

    invoke-static {v5, p3}, Lr/Z;->a(II)I

    move-result v5

    iget-object v6, v7, Lr/aA;->e:[B

    iget-object v7, v7, Lr/aA;->f:Ln/al;

    invoke-direct/range {v1 .. v8}, Lr/aA;-><init>(JLjava/lang/String;I[BLn/al;Lr/aF;)V

    .line 530
    :goto_3f
    iget-object v2, p0, Lr/aq;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    :goto_44
    monitor-exit v9

    .line 538
    return-void

    .line 515
    :cond_46
    iget-object v8, v7, Lr/aA;->h:Lr/aF;

    goto :goto_28

    .line 526
    :cond_49
    new-instance v2, Lr/aA;

    iget-wide v3, v7, Lr/aA;->b:J

    iget-object v5, v7, Lr/aA;->c:Ljava/lang/String;

    iget v1, v7, Lr/aA;->d:I

    invoke-static {v1, p3}, Lr/Z;->a(II)I

    move-result v6

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lr/aA;-><init>(JLjava/lang/String;ILn/am;Lr/aF;)V

    move-object v1, v2

    goto :goto_3f

    .line 532
    :cond_5b
    iget-object v1, p0, Lr/aq;->i:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v1, p1}, Lh/a;->a(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;)Landroid/util/Pair;

    move-result-object v4

    .line 533
    new-instance v1, Lr/aA;

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move v5, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lr/aA;-><init>(JLjava/lang/String;ILn/am;Lr/aF;)V

    .line 535
    iget-object v2, p0, Lr/aq;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 537
    :catchall_7b
    move-exception v1

    monitor-exit v9
    :try_end_7d
    .catchall {:try_start_f .. :try_end_7d} :catchall_7b

    throw v1

    :cond_7e
    move-object v8, p2

    goto :goto_28
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 739
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_c
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    invoke-virtual {v0}, Lr/w;->a()I

    move-result v0

    iget-object v1, p0, Lr/aq;->g:Lr/w;

    invoke-virtual {v1}, Lr/w;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lr/aq;->a(ILjava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public a(I)Z
    .registers 4
    .parameter

    .prologue
    .line 700
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_c
    :try_start_c
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    invoke-virtual {v0, p1}, Lr/w;->a(I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_13

    .line 703
    const/4 v0, 0x1

    .line 706
    :goto_12
    return v0

    .line 704
    :catch_13
    move-exception v0

    .line 705
    const-string v1, "SDCardTileCache"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 706
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public declared-synchronized a(Ljava/io/File;)Z
    .registers 4
    .parameter

    .prologue
    .line 399
    monitor-enter p0

    :try_start_1
    const-string v0, "SDCardTileCache.initialize"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 400
    invoke-direct {p0, p1}, Lr/aq;->b(Ljava/io/File;)Z

    move-result v0

    .line 401
    const-string v1, "SDCardTileCache.initialize"

    invoke-static {v1}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 402
    monitor-exit p0

    return v0

    .line 399
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/Locale;)Z
    .registers 4
    .parameter

    .prologue
    .line 720
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_c
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    invoke-virtual {v0}, Lr/w;->a()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lr/aq;->a(ILjava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public a(Ln/al;)Z
    .registers 3
    .parameter

    .prologue
    .line 937
    sget-object v0, Lr/aq;->a:Ln/al;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Ln/am;)[B
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 867
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    if-nez v0, :cond_d

    .line 868
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_d
    invoke-virtual {p1}, Ln/am;->b()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_17

    move-object v0, v2

    .line 911
    :goto_16
    return-object v0

    .line 875
    :cond_17
    iget-object v3, p0, Lr/aq;->f:Ljava/util/HashMap;

    monitor-enter v3

    .line 876
    :try_start_1a
    iget-object v0, p0, Lr/aq;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/aA;

    .line 877
    if-eqz v0, :cond_d0

    .line 878
    iget-object v1, v0, Lr/aA;->e:[B

    .line 880
    :goto_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_48

    .line 882
    if-nez v1, :cond_41

    .line 883
    iget-object v0, p0, Lr/aq;->i:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0, p1}, Lh/a;->a(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;)Landroid/util/Pair;

    move-result-object v1

    .line 884
    iget-object v3, p0, Lr/aq;->g:Lr/w;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0}, Lr/w;->a(JLjava/lang/String;)[B

    move-result-object v1

    .line 888
    :cond_41
    if-eqz v1, :cond_46

    array-length v0, v1

    if-nez v0, :cond_4b

    :cond_46
    move-object v0, v1

    .line 889
    goto :goto_16

    .line 880
    :catchall_48
    move-exception v0

    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v0

    .line 893
    :cond_4b
    :try_start_4b
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 894
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 895
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 896
    array-length v0, v1

    sub-int v4, v0, v3

    .line 897
    if-ltz v4, :cond_62

    const/16 v0, 0x18

    if-le v3, v0, :cond_93

    .line 898
    :cond_62
    const-string v0, "SDCardTileCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid tile data length["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lr/aq;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 900
    goto :goto_16

    .line 905
    :cond_93
    new-array v0, v4, [B
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_95} :catch_cc

    .line 906
    const/4 v2, 0x0

    :try_start_96
    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9b

    goto/16 :goto_16

    .line 907
    :catch_9b
    move-exception v1

    .line 908
    :goto_9c
    const-string v2, "SDCardTileCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid tile data in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lr/aq;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 907
    :catch_cc
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_9c

    :cond_d0
    move-object v1, v2

    goto/16 :goto_26
.end method

.method public a_(Ln/am;)V
    .registers 4
    .parameter

    .prologue
    .line 674
    sget-object v0, Lr/aq;->a:Ln/al;

    sget-object v1, Lr/aq;->b:[B

    invoke-virtual {p0, p1, v0, v1}, Lr/aq;->a(Ln/am;Ln/al;[B)V

    .line 675
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 1025
    iget-object v0, p0, Lr/aq;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b(Ln/am;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 917
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    if-nez v0, :cond_e

    .line 918
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_e
    invoke-virtual {p1}, Ln/am;->b()I

    move-result v0

    const/16 v3, 0x15

    if-le v0, v3, :cond_18

    move v0, v1

    .line 929
    :goto_17
    return v0

    .line 923
    :cond_18
    iget-object v0, p0, Lr/aq;->i:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0, p1}, Lh/a;->a(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;)Landroid/util/Pair;

    move-result-object v3

    .line 924
    iget-object v4, p0, Lr/aq;->g:Lr/w;

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v0}, Lr/w;->b(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v2

    .line 925
    goto :goto_17

    .line 927
    :cond_34
    iget-object v3, p0, Lr/aq;->f:Ljava/util/HashMap;

    monitor-enter v3

    .line 928
    :try_start_37
    iget-object v0, p0, Lr/aq;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/aA;

    .line 929
    if-eqz v0, :cond_4b

    iget-object v0, v0, Lr/aA;->e:[B

    if-eqz v0, :cond_4b

    move v0, v2

    :goto_46
    monitor-exit v3

    goto :goto_17

    .line 930
    :catchall_48
    move-exception v0

    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_37 .. :try_end_4a} :catchall_48

    throw v0

    :cond_4b
    move v0, v1

    .line 929
    goto :goto_46
.end method

.method public c()I
    .registers 3

    .prologue
    .line 680
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_c
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    invoke-virtual {v0}, Lr/w;->a()I

    move-result v0

    return v0
.end method

.method public c(Ln/am;)Ln/al;
    .registers 15
    .parameter

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 793
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_11
    invoke-virtual {p1}, Ln/am;->b()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_1b

    move-object v0, v8

    .line 861
    :goto_1a
    return-object v0

    .line 797
    :cond_1b
    iget-object v1, p0, Lr/aq;->f:Ljava/util/HashMap;

    monitor-enter v1

    .line 798
    :try_start_1e
    iget-object v0, p0, Lr/aq;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/aA;

    .line 799
    if-eqz v0, :cond_2f

    .line 800
    iget-object v0, v0, Lr/aA;->f:Ln/al;

    monitor-exit v1

    goto :goto_1a

    .line 802
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    .line 804
    iget-object v0, p0, Lr/aq;->i:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0, p1}, Lh/a;->a(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;)Landroid/util/Pair;

    move-result-object v1

    .line 805
    iget-object v2, p0, Lr/aq;->g:Lr/w;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lr/w;->a(JLjava/lang/String;)[B

    move-result-object v2

    .line 806
    if-nez v2, :cond_4c

    move-object v0, v8

    goto :goto_1a

    .line 808
    :cond_4c
    :try_start_4c
    array-length v0, v2

    if-nez v0, :cond_52

    .line 809
    sget-object v0, Lr/aq;->a:Ln/al;

    goto :goto_1a

    .line 816
    :cond_52
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 817
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 818
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 820
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 821
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 822
    cmp-long v0, v4, v9

    if-eqz v0, :cond_7e

    .line 826
    iget-object v0, p0, Lr/aq;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v11

    sub-long/2addr v4, v11

    iget-object v0, p0, Lr/aq;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v11

    add-long/2addr v4, v11

    .line 827
    cmp-long v0, v4, v6

    if-gez v0, :cond_7e

    move-wide v4, v6

    .line 832
    :cond_7e
    const/16 v0, 0x10

    if-le v3, v0, :cond_d9

    .line 833
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 834
    cmp-long v9, v0, v9

    if-eqz v9, :cond_d7

    .line 838
    iget-object v9, p0, Lr/aq;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v9}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v9

    sub-long/2addr v0, v9

    iget-object v9, p0, Lr/aq;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v9}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v9

    add-long/2addr v0, v9

    .line 840
    cmp-long v9, v0, v6

    if-gez v9, :cond_d7

    .line 857
    :goto_9c
    iget-object v0, p0, Lr/aq;->e:Lr/aB;

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lr/aB;->a(Ln/am;[BIJJ)Ln/al;
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_a2} :catch_a5

    move-result-object v0

    goto/16 :goto_1a

    .line 859
    :catch_a5
    move-exception v0

    .line 860
    const-string v1, "SDCardTileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not unpack tile in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lr/aq;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 861
    goto/16 :goto_1a

    :cond_d7
    move-wide v6, v0

    goto :goto_9c

    :cond_d9
    move-wide v6, v9

    goto :goto_9c
.end method

.method public d()J
    .registers 3

    .prologue
    .line 687
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_c
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    invoke-virtual {v0}, Lr/w;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .registers 3

    .prologue
    .line 693
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_c
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    invoke-virtual {v0}, Lr/w;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/util/Locale;
    .registers 3

    .prologue
    .line 713
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_c
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    invoke-virtual {v0}, Lr/w;->c()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized g()V
    .registers 5

    .prologue
    .line 495
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 497
    :cond_10
    :try_start_10
    iget-object v0, p0, Lr/aq;->g:Lr/w;

    invoke-virtual {v0}, Lr/w;->g()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_17

    .line 501
    :goto_15
    monitor-exit p0

    return-void

    .line 498
    :catch_17
    move-exception v0

    .line 499
    :try_start_18
    const-string v1, "SDCardTileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shutDown(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_d

    goto :goto_15
.end method

.method i()J
    .registers 6

    .prologue
    const-wide/16 v0, 0x0

    .line 774
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disk_creation_time_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lr/aq;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v2

    .line 776
    if-nez v2, :cond_26

    .line 786
    :goto_25
    return-wide v0

    .line 780
    :cond_26
    new-instance v3, LW/a;

    invoke-direct {v3, v2}, LW/a;-><init>([B)V

    .line 782
    :try_start_2b
    invoke-virtual {v3}, LW/a;->readLong()J
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_30

    move-result-wide v0

    goto :goto_25

    .line 783
    :catch_30
    move-exception v2

    .line 784
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disk_creation_time_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lr/aq;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    goto :goto_25
.end method

.method public o_()V
    .registers 16

    .prologue
    .line 943
    iget-object v0, p0, Lr/aq;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->d()J

    move-result-wide v4

    .line 944
    const-wide/16 v0, 0x0

    .line 946
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v6

    .line 947
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v7

    .line 948
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v8

    .line 950
    iget-object v9, p0, Lr/aq;->f:Ljava/util/HashMap;

    monitor-enter v9

    .line 951
    :try_start_17
    iget-object v2, p0, Lr/aq;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v2, v0

    :goto_22
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/aA;

    .line 952
    iget-object v1, v0, Lr/aA;->e:[B

    if-nez v1, :cond_3d

    const/4 v1, 0x0

    :goto_33
    int-to-long v11, v1

    add-long v1, v2, v11

    .line 953
    iget v3, v0, Lr/aA;->a:I

    packed-switch v3, :pswitch_data_10c

    :cond_3b
    :goto_3b
    move-wide v2, v1

    .line 967
    goto :goto_22

    .line 952
    :cond_3d
    iget-object v1, v0, Lr/aA;->e:[B

    array-length v1, v1

    goto :goto_33

    .line 955
    :pswitch_41
    iget-wide v11, v0, Lr/aA;->b:J

    iget-object v3, v0, Lr/aA;->c:Ljava/lang/String;

    iget v13, v0, Lr/aA;->d:I

    iget-object v14, v0, Lr/aA;->e:[B

    invoke-static {v11, v12, v3, v13, v14}, Lr/w;->a(JLjava/lang/String;I[B)Lr/A;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    iget-object v3, p0, Lr/aq;->l:Lr/as;

    if-eqz v3, :cond_5b

    .line 958
    iget-object v3, p0, Lr/aq;->l:Lr/as;

    iget-object v11, v0, Lr/aA;->f:Ln/al;

    invoke-virtual {v3, v11}, Lr/as;->a(Ln/al;)V

    .line 960
    :cond_5b
    iget-object v3, v0, Lr/aA;->h:Lr/aF;

    if-eqz v3, :cond_3b

    .line 961
    iget-object v3, v0, Lr/aA;->h:Lr/aF;

    iget-object v0, v0, Lr/aA;->f:Ln/al;

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 972
    :catchall_6b
    move-exception v0

    monitor-exit v9
    :try_end_6d
    .catchall {:try_start_17 .. :try_end_6d} :catchall_6b

    throw v0

    .line 966
    :pswitch_6e
    :try_start_6e
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 970
    :cond_72
    const/4 v0, 0x0

    iput v0, p0, Lr/aq;->j:I

    .line 971
    iget-object v0, p0, Lr/aq;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 972
    monitor-exit v9
    :try_end_7b
    .catchall {:try_start_6e .. :try_end_7b} :catchall_6b

    .line 973
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_ba

    .line 974
    const/4 v0, 0x0

    .line 978
    :try_start_82
    iget-object v1, p0, Lr/aq;->g:Lr/w;

    invoke-virtual {v1, v6}, Lr/w;->a(Ljava/util/Collection;)I
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_87} :catch_b1

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8c

    .line 979
    const/4 v0, 0x1

    :cond_8c
    move v3, v0

    .line 985
    :goto_8d
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_91
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 988
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lr/aF;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ln/al;

    invoke-interface {v2}, Ln/al;->d()Ln/am;

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ln/al;

    invoke-interface {v1, v2, v3, v0}, Lr/aF;->a(Ln/am;ILn/al;)V

    goto :goto_91

    .line 981
    :catch_b1
    move-exception v0

    .line 982
    const-string v1, "SDCardTileCache"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 983
    const/4 v0, 0x1

    move v3, v0

    goto :goto_8d

    .line 991
    :cond_ba
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_be
    :goto_be
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ef

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/aA;

    .line 992
    const/4 v1, 0x0

    .line 993
    iget v3, v0, Lr/aA;->d:I

    if-lez v3, :cond_df

    .line 997
    :try_start_cf
    iget-object v3, p0, Lr/aq;->g:Lr/w;

    iget-wide v6, v0, Lr/aA;->b:J

    iget-object v8, v0, Lr/aA;->c:Ljava/lang/String;

    iget v9, v0, Lr/aA;->d:I

    invoke-virtual {v3, v6, v7, v8, v9}, Lr/w;->a(JLjava/lang/String;I)I
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_da} :catch_ec

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_df

    .line 999
    const/4 v1, 0x2

    .line 1005
    :cond_df
    :goto_df
    iget-object v3, v0, Lr/aA;->h:Lr/aF;

    if-eqz v3, :cond_be

    .line 1006
    iget-object v3, v0, Lr/aA;->h:Lr/aF;

    iget-object v0, v0, Lr/aA;->g:Ln/am;

    const/4 v6, 0x0

    invoke-interface {v3, v0, v1, v6}, Lr/aF;->a(Ln/am;ILn/al;)V

    goto :goto_be

    .line 1001
    :catch_ec
    move-exception v1

    .line 1002
    const/4 v1, 0x1

    goto :goto_df

    .line 1010
    :cond_ef
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 1011
    iget-object v0, p0, Lr/aq;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->d()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 1017
    :cond_fc
    iget-object v0, p0, Lr/aq;->l:Lr/as;

    if-eqz v0, :cond_10a

    .line 1018
    iget-object v0, p0, Lr/aq;->l:Lr/as;

    invoke-virtual {v0}, Lr/as;->c()V

    .line 1019
    iget-object v0, p0, Lr/aq;->l:Lr/as;

    invoke-virtual {v0}, Lr/as;->b()V

    .line 1021
    :cond_10a
    return-void

    .line 953
    nop

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_41
        :pswitch_6e
    .end packed-switch
.end method
