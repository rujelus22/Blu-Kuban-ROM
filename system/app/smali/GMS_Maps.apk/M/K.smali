.class Lm/k;
.super Lt/c;
.source "SourceFile"

# interfaces
.implements Lm/c;


# instance fields
.field private a:J

.field private b:Ljava/lang/Runnable;

.field private c:I

.field private d:Landroid/os/Handler;

.field private e:Landroid/os/Looper;

.field private final f:Ljava/util/LinkedList;

.field private final g:Ljava/util/HashSet;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:Z

.field private j:I

.field private k:Lm/D;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 65
    const-string v0, "LocationDispatcher"

    invoke-direct {p0, v0}, Lt/c;-><init>(Ljava/lang/String;)V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lm/k;->a:J

    .line 41
    iput v2, p0, Lm/k;->c:I

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lm/k;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    iput-boolean v2, p0, Lm/k;->i:Z

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lm/k;->f:Ljava/util/LinkedList;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lm/k;->g:Ljava/util/HashSet;

    .line 68
    invoke-virtual {p0}, Lm/k;->b()V

    .line 69
    return-void
.end method

.method static synthetic a(Lm/k;)I
    .registers 2
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lm/k;->c:I

    return v0
.end method

.method static synthetic a(Lm/k;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lm/k;->c:I

    return p1
.end method

.method private a(Landroid/location/Location;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 373
    invoke-direct {p0}, Lm/k;->h()V

    .line 374
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 376
    iget-object v0, p0, Lm/k;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 377
    if-lez v0, :cond_23

    iget-boolean v0, p0, Lm/k;->i:Z

    if-eqz v0, :cond_23

    .line 378
    iget v0, p0, Lm/k;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm/k;->j:I

    .line 405
    :cond_22
    return-void

    .line 381
    :cond_23
    iget v0, p0, Lm/k;->j:I

    if-lez v0, :cond_2a

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lm/k;->j:I

    .line 388
    :cond_2a
    iget v0, p0, Lm/k;->c:I

    if-eq v0, v2, :cond_36

    .line 389
    iput v2, p0, Lm/k;->c:I

    .line 390
    iget v0, p0, Lm/k;->c:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lm/k;->a(ILandroid/os/Bundle;)V

    .line 400
    :cond_36
    :goto_36
    iget-object v0, p0, Lm/k;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/n;

    .line 401
    invoke-virtual {v0}, Lm/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 402
    invoke-virtual {v0}, Lm/n;->b()Landroid/location/LocationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_3c

    .line 392
    :cond_5e
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "driveabout_base_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "da_tunnel_heartbeat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_76
    move-object v0, p1

    .line 394
    check-cast v0, Lm/b;

    invoke-virtual {v0}, Lm/b;->a()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 396
    invoke-virtual {p0}, Lm/k;->e()V

    .line 397
    invoke-direct {p0}, Lm/k;->f()V

    goto :goto_36
.end method

.method private a(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    .line 316
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    .line 342
    :goto_5
    return-void

    .line 318
    :pswitch_6
    invoke-direct {p0}, Lm/k;->g()V

    goto :goto_5

    .line 321
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lm/n;

    invoke-direct {p0, v0}, Lm/k;->a(Lm/n;)V

    goto :goto_5

    .line 324
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lm/n;

    invoke-direct {p0, v0}, Lm/k;->b(Lm/n;)V

    goto :goto_5

    .line 327
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v0}, Lm/k;->a(Landroid/location/Location;)V

    goto :goto_5

    .line 330
    :pswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lm/k;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 333
    :pswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lm/k;->b(Ljava/lang/String;)V

    goto :goto_5

    .line 336
    :pswitch_32
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lm/k;->a(Ljava/lang/String;I)V

    goto :goto_5

    .line 339
    :pswitch_3c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lm/D;

    invoke-direct {p0, v0}, Lm/k;->b(Lm/D;)V

    goto :goto_5

    .line 316
    :pswitch_data_44
    .packed-switch 0xa
        :pswitch_6
        :pswitch_a
        :pswitch_12
        :pswitch_1a
        :pswitch_22
        :pswitch_2a
        :pswitch_32
        :pswitch_3c
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 408
    invoke-direct {p0}, Lm/k;->h()V

    .line 409
    iget-object v0, p0, Lm/k;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 410
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_9

    .line 412
    :cond_19
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 422
    invoke-direct {p0}, Lm/k;->h()V

    .line 423
    iget-object v0, p0, Lm/k;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 424
    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v2}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_9

    .line 426
    :cond_1a
    return-void
.end method

.method static synthetic a(Lm/k;Landroid/os/Message;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lm/k;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a(Lm/n;)V
    .registers 4
    .parameter

    .prologue
    .line 355
    invoke-direct {p0}, Lm/k;->h()V

    .line 356
    iget-object v0, p0, Lm/k;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lm/k;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lm/k;->g:Ljava/util/HashSet;

    invoke-virtual {p1}, Lm/n;->b()Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 359
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 415
    invoke-direct {p0}, Lm/k;->h()V

    .line 416
    iget-object v0, p0, Lm/k;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 417
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_9

    .line 419
    :cond_19
    return-void
.end method

.method private b(Lm/D;)V
    .registers 6
    .parameter

    .prologue
    .line 429
    invoke-virtual {p1}, Lm/D;->a()Ljava/lang/String;

    move-result-object v1

    .line 430
    iget-object v0, p0, Lm/k;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/n;

    .line 431
    invoke-virtual {v0}, Lm/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 432
    invoke-static {v0}, Lm/n;->a(Lm/n;)Lm/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lm/c;->a(Lm/D;)V

    goto :goto_a

    .line 435
    :cond_28
    return-void
.end method

.method private b(Lm/n;)V
    .registers 5
    .parameter

    .prologue
    .line 362
    invoke-direct {p0}, Lm/k;->h()V

    .line 363
    iget-object v0, p0, Lm/k;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lm/k;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/n;

    .line 365
    invoke-virtual {v0}, Lm/n;->b()Landroid/location/LocationListener;

    move-result-object v0

    invoke-virtual {p1}, Lm/n;->b()Landroid/location/LocationListener;

    move-result-object v2

    if-ne v0, v2, :cond_e

    .line 370
    :goto_24
    return-void

    .line 369
    :cond_25
    iget-object v0, p0, Lm/k;->g:Ljava/util/HashSet;

    invoke-virtual {p1}, Lm/n;->b()Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_24
.end method

.method private f()V
    .registers 5

    .prologue
    .line 277
    iget-object v0, p0, Lm/k;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 278
    new-instance v0, Lm/m;

    invoke-direct {v0, p0}, Lm/m;-><init>(Lm/k;)V

    iput-object v0, p0, Lm/k;->b:Ljava/lang/Runnable;

    .line 287
    :cond_b
    iget-wide v0, p0, Lm/k;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1d

    iget-wide v0, p0, Lm/k;->a:J

    .line 290
    :goto_15
    iget-object v2, p0, Lm/k;->d:Landroid/os/Handler;

    iget-object v3, p0, Lm/k;->b:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    return-void

    .line 287
    :cond_1d
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v0

    invoke-virtual {v0}, Lt/k;->k()I

    move-result v0

    int-to-long v0, v0

    goto :goto_15
.end method

.method private g()V
    .registers 2

    .prologue
    .line 345
    invoke-direct {p0}, Lm/k;->h()V

    .line 346
    iget-object v0, p0, Lm/k;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 347
    iget-object v0, p0, Lm/k;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 348
    iget-object v0, p0, Lm/k;->e:Landroid/os/Looper;

    if-eqz v0, :cond_19

    .line 349
    iget-object v0, p0, Lm/k;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lm/k;->e:Landroid/os/Looper;

    .line 352
    :cond_19
    return-void
.end method

.method private final h()V
    .registers 4

    .prologue
    .line 442
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    if-eqz v0, :cond_31

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_31

    .line 443
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation must be called on location thread. Called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_31
    return-void
.end method

.method private i()Z
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    if-eqz v0, :cond_a

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-direct {p0}, Lm/k;->i()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 238
    const-string v0, "gps"

    invoke-direct {p0, v0, p1}, Lm/k;->a(Ljava/lang/String;I)V

    .line 244
    :goto_b
    return-void

    .line 240
    :cond_c
    iget-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, "gps"

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lm/k;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 139
    iget-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 143
    :goto_9
    return-void

    .line 141
    :cond_a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_9
.end method

.method public a(Ljava/lang/String;Lm/c;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 108
    new-instance v0, Lm/n;

    invoke-direct {v0, p1, p2}, Lm/n;-><init>(Ljava/lang/String;Lm/c;)V

    .line 109
    iget-object v1, p0, Lm/k;->d:Landroid/os/Handler;

    iget-object v2, p0, Lm/k;->d:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method

.method public a(Lm/D;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x11

    .line 215
    invoke-virtual {p1}, Lm/D;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "driveabout_base_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lm/k;->i:Z

    if-eqz v0, :cond_1b

    .line 223
    iget-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    iget-object v1, p0, Lm/k;->k:Lm/D;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 224
    iput-object p1, p0, Lm/k;->k:Lm/D;

    .line 226
    :cond_1b
    invoke-direct {p0}, Lm/k;->i()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 227
    invoke-direct {p0, p1}, Lm/k;->b(Lm/D;)V

    .line 232
    :goto_24
    return-void

    .line 229
    :cond_25
    iget-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lm/k;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_24
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lm/k;->start()V

    .line 75
    monitor-enter p0

    .line 77
    :goto_4
    :try_start_4
    iget-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    if-nez v0, :cond_d

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_4

    .line 80
    :catch_c
    move-exception v0

    .line 83
    :cond_d
    :try_start_d
    monitor-exit p0

    .line 84
    return-void

    .line 83
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_f

    throw v0
.end method

.method public b(Ljava/lang/String;Lm/c;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 120
    new-instance v0, Lm/n;

    invoke-direct {v0, p1, p2}, Lm/n;-><init>(Ljava/lang/String;Lm/c;)V

    .line 121
    iget-object v1, p0, Lm/k;->d:Landroid/os/Handler;

    iget-object v2, p0, Lm/k;->d:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 92
    iget-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    iget-object v1, p0, Lm/k;->d:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    :try_start_d
    invoke-virtual {p0}, Lm/k;->join()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11

    .line 99
    :goto_10
    return-void

    .line 96
    :catch_11
    move-exception v0

    goto :goto_10
.end method

.method public d()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public e()V
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Lm/k;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 269
    iget-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    iget-object v1, p0, Lm/k;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    :cond_b
    return-void
.end method

.method public n_()V
    .registers 2

    .prologue
    .line 248
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 249
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lm/k;->e:Landroid/os/Looper;

    .line 250
    new-instance v0, Lm/l;

    invoke-direct {v0, p0}, Lm/l;-><init>(Lm/k;)V

    iput-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    .line 258
    monitor-enter p0

    .line 259
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 260
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_19

    .line 261
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 262
    return-void

    .line 260
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 7
    .parameter

    .prologue
    const-wide v3, 0x3eb0c6f7a0b5ed8dL

    .line 149
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 153
    iget-object v1, p0, Lm/k;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 158
    :cond_16
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 160
    :cond_26
    invoke-static {p1}, Lt/e;->a(Landroid/location/Location;)Lat/B;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lan/A;->e(Lat/B;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 162
    invoke-static {}, Lan/A;->k()Lan/A;

    move-result-object v1

    invoke-virtual {v1, v0}, Lan/A;->d(Lat/B;)Lat/B;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lat/B;->c()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 166
    invoke-virtual {v0}, Lat/B;->e()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 170
    :cond_4a
    invoke-direct {p0}, Lm/k;->i()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 171
    invoke-direct {p0, p1}, Lm/k;->a(Landroid/location/Location;)V

    .line 176
    :goto_53
    return-void

    .line 173
    :cond_54
    iget-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lm/k;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_53
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 180
    invoke-direct {p0}, Lm/k;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 181
    invoke-direct {p0, p1}, Lm/k;->a(Ljava/lang/String;)V

    .line 186
    :goto_9
    return-void

    .line 183
    :cond_a
    iget-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lm/k;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 190
    invoke-direct {p0}, Lm/k;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 191
    invoke-direct {p0, p1}, Lm/k;->b(Ljava/lang/String;)V

    .line 196
    :goto_9
    return-void

    .line 193
    :cond_a
    iget-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lm/k;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 203
    invoke-direct {p0}, Lm/k;->i()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 204
    invoke-direct {p0, p1, p2}, Lm/k;->a(Ljava/lang/String;I)V

    .line 211
    :cond_11
    :goto_11
    return-void

    .line 206
    :cond_12
    iget-object v0, p0, Lm/k;->d:Landroid/os/Handler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lm/k;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_11
.end method
