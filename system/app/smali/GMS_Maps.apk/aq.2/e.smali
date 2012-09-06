.class public Laq/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected volatile a:Landroid/os/Handler;

.field public b:Laq/i;

.field protected final c:Laq/c;

.field protected d:Laq/b;

.field private e:Laq/d;

.field private final f:Laq/h;

.field private g:Ljava/lang/Thread;

.field private h:Landroid/content/Context;

.field private final i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/Object;

.field private n:Z

.field private o:Z

.field private p:J


# direct methods
.method public constructor <init>(Laq/h;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean v2, p0, Laq/e;->k:Z

    .line 98
    iput-boolean v1, p0, Laq/e;->l:Z

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laq/e;->m:Ljava/lang/Object;

    .line 107
    iput-boolean v1, p0, Laq/e;->n:Z

    .line 113
    iput-boolean v2, p0, Laq/e;->o:Z

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laq/e;->p:J

    .line 166
    iput-object p1, p0, Laq/e;->f:Laq/h;

    .line 167
    invoke-direct {p0}, Laq/e;->k()J

    move-result-wide v0

    iput-wide v0, p0, Laq/e;->i:J

    .line 168
    iput-object p2, p0, Laq/e;->h:Landroid/content/Context;

    .line 169
    new-instance v0, Laq/c;

    invoke-direct {v0}, Laq/c;-><init>()V

    iput-object v0, p0, Laq/e;->c:Laq/c;

    .line 170
    new-instance v0, Laq/b;

    iget-object v1, p0, Laq/e;->f:Laq/h;

    iget-object v2, p0, Laq/e;->c:Laq/c;

    invoke-direct {v0, v1, v2}, Laq/b;-><init>(Laq/h;Laq/c;)V

    iput-object v0, p0, Laq/e;->d:Laq/b;

    .line 171
    new-instance v0, Laq/d;

    invoke-direct {v0}, Laq/d;-><init>()V

    iput-object v0, p0, Laq/e;->e:Laq/d;

    .line 172
    return-void
.end method

.method private a(J)J
    .registers 5
    .parameter

    .prologue
    .line 485
    iget-boolean v0, p0, Laq/e;->j:Z

    if-eqz v0, :cond_7

    .line 486
    iget-wide v0, p0, Laq/e;->i:J

    add-long/2addr p1, v0

    .line 488
    :cond_7
    return-wide p1
.end method

.method static synthetic a(Laq/e;)V
    .registers 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Laq/e;->f()V

    return-void
.end method

.method private b(J)Z
    .registers 7
    .parameter

    .prologue
    .line 520
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private c(J)V
    .registers 6
    .parameter

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 533
    iget-object v1, p0, Laq/e;->c:Laq/c;

    invoke-virtual {v1}, Laq/c;->d()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 534
    invoke-direct {p0, p1, p2}, Laq/e;->d(J)Lbd/b;

    move-result-object v0

    .line 536
    :cond_d
    iget-object v1, p0, Laq/e;->c:Laq/c;

    invoke-virtual {v1}, Laq/c;->f()Ln/B;

    move-result-object v1

    invoke-static {v1}, Laq/a;->a(Ln/B;)Landroid/os/Bundle;

    move-result-object v1

    .line 537
    const-string v2, "wifi"

    invoke-static {p1, p2, v0, v1, v2}, Laq/a;->a(JLbd/b;Landroid/os/Bundle;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 539
    iget-object v1, p0, Laq/e;->d:Laq/b;

    invoke-virtual {v1, v0}, Laq/b;->a(Landroid/location/Location;)Z

    .line 540
    return-void
.end method

.method private d(J)Lbd/b;
    .registers 10
    .parameter

    .prologue
    .line 547
    iget-object v0, p0, Laq/e;->e:Laq/d;

    invoke-virtual {v0, p1, p2}, Laq/d;->a(J)Lbd/b;

    move-result-object v0

    .line 548
    invoke-virtual {p0}, Laq/e;->d()J

    move-result-wide v1

    .line 549
    if-eqz v0, :cond_31

    iget v3, v0, Lbd/b;->d:I

    div-int/lit16 v3, v3, 0x3e8

    const/16 v4, 0x28

    if-le v3, v4, :cond_31

    iget-wide v3, p0, Laq/e;->p:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_26

    iget-wide v3, p0, Laq/e;->p:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-lez v3, :cond_31

    .line 551
    :cond_26
    iput-wide v1, p0, Laq/e;->p:J

    .line 552
    invoke-direct {p0}, Laq/e;->g()V

    .line 553
    iget-object v0, p0, Laq/e;->e:Laq/d;

    invoke-virtual {v0, p1, p2}, Laq/d;->a(J)Lbd/b;

    move-result-object v0

    .line 555
    :cond_31
    return-object v0
.end method

.method private f()V
    .registers 2

    .prologue
    .line 242
    monitor-enter p0

    .line 243
    :try_start_1
    iget-boolean v0, p0, Laq/e;->o:Z

    if-eqz v0, :cond_7

    .line 245
    monitor-exit p0

    .line 258
    :goto_6
    return-void

    .line 247
    :cond_7
    iget-object v0, p0, Laq/e;->c:Laq/c;

    invoke-virtual {v0}, Laq/c;->b()V

    .line 248
    invoke-direct {p0}, Laq/e;->j()V

    .line 249
    iget-object v0, p0, Laq/e;->e:Laq/d;

    invoke-virtual {v0}, Laq/d;->b()V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Laq/e;->n:Z

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Laq/e;->o:Z

    .line 252
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_24

    .line 255
    monitor-enter p0

    .line 256
    :try_start_1c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 257
    monitor-exit p0

    goto :goto_6

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_21

    throw v0

    .line 252
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private g()V
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Laq/e;->c:Laq/c;

    invoke-virtual {v0}, Laq/c;->b()V

    .line 415
    invoke-direct {p0}, Laq/e;->j()V

    .line 416
    iget-object v0, p0, Laq/e;->c:Laq/c;

    invoke-virtual {v0}, Laq/c;->a()V

    .line 417
    invoke-virtual {p0}, Laq/e;->c()V

    .line 418
    return-void
.end method

.method private h()V
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Laq/e;->b:Laq/i;

    if-eqz v0, :cond_9

    .line 426
    iget-object v0, p0, Laq/e;->b:Laq/i;

    invoke-virtual {v0}, Laq/i;->a()V

    .line 428
    :cond_9
    return-void
.end method

.method private i()V
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Laq/e;->b:Laq/i;

    if-eqz v0, :cond_9

    .line 436
    iget-object v0, p0, Laq/e;->b:Laq/i;

    invoke-virtual {v0}, Laq/i;->b()V

    .line 438
    :cond_9
    return-void
.end method

.method private j()V
    .registers 3

    .prologue
    .line 461
    iget-object v1, p0, Laq/e;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 462
    :try_start_3
    iget-boolean v0, p0, Laq/e;->l:Z

    if-eqz v0, :cond_12

    .line 463
    iget-object v0, p0, Laq/e;->e:Laq/d;

    invoke-virtual {v0}, Laq/d;->b()V

    .line 464
    invoke-direct {p0}, Laq/e;->i()V

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Laq/e;->l:Z

    .line 468
    :cond_12
    monitor-exit v1

    .line 469
    return-void

    .line 468
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private k()J
    .registers 7

    .prologue
    .line 475
    invoke-virtual {p0}, Laq/e;->e()J

    move-result-wide v0

    .line 476
    invoke-virtual {p0}, Laq/e;->d()J

    move-result-wide v2

    .line 477
    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    sub-long v0, v2, v0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 179
    monitor-enter p0

    .line 181
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Laq/e;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v0, :cond_15

    .line 183
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 184
    :catch_9
    move-exception v0

    .line 185
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 193
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v0

    .line 188
    :cond_15
    :try_start_15
    iget-object v0, p0, Laq/e;->g:Ljava/lang/Thread;

    if-nez v0, :cond_25

    .line 189
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Laq/e;->g:Ljava/lang/Thread;

    .line 190
    iget-object v0, p0, Laq/e;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 193
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_12

    .line 195
    monitor-enter p0

    .line 196
    :goto_27
    :try_start_27
    iget-object v0, p0, Laq/e;->a:Landroid/os/Handler;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_38

    if-nez v0, :cond_3b

    .line 198
    :try_start_2b
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_38
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_27

    .line 199
    :catch_2f
    move-exception v0

    .line 200
    :try_start_30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_27

    .line 204
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw v0

    .line 203
    :cond_3b
    const/4 v0, 0x0

    :try_start_3c
    iput-boolean v0, p0, Laq/e;->o:Z

    .line 204
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_38

    .line 206
    iget-object v0, p0, Laq/e;->c:Laq/c;

    invoke-virtual {v0}, Laq/c;->a()V

    .line 208
    invoke-virtual {p0}, Laq/e;->c()V

    .line 209
    return-void
.end method

.method protected a(Landroid/hardware/SensorEvent;)V
    .registers 9
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 319
    iget-boolean v0, p0, Laq/e;->k:Z

    if-eqz v0, :cond_1d

    .line 323
    iget-wide v0, p0, Laq/e;->i:J

    invoke-virtual {p0}, Laq/e;->e()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long/2addr v0, v2

    const-wide v2, 0x4e94914f0000L

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    .line 325
    iput-boolean v5, p0, Laq/e;->j:Z

    .line 329
    :goto_1b
    iput-boolean v4, p0, Laq/e;->k:Z

    .line 331
    :cond_1d
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v0, v1}, Laq/e;->a(J)J

    move-result-wide v1

    .line 332
    invoke-direct {p0, v1, v2}, Laq/e;->b(J)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 350
    :goto_29
    return-void

    .line 327
    :cond_2a
    iput-boolean v4, p0, Laq/e;->j:Z

    goto :goto_1b

    .line 335
    :cond_2d
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_56

    .line 349
    :cond_36
    :goto_36
    invoke-direct {p0, v1, v2}, Laq/e;->c(J)V

    goto :goto_29

    .line 337
    :pswitch_3a
    iget-object v0, p0, Laq/e;->c:Laq/c;

    invoke-virtual {v0}, Laq/c;->d()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 338
    iget-object v0, p0, Laq/e;->e:Laq/d;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Laq/d;->a(JFFF)V

    goto :goto_36

    .line 335
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_3a
    .end packed-switch
.end method

.method public a(Landroid/location/Location;Ln/B;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Laq/e;->a:Landroid/os/Handler;

    .line 299
    if-nez v0, :cond_5

    .line 306
    :goto_4
    return-void

    .line 303
    :cond_5
    const/4 v1, 0x1

    new-instance v2, Laq/g;

    invoke-direct {v2, p1, p2}, Laq/g;-><init>(Landroid/location/Location;Ln/B;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 305
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method protected a(Landroid/location/Location;)Z
    .registers 6
    .parameter

    .prologue
    .line 512
    invoke-virtual {p0}, Laq/e;->d()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1b58

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public b()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 218
    monitor-enter p0

    .line 219
    :try_start_2
    iget-object v0, p0, Laq/e;->a:Landroid/os/Handler;

    .line 220
    if-nez v0, :cond_8

    .line 221
    monitor-exit p0

    .line 234
    :goto_7
    return-void

    .line 223
    :cond_8
    iget-boolean v1, p0, Laq/e;->n:Z

    if-nez v1, :cond_20

    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Laq/e;->n:Z

    .line 229
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_22

    .line 230
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 232
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_7

    .line 227
    :cond_20
    :try_start_20
    monitor-exit p0

    goto :goto_7

    .line 229
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_22

    throw v0
.end method

.method protected b(Landroid/location/Location;Ln/B;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 359
    if-nez p1, :cond_3

    .line 405
    :cond_2
    :goto_2
    return-void

    .line 364
    :cond_3
    iget-object v0, p0, Laq/e;->c:Laq/c;

    invoke-virtual {v0, p2}, Laq/c;->a(Ln/B;)V

    .line 365
    if-eqz p2, :cond_44

    .line 366
    iget-object v0, p0, Laq/e;->c:Laq/c;

    invoke-virtual {v0}, Laq/c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Laq/e;->c:Laq/c;

    invoke-virtual {v0}, Laq/c;->e()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 372
    iget-object v0, p0, Laq/e;->d:Laq/b;

    invoke-virtual {v0, p1}, Laq/b;->b(Landroid/location/Location;)Z

    .line 373
    iget-object v0, p0, Laq/e;->c:Laq/c;

    invoke-virtual {v0}, Laq/c;->c()V

    .line 377
    :cond_24
    invoke-virtual {p0, p1}, Laq/e;->a(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {p0}, Laq/e;->c()V

    .line 381
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 382
    const/high16 v2, -0x4080

    invoke-static {p1, p2, v2}, Laq/a;->a(Landroid/location/Location;Ln/B;F)Lbd/b;

    move-result-object v2

    .line 384
    iget-object v3, p0, Laq/e;->e:Laq/d;

    invoke-virtual {v3, v0, v1, v2}, Laq/d;->a(JLbd/b;)V

    .line 385
    invoke-direct {p0, v0, v1}, Laq/e;->c(J)V

    goto :goto_2

    .line 392
    :cond_44
    iget-object v0, p0, Laq/e;->c:Laq/c;

    invoke-virtual {v0}, Laq/c;->d()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 393
    invoke-direct {p0}, Laq/e;->j()V

    .line 403
    :cond_4f
    iget-object v0, p0, Laq/e;->d:Laq/b;

    invoke-virtual {v0, p1}, Laq/b;->b(Landroid/location/Location;)Z

    goto :goto_2
.end method

.method protected c()V
    .registers 3

    .prologue
    .line 446
    iget-object v1, p0, Laq/e;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    :try_start_3
    iget-boolean v0, p0, Laq/e;->l:Z

    if-nez v0, :cond_12

    .line 448
    iget-object v0, p0, Laq/e;->e:Laq/d;

    invoke-virtual {v0}, Laq/d;->a()V

    .line 449
    invoke-direct {p0}, Laq/e;->h()V

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Laq/e;->l:Z

    .line 453
    :cond_12
    monitor-exit v1

    .line 454
    return-void

    .line 453
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method protected d()J
    .registers 3

    .prologue
    .line 496
    iget-object v0, p0, Laq/e;->f:Laq/h;

    invoke-virtual {v0}, Laq/h;->t()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method protected e()J
    .registers 3

    .prologue
    .line 504
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final run()V
    .registers 5

    .prologue
    .line 262
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 265
    new-instance v0, Laq/f;

    invoke-direct {v0, p0}, Laq/f;-><init>(Laq/e;)V

    iput-object v0, p0, Laq/e;->a:Landroid/os/Handler;

    .line 284
    new-instance v0, Laq/i;

    iget-object v1, p0, Laq/e;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    iget-object v3, p0, Laq/e;->h:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Laq/i;-><init>(Landroid/os/Handler;ILandroid/content/Context;)V

    iput-object v0, p0, Laq/e;->b:Laq/i;

    .line 287
    monitor-enter p0

    .line 288
    :try_start_17
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 289
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    .line 290
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 291
    return-void

    .line 289
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method
