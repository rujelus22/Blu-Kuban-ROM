.class public LaH/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected volatile a:Landroid/os/Handler;

.field protected b:LaH/k;

.field protected final c:LaH/c;

.field protected d:LaH/b;

.field private e:LaH/f;

.field private final f:LaH/j;

.field private g:Ljava/lang/Thread;

.field private h:Landroid/content/Context;

.field private final i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/Object;

.field private n:J


# direct methods
.method public constructor <init>(LaH/j;Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaH/g;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LaH/g;->l:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaH/g;->m:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaH/g;->n:J

    iput-object p1, p0, LaH/g;->f:LaH/j;

    invoke-direct {p0}, LaH/g;->i()J

    move-result-wide v0

    iput-wide v0, p0, LaH/g;->i:J

    iput-object p2, p0, LaH/g;->h:Landroid/content/Context;

    new-instance v0, LaH/c;

    invoke-direct {v0}, LaH/c;-><init>()V

    iput-object v0, p0, LaH/g;->c:LaH/c;

    new-instance v0, LaH/b;

    iget-object v1, p0, LaH/g;->f:LaH/j;

    iget-object v2, p0, LaH/g;->c:LaH/c;

    invoke-direct {v0, v1, v2}, LaH/b;-><init>(LaH/j;LaH/c;)V

    iput-object v0, p0, LaH/g;->d:LaH/b;

    new-instance v0, LaH/f;

    invoke-direct {v0}, LaH/f;-><init>()V

    iput-object v0, p0, LaH/g;->e:LaH/f;

    return-void
.end method

.method private a(J)J
    .registers 5

    iget-boolean v0, p0, LaH/g;->j:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, LaH/g;->i:J

    add-long/2addr p1, v0

    :cond_7
    return-wide p1
.end method

.method static synthetic a(LaH/g;)V
    .registers 1

    invoke-direct {p0}, LaH/g;->d()V

    return-void
.end method

.method private b(J)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, LaH/g;->c:LaH/c;

    invoke-virtual {v1}, LaH/c;->d()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {p0, p1, p2}, LaH/g;->c(J)Lbp/b;

    move-result-object v0

    :cond_d
    iget-object v1, p0, LaH/g;->c:LaH/c;

    invoke-static {p1, p2, v0, v1}, LaH/a;->a(JLbp/b;LaH/c;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, LaH/g;->d:LaH/b;

    invoke-virtual {v1, v0}, LaH/b;->a(Landroid/location/Location;)Z

    return-void
.end method

.method private c(J)Lbp/b;
    .registers 10

    iget-object v0, p0, LaH/g;->e:LaH/f;

    invoke-virtual {v0, p1, p2}, LaH/f;->a(J)Lbp/b;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz v0, :cond_31

    iget v3, v0, Lbp/b;->c:I

    div-int/lit16 v3, v3, 0x3e8

    const/16 v4, 0x28

    if-le v3, v4, :cond_31

    iget-wide v3, p0, LaH/g;->n:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_26

    iget-wide v3, p0, LaH/g;->n:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-lez v3, :cond_31

    :cond_26
    iput-wide v1, p0, LaH/g;->n:J

    invoke-direct {p0}, LaH/g;->e()V

    iget-object v0, p0, LaH/g;->e:LaH/f;

    invoke-virtual {v0, p1, p2}, LaH/f;->a(J)Lbp/b;

    move-result-object v0

    :cond_31
    return-object v0
.end method

.method private d()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, LaH/g;->a:Landroid/os/Handler;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, LaH/g;->c:LaH/c;

    invoke-virtual {v0}, LaH/c;->b()V

    iget-object v0, p0, LaH/g;->d:LaH/b;

    invoke-virtual {v0}, LaH/b;->b()V

    iget-object v0, p0, LaH/g;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    invoke-direct {p0}, LaH/g;->h()V

    iput-object v1, p0, LaH/g;->g:Ljava/lang/Thread;

    iput-object v1, p0, LaH/g;->a:Landroid/os/Handler;

    iput-object v1, p0, LaH/g;->b:LaH/k;

    iget-object v0, p0, LaH/g;->e:LaH/f;

    invoke-virtual {v0}, LaH/f;->b()V

    monitor-enter p0

    :try_start_28
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_5

    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, LaH/g;->c:LaH/c;

    invoke-virtual {v0}, LaH/c;->b()V

    invoke-direct {p0}, LaH/g;->h()V

    iget-object v0, p0, LaH/g;->c:LaH/c;

    invoke-virtual {v0}, LaH/c;->a()V

    invoke-virtual {p0}, LaH/g;->c()V

    return-void
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, LaH/g;->b:LaH/k;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaH/g;->b:LaH/k;

    invoke-virtual {v0}, LaH/k;->a()V

    :cond_9
    return-void
.end method

.method private g()V
    .registers 2

    iget-object v0, p0, LaH/g;->b:LaH/k;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaH/g;->b:LaH/k;

    invoke-virtual {v0}, LaH/k;->b()V

    :cond_9
    return-void
.end method

.method private h()V
    .registers 3

    iget-object v1, p0, LaH/g;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, LaH/g;->l:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, LaH/g;->e:LaH/f;

    invoke-virtual {v0}, LaH/f;->b()V

    invoke-direct {p0}, LaH/g;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaH/g;->l:Z

    :cond_12
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private i()J
    .registers 7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    sub-long v0, v2, v0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .registers 3

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v0, p0, LaH/g;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_22

    iget-object v0, p0, LaH/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_22

    iget-object v0, p0, LaH/g;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1f

    move-result v0

    if-eqz v0, :cond_22

    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1f
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_1

    :catch_16
    move-exception v0

    :try_start_17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :try_start_22
    iget-object v0, p0, LaH/g;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "startUp() without shutDown()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, LaH/g;->g:Ljava/lang/Thread;

    iget-object v0, p0, LaH/g;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_1f

    monitor-enter p0

    :goto_3c
    :try_start_3c
    iget-object v0, p0, LaH/g;->a:Landroid/os/Handler;
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_4d

    if-nez v0, :cond_50

    :try_start_40
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4d
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_3c

    :catch_44
    move-exception v0

    :try_start_45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3c

    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_4d

    throw v0

    :cond_50
    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4d

    return-void
.end method

.method protected a(Landroid/hardware/SensorEvent;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, LaH/g;->k:Z

    if-eqz v0, :cond_1d

    iget-wide v0, p0, LaH/g;->i:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long/2addr v0, v2

    const-wide v2, 0x4e94914f0000L

    cmp-long v0, v0, v2

    if-lez v0, :cond_30

    iput-boolean v5, p0, LaH/g;->j:Z

    :goto_1b
    iput-boolean v4, p0, LaH/g;->k:Z

    :cond_1d
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v0, v1}, LaH/g;->a(J)J

    move-result-wide v1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_4e

    :cond_2c
    :goto_2c
    invoke-direct {p0, v1, v2}, LaH/g;->b(J)V

    return-void

    :cond_30
    iput-boolean v4, p0, LaH/g;->j:Z

    goto :goto_1b

    :pswitch_33
    iget-object v0, p0, LaH/g;->c:LaH/c;

    invoke-virtual {v0}, LaH/c;->d()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, LaH/g;->e:LaH/f;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-virtual/range {v0 .. v5}, LaH/f;->a(JFFF)V

    goto :goto_2c

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_33
    .end packed-switch
.end method

.method public a(Landroid/location/Location;Lt/y;)V
    .registers 6

    iget-object v0, p0, LaH/g;->a:Landroid/os/Handler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v1, 0x1

    new-instance v2, LaH/i;

    invoke-direct {v2, p1, p2}, LaH/i;-><init>(Landroid/location/Location;Lt/y;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method protected a(Landroid/location/Location;)Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

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
    .registers 3

    const/4 v1, 0x2

    iget-object v0, p0, LaH/g;->a:Landroid/os/Handler;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_5
.end method

.method protected b(Landroid/location/Location;Lt/y;)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, LaH/g;->c:LaH/c;

    invoke-virtual {v0, p2}, LaH/c;->a(Lt/y;)V

    if-eqz p2, :cond_44

    iget-object v0, p0, LaH/g;->c:LaH/c;

    invoke-virtual {v0}, LaH/c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LaH/g;->c:LaH/c;

    invoke-virtual {v0}, LaH/c;->e()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, LaH/g;->d:LaH/b;

    invoke-virtual {v0, p1}, LaH/b;->b(Landroid/location/Location;)Z

    iget-object v0, p0, LaH/g;->c:LaH/c;

    invoke-virtual {v0}, LaH/c;->c()V

    :cond_24
    invoke-virtual {p0, p1}, LaH/g;->a(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LaH/g;->c()V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    const/high16 v2, -0x4080

    invoke-static {p1, p2, v2}, LaH/a;->a(Landroid/location/Location;Lt/y;F)Lbp/b;

    move-result-object v2

    iget-object v3, p0, LaH/g;->e:LaH/f;

    invoke-virtual {v3, v0, v1, v2}, LaH/f;->a(JLbp/b;)V

    invoke-direct {p0, v0, v1}, LaH/g;->b(J)V

    goto :goto_2

    :cond_44
    iget-object v0, p0, LaH/g;->c:LaH/c;

    invoke-virtual {v0}, LaH/c;->d()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-direct {p0}, LaH/g;->h()V

    :cond_4f
    iget-object v0, p0, LaH/g;->d:LaH/b;

    invoke-virtual {v0, p1}, LaH/b;->b(Landroid/location/Location;)Z

    goto :goto_2
.end method

.method protected c()V
    .registers 3

    iget-object v1, p0, LaH/g;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, LaH/g;->l:Z

    if-nez v0, :cond_12

    iget-object v0, p0, LaH/g;->e:LaH/f;

    invoke-virtual {v0}, LaH/f;->a()V

    invoke-direct {p0}, LaH/g;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaH/g;->l:Z

    :cond_12
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public final run()V
    .registers 5

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, LaH/h;

    invoke-direct {v0, p0}, LaH/h;-><init>(LaH/g;)V

    iput-object v0, p0, LaH/g;->a:Landroid/os/Handler;

    iget-object v0, p0, LaH/g;->c:LaH/c;

    invoke-virtual {v0}, LaH/c;->a()V

    iget-object v0, p0, LaH/g;->d:LaH/b;

    invoke-virtual {v0}, LaH/b;->a()V

    new-instance v0, LaH/k;

    iget-object v1, p0, LaH/g;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    iget-object v3, p0, LaH/g;->h:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, LaH/k;-><init>(Landroid/os/Handler;ILandroid/content/Context;)V

    iput-object v0, p0, LaH/g;->b:LaH/k;

    invoke-virtual {p0}, LaH/g;->c()V

    monitor-enter p0

    :try_start_24
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_2c

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method
