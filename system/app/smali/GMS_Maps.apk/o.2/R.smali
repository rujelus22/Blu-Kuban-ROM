.class public Lo/r;
.super Lt/c;
.source "SourceFile"

# interfaces
.implements Lm/c;
.implements Lp/t;


# static fields
.field private static a:Lo/r;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Looper;

.field private d:Z

.field private final e:Lo/p;

.field private f:Landroid/location/Location;

.field private g:Lp/u;

.field private h:Z

.field private i:Lo/w;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lo/r;->a:Lo/r;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Lt/c;-><init>()V

    .line 85
    new-instance v0, Lo/w;

    invoke-direct {v0, p0, v1}, Lo/w;-><init>(Lo/r;Lo/s;)V

    iput-object v0, p0, Lo/r;->i:Lo/w;

    .line 132
    iput-object v1, p0, Lo/r;->e:Lo/p;

    .line 133
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lac/p;Ljava/io/File;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    const-string v0, "NavigationThread"

    invoke-direct {p0, v0}, Lt/c;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lo/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/w;-><init>(Lo/r;Lo/s;)V

    iput-object v0, p0, Lo/r;->i:Lo/w;

    .line 144
    new-instance v1, Lo/E;

    invoke-direct {v1, p2, p0}, Lo/E;-><init>(Lac/p;Lo/r;)V

    .line 145
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->i:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    .line 146
    new-instance v2, Lp/u;

    invoke-direct {v2, p1, v0}, Lp/u;-><init>(Landroid/content/Context;Lr/aH;)V

    iput-object v2, p0, Lo/r;->g:Lp/u;

    .line 147
    iget-object v0, p0, Lo/r;->g:Lp/u;

    invoke-virtual {v0, p0}, Lp/u;->a(Lp/t;)V

    .line 148
    new-instance v0, Lo/p;

    iget-object v2, p0, Lo/r;->g:Lp/u;

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lo/p;-><init>(Lo/E;Lp/u;Ljava/lang/Thread;Ljava/io/File;Landroid/content/Context;)V

    iput-object v0, p0, Lo/r;->e:Lo/p;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/r;->d:Z

    .line 150
    invoke-virtual {p0}, Lo/r;->start()V

    .line 154
    monitor-enter p0

    .line 155
    :goto_37
    :try_start_37
    iget-object v0, p0, Lo/r;->b:Landroid/os/Handler;
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_43

    if-nez v0, :cond_41

    .line 157
    :try_start_3b
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_43
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_37

    .line 158
    :catch_3f
    move-exception v0

    goto :goto_37

    .line 162
    :cond_41
    :try_start_41
    monitor-exit p0

    .line 163
    return-void

    .line 162
    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_43

    throw v0
.end method

.method static synthetic a(Lo/r;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lo/r;->f:Landroid/location/Location;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lo/r;
    .registers 5
    .parameter

    .prologue
    .line 115
    const-class v1, Lo/r;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lo/r;->a:Lo/r;

    if-nez v0, :cond_16

    .line 116
    new-instance v0, Lo/r;

    invoke-static {}, Lac/h;->b()Lac/p;

    move-result-object v2

    invoke-static {p0}, Lh/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lo/r;-><init>(Landroid/content/Context;Lac/p;Ljava/io/File;)V

    sput-object v0, Lo/r;->a:Lo/r;

    .line 119
    :cond_16
    sget-object v0, Lo/r;->a:Lo/r;

    iget-object v0, v0, Lo/r;->i:Lo/w;

    invoke-static {v0, p0}, Lo/w;->a(Lo/w;Landroid/content/Context;)V

    .line 120
    sget-object v0, Lo/r;->a:Lo/r;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit v1

    return-object v0

    .line 115
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/location/Location;)V
    .registers 5
    .parameter

    .prologue
    .line 438
    invoke-direct {p0}, Lo/r;->m()V

    .line 439
    iput-object p1, p0, Lo/r;->f:Landroid/location/Location;

    .line 442
    iget-boolean v0, p0, Lo/r;->h:Z

    if-nez v0, :cond_1a

    .line 443
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lo/t;

    const-string v2, "NavigationThread.IdleHandler"

    invoke-direct {v1, p0, v2}, Lo/t;-><init>(Lo/r;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/r;->h:Z

    .line 457
    :cond_1a
    return-void
.end method

.method private a(Landroid/os/Message;)V
    .registers 8
    .parameter

    .prologue
    .line 481
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_b2

    .line 556
    :goto_5
    return-void

    .line 484
    :pswitch_6
    invoke-direct {p0}, Lo/r;->k()V

    goto :goto_5

    .line 488
    :pswitch_a
    invoke-direct {p0}, Lo/r;->j()V

    goto :goto_5

    .line 492
    :pswitch_e
    invoke-direct {p0}, Lo/r;->l()V

    goto :goto_5

    .line 497
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lo/u;

    .line 498
    iget-object v0, p0, Lo/r;->e:Lo/p;

    invoke-static {v5}, Lo/u;->a(Lo/u;)Lm/b;

    move-result-object v1

    invoke-static {v5}, Lo/u;->b(Lo/u;)[Lo/P;

    move-result-object v2

    invoke-static {v5}, Lo/u;->c(Lo/u;)I

    move-result v3

    invoke-static {v5}, Lo/u;->d(Lo/u;)I

    move-result v4

    invoke-static {v5}, Lo/u;->e(Lo/u;)[Lo/b;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lo/p;->a(Lm/b;[Lo/P;II[Lo/b;)V

    goto :goto_5

    .line 506
    :pswitch_31
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/u;

    .line 507
    iget-object v1, p0, Lo/r;->e:Lo/p;

    invoke-static {v0}, Lo/u;->a(Lo/u;)Lm/b;

    move-result-object v2

    invoke-static {v0}, Lo/u;->f(Lo/u;)Lo/x;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lo/p;->a(Lm/b;Lo/x;)V

    goto :goto_5

    .line 513
    :pswitch_43
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/u;

    .line 514
    iget-object v1, p0, Lo/r;->e:Lo/p;

    invoke-static {v0}, Lo/u;->b(Lo/u;)[Lo/P;

    move-result-object v2

    invoke-static {v0}, Lo/u;->c(Lo/u;)I

    move-result v3

    invoke-static {v0}, Lo/u;->e(Lo/u;)[Lo/b;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lo/p;->a([Lo/P;I[Lo/b;)V

    goto :goto_5

    .line 519
    :pswitch_59
    iget-object v1, p0, Lo/r;->e:Lo/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/x;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lo/p;->a(Lo/x;Z)V

    goto :goto_5

    .line 523
    :pswitch_64
    iget-object v1, p0, Lo/r;->e:Lo/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/a;

    invoke-virtual {v1, v0}, Lo/p;->a(Lo/a;)V

    goto :goto_5

    .line 527
    :pswitch_6e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v0}, Lo/r;->a(Landroid/location/Location;)V

    goto :goto_5

    .line 531
    :pswitch_76
    iget-object v1, p0, Lo/r;->e:Lo/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/g;

    invoke-virtual {v1, v0}, Lo/p;->a(Lo/g;)V

    goto :goto_5

    .line 535
    :pswitch_80
    iget-object v0, p0, Lo/r;->e:Lo/p;

    invoke-virtual {v0}, Lo/p;->g()V

    goto :goto_5

    .line 539
    :pswitch_86
    iget-object v0, p0, Lo/r;->e:Lo/p;

    invoke-virtual {v0}, Lo/p;->i()V

    goto/16 :goto_5

    .line 543
    :pswitch_8d
    iget-object v0, p0, Lo/r;->e:Lo/p;

    invoke-virtual {v0}, Lo/p;->k()V

    goto/16 :goto_5

    .line 548
    :pswitch_94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/v;

    .line 549
    iget-object v1, p0, Lo/r;->e:Lo/p;

    invoke-static {v0}, Lo/v;->a(Lo/v;)Lo/x;

    move-result-object v2

    invoke-static {v0}, Lo/v;->b(Lo/v;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lo/p;->a(Lo/x;I)V

    goto/16 :goto_5

    .line 553
    :pswitch_a7
    invoke-direct {p0}, Lo/r;->k()V

    .line 554
    iget-object v0, p0, Lo/r;->e:Lo/p;

    invoke-virtual {v0}, Lo/p;->l()V

    goto/16 :goto_5

    .line 481
    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_31
        :pswitch_86
        :pswitch_59
        :pswitch_6e
        :pswitch_76
        :pswitch_80
        :pswitch_8d
        :pswitch_94
        :pswitch_a7
        :pswitch_43
        :pswitch_64
    .end packed-switch
.end method

.method static synthetic a(Lo/r;Landroid/os/Message;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lo/r;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lo/r;)Z
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lo/r;->d:Z

    return v0
.end method

.method static synthetic a(Lo/r;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 46
    iput-boolean p1, p0, Lo/r;->h:Z

    return p1
.end method

.method static synthetic b(Lo/r;)Landroid/location/Location;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lo/r;->f:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic c(Lo/r;)Lo/p;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lo/r;->e:Lo/p;

    return-object v0
.end method

.method private declared-synchronized i()V
    .registers 2

    .prologue
    .line 402
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 403
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lo/r;->c:Landroid/os/Looper;

    .line 404
    new-instance v0, Lo/s;

    invoke-direct {v0, p0}, Lo/s;-><init>(Lo/r;)V

    iput-object v0, p0, Lo/r;->b:Landroid/os/Handler;

    .line 413
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 414
    monitor-exit p0

    return-void

    .line 402
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()V
    .registers 2

    .prologue
    .line 420
    invoke-direct {p0}, Lo/r;->m()V

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/r;->d:Z

    .line 422
    return-void
.end method

.method private k()V
    .registers 2

    .prologue
    .line 425
    invoke-direct {p0}, Lo/r;->m()V

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/r;->d:Z

    .line 427
    return-void
.end method

.method private l()V
    .registers 2

    .prologue
    .line 430
    invoke-direct {p0}, Lo/r;->m()V

    .line 431
    iget-object v0, p0, Lo/r;->c:Landroid/os/Looper;

    if-eqz v0, :cond_f

    .line 432
    iget-object v0, p0, Lo/r;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lo/r;->c:Landroid/os/Looper;

    .line 435
    :cond_f
    return-void
.end method

.method private final m()V
    .registers 3

    .prologue
    .line 563
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 564
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on NavigationThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_14
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lo/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/r;->b:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    return-void
.end method

.method public a(Lm/D;)V
    .registers 2
    .parameter

    .prologue
    .line 342
    return-void
.end method

.method public a(Lm/b;Lo/x;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lo/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/r;->b:Landroid/os/Handler;

    const/4 v2, 0x4

    new-instance v3, Lo/u;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lo/u;-><init>(Lm/b;Lo/x;Lo/s;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 246
    return-void
.end method

.method public a(Lm/b;Lo/x;[Lo/b;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    const/4 v0, 0x1

    new-array v2, v0, [Lo/P;

    const/4 v0, 0x0

    invoke-virtual {p2}, Lo/x;->m()Lo/P;

    move-result-object v1

    aput-object v1, v2, v0

    .line 231
    iget-object v7, p0, Lo/r;->b:Landroid/os/Handler;

    iget-object v8, p0, Lo/r;->b:Landroid/os/Handler;

    const/4 v9, 0x3

    new-instance v0, Lo/u;

    invoke-virtual {p2}, Lo/x;->d()I

    move-result v3

    const/4 v4, 0x5

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lo/u;-><init>(Lm/b;[Lo/P;II[Lo/b;Lo/s;)V

    invoke-virtual {v8, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    return-void
.end method

.method public a(Lm/b;[Lo/P;I[Lo/b;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    if-nez p2, :cond_a

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A to location must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_a
    iget-object v7, p0, Lo/r;->b:Landroid/os/Handler;

    iget-object v8, p0, Lo/r;->b:Landroid/os/Handler;

    const/4 v9, 0x3

    new-instance v0, Lo/u;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lo/u;-><init>(Lm/b;[Lo/P;II[Lo/b;Lo/s;)V

    invoke-virtual {v8, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    return-void
.end method

.method public a(Lo/a;)V
    .registers 5
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lo/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/r;->b:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    return-void
.end method

.method public a(Lo/g;)V
    .registers 5
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lo/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/r;->b:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    return-void
.end method

.method public a(Lo/o;)V
    .registers 3
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Lo/r;->e:Lo/p;

    invoke-virtual {v0, p1}, Lo/p;->a(Lo/o;)V

    .line 360
    return-void
.end method

.method public a(Lo/x;)V
    .registers 5
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lo/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/r;->b:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 380
    return-void
.end method

.method public a(Lo/x;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lo/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/r;->b:Landroid/os/Handler;

    const/16 v2, 0xb

    new-instance v3, Lo/v;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lo/v;-><init>(Lo/x;ILo/s;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 349
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lo/r;->e:Lo/p;

    if-eqz v0, :cond_9

    .line 384
    iget-object v0, p0, Lo/r;->e:Lo/p;

    invoke-virtual {v0, p1}, Lo/p;->a(Z)V

    .line 386
    :cond_9
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lo/r;->i:Lo/w;

    invoke-static {v0}, Lo/w;->a(Lo/w;)V

    .line 128
    return-void
.end method

.method public b(Lo/o;)V
    .registers 3
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lo/r;->e:Lo/p;

    invoke-virtual {v0, p1}, Lo/p;->b(Lo/o;)V

    .line 372
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 278
    iget-object v0, p0, Lo/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/r;->b:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 279
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    .line 282
    iget-object v0, p0, Lo/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/r;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 283
    return-void
.end method

.method public e()V
    .registers 4

    .prologue
    .line 286
    iget-object v0, p0, Lo/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/r;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 287
    return-void
.end method

.method protected f()V
    .registers 4

    .prologue
    .line 290
    iget-object v0, p0, Lo/r;->g:Lp/u;

    if-eqz v0, :cond_9

    .line 291
    iget-object v0, p0, Lo/r;->g:Lp/u;

    invoke-virtual {v0}, Lp/u;->b()V

    .line 293
    :cond_9
    iget-object v0, p0, Lo/r;->e:Lo/p;

    if-eqz v0, :cond_12

    .line 294
    iget-object v0, p0, Lo/r;->e:Lo/p;

    invoke-virtual {v0}, Lo/p;->m()V

    .line 296
    :cond_12
    iget-object v0, p0, Lo/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/r;->b:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 299
    :try_start_1e
    invoke-virtual {p0}, Lo/r;->join()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_25

    .line 303
    :goto_21
    const/4 v0, 0x0

    sput-object v0, Lo/r;->a:Lo/r;

    .line 304
    return-void

    .line 300
    :catch_25
    move-exception v0

    goto :goto_21
.end method

.method public g()V
    .registers 4

    .prologue
    .line 315
    iget-object v0, p0, Lo/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/r;->b:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    return-void
.end method

.method public h()V
    .registers 4

    .prologue
    .line 322
    iget-object v0, p0, Lo/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/r;->b:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 323
    return-void
.end method

.method public n_()V
    .registers 5

    .prologue
    .line 391
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_b

    .line 396
    :goto_4
    invoke-direct {p0}, Lo/r;->i()V

    .line 397
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 399
    return-void

    .line 392
    :catch_b
    move-exception v0

    .line 393
    const-string v1, "NavigationThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set thread priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lo/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/r;->b:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 309
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 328
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 333
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    return-void
.end method
