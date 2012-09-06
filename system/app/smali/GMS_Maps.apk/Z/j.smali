.class public Lz/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz/c;


# static fields
.field private static m:Z

.field private static final o:Ljava/util/List;

.field private static final p:Ljava/util/List;

.field private static r:Ljava/lang/String;


# instance fields
.field b:I

.field c:I

.field private d:[Lz/m;

.field private e:Ljava/util/List;

.field private f:[Ljava/util/Set;

.field private g:I

.field private h:I

.field private i:Ljava/lang/Object;

.field private j:[Lz/v;

.field private k:Ljava/util/Set;

.field private l:Ljava/util/Set;

.field private final n:Lz/l;

.field private q:I

.field private s:Lz/t;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Lz/j;->m:Z

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lz/j;->o:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lz/j;->p:Ljava/util/List;

    .line 181
    const/4 v0, 0x0

    sput-object v0, Lz/j;->r:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 588
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_13

    .line 591
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 592
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 594
    new-instance v1, Lz/o;

    invoke-direct {v1, v0}, Lz/o;-><init>(I)V

    throw v1

    .line 596
    :cond_13
    return-void
.end method

.method static c()V
    .registers 2

    .prologue
    .line 556
    sget-boolean v0, Lz/j;->m:Z

    if-nez v0, :cond_c

    .line 557
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to update live data from outside a Behavior"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_c
    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lz/j;->s:Lz/t;

    if-eqz v0, :cond_a

    .line 327
    iget-object v0, p0, Lz/j;->s:Lz/t;

    invoke-interface {v0}, Lz/t;->a()V

    .line 331
    :cond_a
    invoke-virtual {p0}, Lz/j;->b()V

    .line 338
    iget-object v2, p0, Lz/j;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 339
    :try_start_10
    iget v0, p0, Lz/j;->g:I

    iput v0, p0, Lz/j;->h:I

    .line 340
    iget v0, p0, Lz/j;->g:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lz/j;->g:I

    .line 341
    iget-object v0, p0, Lz/j;->f:[Ljava/util/Set;

    iget v3, p0, Lz/j;->h:I

    aget-object v0, v0, v3

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 342
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_40

    .line 350
    iget-object v0, p0, Lz/j;->f:[Ljava/util/Set;

    iget v2, p0, Lz/j;->g:I

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/b;

    .line 351
    invoke-interface {v0}, Lz/b;->a()V

    goto :goto_30

    .line 342
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0

    .line 353
    :cond_43
    const/4 v0, 0x1

    sput-boolean v0, Lz/j;->m:Z

    .line 355
    :try_start_46
    iget-object v0, p0, Lz/j;->f:[Ljava/util/Set;

    iget v2, p0, Lz/j;->g:I

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/b;

    .line 356
    invoke-interface {v0, p0}, Lz/b;->b(Lz/c;)V
    :try_end_5f
    .catchall {:try_start_46 .. :try_end_5f} :catchall_60

    goto :goto_50

    .line 359
    :catchall_60
    move-exception v0

    sput-boolean v1, Lz/j;->m:Z

    throw v0

    :cond_64
    sput-boolean v1, Lz/j;->m:Z

    .line 366
    iget-object v0, p0, Lz/j;->s:Lz/t;

    if-eqz v0, :cond_6f

    .line 367
    iget-object v0, p0, Lz/j;->s:Lz/t;

    invoke-interface {v0}, Lz/t;->b()V

    .line 371
    :cond_6f
    iget-object v0, p0, Lz/j;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/w;

    .line 372
    invoke-virtual {v0}, Lz/w;->a()V

    goto :goto_75

    .line 374
    :cond_85
    iget-object v0, p0, Lz/j;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/d;

    .line 375
    invoke-virtual {v0}, Lz/d;->z()V

    goto :goto_8b

    .line 379
    :cond_9b
    iget-object v2, p0, Lz/j;->j:[Lz/v;

    array-length v3, v2

    move v0, v1

    :goto_9f
    if-ge v0, v3, :cond_ab

    aget-object v1, v2, v0

    .line 380
    if-eqz v1, :cond_a8

    .line 384
    invoke-virtual {v1, p0}, Lz/v;->a(Lz/j;)V

    .line 379
    :cond_a8
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    .line 389
    :cond_ab
    iget-object v0, p0, Lz/j;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/d;

    .line 390
    invoke-virtual {v0}, Lz/d;->A()V

    goto :goto_b1

    .line 392
    :cond_c1
    iget-object v0, p0, Lz/j;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/w;

    .line 393
    invoke-virtual {v0}, Lz/w;->d()V

    goto :goto_c7

    .line 399
    :cond_d7
    iget v0, p0, Lz/j;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz/j;->q:I

    .line 400
    return-void
.end method

.method a(Ljavax/microedition/khronos/opengles/GL10;Lz/F;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Lz/j;->n:Lz/l;

    invoke-virtual {v0}, Lz/l;->a()V

    .line 530
    iget-object v2, p0, Lz/j;->j:[Lz/v;

    array-length v3, v2

    move v0, v1

    :goto_a
    if-ge v0, v3, :cond_16

    aget-object v4, v2, v0

    .line 531
    if-eqz v4, :cond_13

    .line 532
    invoke-virtual {v4, p0}, Lz/v;->b(Lz/j;)V

    .line 530
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_16
    move v0, v1

    .line 536
    :goto_17
    sget v2, Lz/m;->a:I

    if-ge v0, v2, :cond_23

    .line 537
    iget-object v2, p0, Lz/j;->d:[Lz/m;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 540
    :cond_23
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 541
    const/16 v2, 0xd57

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 542
    aget v0, v0, v1

    iput v0, p0, Lz/j;->b:I

    .line 543
    const-wide/high16 v0, 0x4000

    iget v2, p0, Lz/j;->b:I

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lz/j;->c:I

    .line 545
    sget-object v0, Lz/j;->r:Ljava/lang/String;

    if-nez v0, :cond_49

    .line 546
    const/16 v0, 0x1f03

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz/j;->r:Ljava/lang/String;

    .line 549
    :cond_49
    return-void
.end method

.method public a(Lz/b;Lz/G;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 618
    sget-object v0, Lz/c;->a:Lz/H;

    if-ne p2, v0, :cond_15

    .line 619
    iget-object v1, p0, Lz/j;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 620
    :try_start_7
    iget-object v0, p0, Lz/j;->f:[Ljava/util/Set;

    iget v2, p0, Lz/j;->h:I

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 621
    monitor-exit v1

    .line 625
    return-void

    .line 621
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0

    .line 623
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unimplemented WakeUpCondition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b()V
    .registers 11

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 408
    iget-object v3, p0, Lz/j;->e:Ljava/util/List;

    monitor-enter v3

    .line 410
    :try_start_6
    iget-object v0, p0, Lz/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/k;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_a3

    .line 412
    :try_start_18
    iget v1, v0, Lz/k;->a:I

    packed-switch v1, :pswitch_data_10e

    :pswitch_1d
    goto :goto_c

    .line 414
    :pswitch_1e
    invoke-virtual {v0}, Lz/k;->a()Lz/h;

    move-result-object v1

    sget-object v5, Lz/i;->c:Lz/i;

    invoke-virtual {v1, p0, v5}, Lz/h;->a(Lz/j;Lz/i;)Z

    .line 415
    invoke-virtual {v0}, Lz/k;->a()Lz/h;

    move-result-object v1

    invoke-virtual {v1}, Lz/h;->a()B

    move-result v5

    move v1, v2

    .line 416
    :goto_30
    if-ge v1, v9, :cond_45

    .line 417
    shl-int v6, v8, v1

    and-int/2addr v6, v5

    if-eqz v6, :cond_42

    .line 418
    iget-object v6, p0, Lz/j;->j:[Lz/v;

    aget-object v6, v6, v1

    invoke-virtual {v0}, Lz/k;->a()Lz/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lz/v;->a(Lz/h;)V

    .line 416
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 421
    :cond_45
    iget-object v1, p0, Lz/j;->s:Lz/t;

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lz/k;->a()Lz/h;

    move-result-object v1

    sget-object v5, Lz/n;->a:Lz/n;

    invoke-virtual {v1, v5}, Lz/h;->a(Lz/n;)I

    move-result v1

    if-eqz v1, :cond_c

    .line 423
    iget-object v1, p0, Lz/j;->s:Lz/t;

    invoke-virtual {v0}, Lz/k;->a()Lz/h;

    move-result-object v0

    invoke-interface {v1, v0}, Lz/t;->a(Lz/h;)V

    goto :goto_c

    .line 465
    :catch_5f
    move-exception v0

    goto :goto_c

    .line 427
    :pswitch_61
    invoke-virtual {v0}, Lz/k;->a()Lz/h;

    move-result-object v1

    sget-object v5, Lz/i;->c:Lz/i;

    invoke-virtual {v1, p0, v5}, Lz/h;->a(Lz/j;Lz/i;)Z

    .line 428
    invoke-virtual {v0}, Lz/k;->a()Lz/h;

    move-result-object v1

    invoke-virtual {v1}, Lz/h;->a()B

    move-result v5

    move v1, v2

    .line 429
    :goto_73
    if-ge v1, v9, :cond_88

    .line 430
    shl-int v6, v8, v1

    and-int/2addr v6, v5

    if-eqz v6, :cond_85

    .line 431
    iget-object v6, p0, Lz/j;->j:[Lz/v;

    aget-object v6, v6, v1

    invoke-virtual {v0}, Lz/k;->a()Lz/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lz/v;->b(Lz/h;)V

    .line 429
    :cond_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 434
    :cond_88
    iget-object v1, p0, Lz/j;->s:Lz/t;

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lz/k;->a()Lz/h;

    move-result-object v1

    sget-object v5, Lz/n;->a:Lz/n;

    invoke-virtual {v1, v5}, Lz/h;->a(Lz/n;)I

    move-result v1

    if-eqz v1, :cond_c

    .line 436
    iget-object v1, p0, Lz/j;->s:Lz/t;

    invoke-virtual {v0}, Lz/k;->a()Lz/h;

    move-result-object v0

    invoke-interface {v1, v0}, Lz/t;->a(Lz/h;)V
    :try_end_a1
    .catchall {:try_start_18 .. :try_end_a1} :catchall_a3
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_a1} :catch_5f

    goto/16 :goto_c

    .line 470
    :catchall_a3
    move-exception v0

    :try_start_a4
    iget-object v1, p0, Lz/j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    throw v0

    .line 472
    :catchall_aa
    move-exception v0

    monitor-exit v3
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_aa

    throw v0

    .line 442
    :pswitch_ad
    :try_start_ad
    invoke-virtual {v0}, Lz/k;->b()Lz/d;

    move-result-object v1

    sget-object v5, Lz/i;->c:Lz/i;

    invoke-virtual {v1, p0, v5}, Lz/d;->a(Lz/j;Lz/i;)Z

    .line 443
    iget-object v1, p0, Lz/j;->k:Ljava/util/Set;

    invoke-virtual {v0}, Lz/k;->b()Lz/d;

    move-result-object v5

    invoke-virtual {v5}, Lz/d;->y()Lz/w;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v1, p0, Lz/j;->l:Ljava/util/Set;

    invoke-virtual {v0}, Lz/k;->b()Lz/d;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-virtual {v0}, Lz/k;->b()Lz/d;

    move-result-object v1

    invoke-virtual {v1}, Lz/d;->B()B

    move-result v5

    move v1, v2

    .line 446
    :goto_d5
    if-ge v1, v9, :cond_c

    .line 447
    shl-int v6, v8, v1

    and-int/2addr v6, v5

    if-eqz v6, :cond_e7

    .line 448
    iget-object v6, p0, Lz/j;->j:[Lz/v;

    aget-object v6, v6, v1

    invoke-virtual {v0}, Lz/k;->b()Lz/d;

    move-result-object v7

    invoke-virtual {v6, v7}, Lz/v;->a(Lz/d;)V

    .line 446
    :cond_e7
    add-int/lit8 v1, v1, 0x1

    goto :goto_d5

    .line 455
    :pswitch_ea
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove camera not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :pswitch_f2
    const/4 v1, 0x1

    sput-boolean v1, Lz/j;->m:Z
    :try_end_f5
    .catchall {:try_start_ad .. :try_end_f5} :catchall_a3
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_f5} :catch_5f

    .line 459
    :try_start_f5
    invoke-virtual {v0}, Lz/k;->c()Lz/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lz/b;->a(Lz/c;)V
    :try_end_fc
    .catchall {:try_start_f5 .. :try_end_fc} :catchall_101

    .line 461
    const/4 v0, 0x0

    :try_start_fd
    sput-boolean v0, Lz/j;->m:Z

    goto/16 :goto_c

    :catchall_101
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lz/j;->m:Z

    throw v0
    :try_end_106
    .catchall {:try_start_fd .. :try_end_106} :catchall_a3
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_106} :catch_5f

    .line 470
    :cond_106
    :try_start_106
    iget-object v0, p0, Lz/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 472
    monitor-exit v3
    :try_end_10c
    .catchall {:try_start_106 .. :try_end_10c} :catchall_aa

    .line 473
    return-void

    .line 412
    nop

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_61
        :pswitch_f2
        :pswitch_1d
        :pswitch_ad
        :pswitch_ea
    .end packed-switch
.end method

.method public d()Lz/x;
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lz/j;->n:Lz/l;

    return-object v0
.end method

.method e()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 608
    const/4 v0, 0x0

    :goto_2
    sget v1, Lz/m;->a:I

    if-ge v0, v1, :cond_1a

    .line 609
    iget-object v1, p0, Lz/j;->d:[Lz/m;

    aget-object v1, v1, v0

    if-eqz v1, :cond_17

    .line 610
    iget-object v1, p0, Lz/j;->d:[Lz/m;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0, v2}, Lz/m;->a(Lz/j;Lz/m;)V

    .line 611
    iget-object v1, p0, Lz/j;->d:[Lz/m;

    aput-object v2, v1, v0

    .line 608
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 614
    :cond_1a
    return-void
.end method
