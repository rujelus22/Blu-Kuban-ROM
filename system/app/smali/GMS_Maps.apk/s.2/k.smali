.class Ls/k;
.super Lz/d;

# interfaces
.implements Ls/c;


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

.field private k:Ls/C;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const-string v0, "LocationDispatcher"

    invoke-direct {p0, v0}, Lz/d;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ls/k;->a:J

    iput v2, p0, Ls/k;->c:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ls/k;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v2, p0, Ls/k;->i:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ls/k;->f:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ls/k;->g:Ljava/util/HashSet;

    invoke-virtual {p0}, Ls/k;->b()V

    return-void
.end method

.method static synthetic a(Ls/k;)I
    .registers 2

    iget v0, p0, Ls/k;->c:I

    return v0
.end method

.method static synthetic a(Ls/k;I)I
    .registers 2

    iput p1, p0, Ls/k;->c:I

    return p1
.end method

.method private a(Landroid/location/Location;)V
    .registers 6

    const/4 v2, 0x2

    invoke-direct {p0}, Ls/k;->h()V

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Ls/k;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-lez v0, :cond_23

    iget-boolean v0, p0, Ls/k;->i:Z

    if-eqz v0, :cond_23

    iget v0, p0, Ls/k;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls/k;->j:I

    :cond_22
    return-void

    :cond_23
    iget v0, p0, Ls/k;->j:I

    if-lez v0, :cond_2a

    const/4 v0, 0x0

    iput v0, p0, Ls/k;->j:I

    :cond_2a
    iget v0, p0, Ls/k;->c:I

    if-eq v0, v2, :cond_36

    iput v2, p0, Ls/k;->c:I

    iget v0, p0, Ls/k;->c:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ls/k;->a(ILandroid/os/Bundle;)V

    :cond_36
    :goto_36
    iget-object v0, p0, Ls/k;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/n;

    invoke-virtual {v0}, Ls/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {v0}, Ls/n;->b()Landroid/location/LocationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_3c

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

    check-cast v0, Ls/b;

    invoke-virtual {v0}, Ls/b;->a()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Ls/k;->e()V

    invoke-direct {p0}, Ls/k;->f()V

    goto :goto_36
.end method

.method private a(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    :goto_5
    return-void

    :pswitch_6
    invoke-direct {p0}, Ls/k;->g()V

    goto :goto_5

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ls/n;

    invoke-direct {p0, v0}, Ls/k;->a(Ls/n;)V

    goto :goto_5

    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ls/n;

    invoke-direct {p0, v0}, Ls/k;->b(Ls/n;)V

    goto :goto_5

    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v0}, Ls/k;->a(Landroid/location/Location;)V

    goto :goto_5

    :pswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ls/k;->a(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ls/k;->b(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_32
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Ls/k;->a(Ljava/lang/String;I)V

    goto :goto_5

    :pswitch_3c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ls/C;

    invoke-direct {p0, v0}, Ls/k;->b(Ls/C;)V

    goto :goto_5

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

    invoke-direct {p0}, Ls/k;->h()V

    iget-object v0, p0, Ls/k;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ls/k;->h()V

    iget-object v0, p0, Ls/k;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v2}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_9

    :cond_1a
    return-void
.end method

.method static synthetic a(Ls/k;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Ls/k;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a(Ls/n;)V
    .registers 4

    invoke-direct {p0}, Ls/k;->h()V

    iget-object v0, p0, Ls/k;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ls/k;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ls/k;->g:Ljava/util/HashSet;

    invoke-virtual {p1}, Ls/n;->b()Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ls/k;->h()V

    iget-object v0, p0, Ls/k;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method private b(Ls/C;)V
    .registers 6

    invoke-virtual {p1}, Ls/C;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Ls/k;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/n;

    invoke-virtual {v0}, Ls/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v0}, Ls/n;->a(Ls/n;)Ls/c;

    move-result-object v0

    invoke-interface {v0, p1}, Ls/c;->a(Ls/C;)V

    goto :goto_a

    :cond_28
    return-void
.end method

.method private b(Ls/n;)V
    .registers 5

    invoke-direct {p0}, Ls/k;->h()V

    iget-object v0, p0, Ls/k;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ls/k;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/n;

    invoke-virtual {v0}, Ls/n;->b()Landroid/location/LocationListener;

    move-result-object v0

    invoke-virtual {p1}, Ls/n;->b()Landroid/location/LocationListener;

    move-result-object v2

    if-ne v0, v2, :cond_e

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Ls/k;->g:Ljava/util/HashSet;

    invoke-virtual {p1}, Ls/n;->b()Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_24
.end method

.method private f()V
    .registers 5

    iget-object v0, p0, Ls/k;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    new-instance v0, Ls/m;

    invoke-direct {v0, p0}, Ls/m;-><init>(Ls/k;)V

    iput-object v0, p0, Ls/k;->b:Ljava/lang/Runnable;

    :cond_b
    iget-wide v0, p0, Ls/k;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1d

    iget-wide v0, p0, Ls/k;->a:J

    :goto_15
    iget-object v2, p0, Ls/k;->d:Landroid/os/Handler;

    iget-object v3, p0, Ls/k;->b:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1d
    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v0

    invoke-virtual {v0}, Lz/l;->k()I

    move-result v0

    int-to-long v0, v0

    goto :goto_15
.end method

.method private g()V
    .registers 2

    invoke-direct {p0}, Ls/k;->h()V

    iget-object v0, p0, Ls/k;->e:Landroid/os/Looper;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ls/k;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls/k;->e:Landroid/os/Looper;

    :cond_f
    return-void
.end method

.method private final h()V
    .registers 4

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Ls/k;->d:Landroid/os/Handler;

    if-eqz v0, :cond_31

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_31

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

    :cond_31
    return-void
.end method

.method private i()Z
    .registers 2

    iget-object v0, p0, Ls/k;->d:Landroid/os/Handler;

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
.method public a()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Ls/k;->e:Landroid/os/Looper;

    new-instance v0, Ls/l;

    invoke-direct {v0, p0}, Ls/l;-><init>(Ls/k;)V

    iput-object v0, p0, Ls/k;->d:Landroid/os/Handler;

    monitor-enter p0

    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_19

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public a(ILandroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ls/k;->i()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "gps"

    invoke-direct {p0, v0, p1}, Ls/k;->a(Ljava/lang/String;I)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Ls/k;->d:Landroid/os/Handler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, "gps"

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ls/k;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Ls/k;->d:Landroid/os/Handler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ls/k;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_9
    return-void

    :cond_a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_9
.end method

.method public a(Ljava/lang/String;Ls/c;)V
    .registers 7

    new-instance v0, Ls/n;

    invoke-direct {v0, p1, p2}, Ls/n;-><init>(Ljava/lang/String;Ls/c;)V

    iget-object v1, p0, Ls/k;->d:Landroid/os/Handler;

    iget-object v2, p0, Ls/k;->d:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ls/C;)V
    .registers 5

    const/16 v2, 0x11

    invoke-virtual {p1}, Ls/C;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "driveabout_base_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Ls/k;->i:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ls/k;->d:Landroid/os/Handler;

    iget-object v1, p0, Ls/k;->k:Ls/C;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p1, p0, Ls/k;->k:Ls/C;

    :cond_1b
    invoke-direct {p0}, Ls/k;->i()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0, p1}, Ls/k;->b(Ls/C;)V

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Ls/k;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ls/k;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_24
.end method

.method protected b()V
    .registers 2

    invoke-virtual {p0}, Ls/k;->start()V

    monitor-enter p0

    :goto_4
    :try_start_4
    iget-object v0, p0, Ls/k;->d:Landroid/os/Handler;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_4

    :catch_c
    move-exception v0

    :cond_d
    :try_start_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_f

    throw v0
.end method

.method public b(Ljava/lang/String;Ls/c;)V
    .registers 7

    new-instance v0, Ls/n;

    invoke-direct {v0, p1, p2}, Ls/n;-><init>(Ljava/lang/String;Ls/c;)V

    iget-object v1, p0, Ls/k;->d:Landroid/os/Handler;

    iget-object v2, p0, Ls/k;->d:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Ls/k;->d:Landroid/os/Handler;

    iget-object v1, p0, Ls/k;->d:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_d
    invoke-virtual {p0}, Ls/k;->join()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    goto :goto_10
.end method

.method public d()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Ls/k;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Ls/k;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ls/k;->d:Landroid/os/Handler;

    iget-object v1, p0, Ls/k;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 7

    const-wide v3, 0x3eb0c6f7a0b5ed8dL

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Ls/k;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_16
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_26
    invoke-static {p1}, Lz/f;->a(Landroid/location/Location;)LaJ/B;

    move-result-object v0

    invoke-static {v0}, LaE/n;->e(LaJ/B;)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-static {}, LaE/n;->k()LaE/n;

    move-result-object v1

    invoke-virtual {v1, v0}, LaE/n;->d(LaJ/B;)LaJ/B;

    move-result-object v0

    invoke-virtual {v0}, LaJ/B;->c()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v0}, LaJ/B;->e()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    :cond_4a
    invoke-direct {p0}, Ls/k;->i()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-direct {p0, p1}, Ls/k;->a(Landroid/location/Location;)V

    :goto_53
    return-void

    :cond_54
    iget-object v0, p0, Ls/k;->d:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ls/k;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_53
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ls/k;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Ls/k;->a(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Ls/k;->d:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ls/k;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ls/k;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Ls/k;->b(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Ls/k;->d:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ls/k;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Ls/k;->i()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1, p2}, Ls/k;->a(Ljava/lang/String;I)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Ls/k;->d:Landroid/os/Handler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ls/k;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_11
.end method
