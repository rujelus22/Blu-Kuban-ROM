.class public Lcom/google/googlenav/prefetch/android/PrefetcherService;
.super Landroid/app/Service;


# static fields
.field public static final a:J


# instance fields
.field private volatile b:Lcom/google/googlenav/prefetch/android/k;

.field private final c:Landroid/os/IBinder;

.field private volatile d:J

.field private volatile e:J

.field private f:J

.field private g:Landroid/os/Looper;

.field private h:Lcom/google/googlenav/prefetch/android/j;

.field private i:Lx/aF;

.field private j:Lcom/google/googlenav/android/J;

.field private k:LaR/i;

.field private l:Landroid/net/wifi/WifiManager$WifiLock;

.field private m:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Laf/d;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x14

    :goto_8
    sput-wide v0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a:J

    return-void

    :cond_b
    const-wide/16 v0, 0xa

    goto :goto_8
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    sget-object v0, Lcom/google/googlenav/prefetch/android/k;->c:Lcom/google/googlenav/prefetch/android/k;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b:Lcom/google/googlenav/prefetch/android/k;

    new-instance v0, Lcom/google/googlenav/prefetch/android/f;

    invoke-direct {v0, p0}, Lcom/google/googlenav/prefetch/android/f;-><init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;)V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->c:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/PrefetcherService;)Lcom/google/googlenav/prefetch/android/j;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/j;

    return-object v0
.end method

.method private a(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/j;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/prefetch/android/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/j;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/prefetch/android/j;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(J)V
    .registers 6

    iput-wide p1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d:J

    const-string v0, "LAST_PREFECHED_FINISHED"

    iget-wide v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d:J

    invoke-static {v0, v1, v2}, Laf/l;->a(Ljava/lang/String;J)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-interface {v0}, Lak/m;->a()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 11

    const-class v7, Lcom/google/googlenav/prefetch/android/PrefetcherService;

    monitor-enter v7

    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Lae/c;->h()Lae/c;

    move-result-object v1

    invoke-virtual {v1}, Lae/c;->d()J

    move-result-wide v2

    invoke-static {}, Lae/c;->h()Lae/c;

    move-result-object v1

    invoke-virtual {v1}, Lae/c;->e()J

    move-result-wide v4

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v2, v8

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_36

    monitor-exit v7

    return-void

    :catchall_36
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/PrefetcherService;ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/h;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/h;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/w;LaR/f;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b(Lcom/google/googlenav/prefetch/android/w;LaR/f;)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/prefetch/android/d;)V
    .registers 6

    const-string v0, ""

    sget-object v1, Lcom/google/googlenav/prefetch/android/c;->a:[I

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    :goto_d
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x60

    const-string v2, "c"

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :pswitch_32
    const-string v0, "u"

    goto :goto_d

    :pswitch_35
    const-string v0, "n"

    goto :goto_d

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_32
        :pswitch_35
    .end packed-switch
.end method

.method private a(Lcom/google/googlenav/prefetch/android/h;)V
    .registers 11

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/h;->a()Lcom/google/googlenav/prefetch/android/w;

    move-result-object v2

    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i:Lx/aF;

    invoke-virtual {v0}, Lx/aF;->l()J

    move-result-wide v0

    const-wide/16 v3, 0x190

    cmp-long v0, v0, v3

    if-gez v0, :cond_1f

    const-wide/16 v0, 0x3e8

    :try_start_12
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_de

    :goto_15
    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0}, Lat/h;->o()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1f
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/h;->d()LaR/e;

    move-result-object v0

    invoke-virtual {v0}, LaR/e;->b()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->o()V

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/h;->f()LaR/f;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/h;->f()LaR/f;

    move-result-object v0

    invoke-interface {v0}, LaR/f;->b()V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/h;->b()I

    move-result v0

    if-lez v0, :cond_5e

    :cond_44
    :goto_44
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_5e

    invoke-virtual {v2}, Lcom/google/googlenav/prefetch/android/w;->a()Lt/af;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i:Lx/aF;

    invoke-virtual {v1, v0}, Lx/aF;->a(Lt/af;)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_5e
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/h;->d()LaR/e;

    move-result-object v0

    invoke-virtual {v0}, LaR/e;->c()Lcom/google/googlenav/prefetch/android/g;

    move-result-object v4

    new-instance v5, Lcom/google/googlenav/prefetch/android/i;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, p0, v0, p1}, Lcom/google/googlenav/prefetch/android/i;-><init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;ILcom/google/googlenav/prefetch/android/h;)V

    sget-object v0, Lcom/google/googlenav/prefetch/android/g;->c:Lcom/google/googlenav/prefetch/android/g;

    invoke-virtual {v4, v0}, Lcom/google/googlenav/prefetch/android/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    sget-object v0, Lx/g;->c:Lx/g;

    move-object v1, v0

    :goto_7a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    iget-object v7, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i:Lx/aF;

    const/4 v8, 0x1

    invoke-virtual {v7, v0, v5, v1, v8}, Lx/aF;->a(Lt/af;Lx/aw;Lx/g;Z)V

    goto :goto_7e

    :cond_91
    sget-object v0, Lx/g;->e:Lx/g;

    move-object v1, v0

    goto :goto_7a

    :cond_95
    const-string v0, "b"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v0, v1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/h;->f()LaR/f;

    move-result-object v0

    if-eqz v0, :cond_c6

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/h;->f()LaR/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/h;->e()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/googlenav/prefetch/android/w;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, LaR/f;->a(II)V

    :cond_c6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/h;->f()LaR/f;

    move-result-object v0

    if-eqz v0, :cond_d9

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/h;->f()LaR/f;

    move-result-object v0

    invoke-interface {v0}, LaR/f;->a()V

    :cond_d9
    invoke-direct {p0, p1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b(Lcom/google/googlenav/prefetch/android/h;)V

    goto/16 :goto_39

    :catch_de
    move-exception v0

    goto/16 :goto_15
.end method

.method private a(Lcom/google/googlenav/prefetch/android/w;LaR/e;LaR/f;)V
    .registers 13

    const/4 v8, 0x2

    invoke-virtual {p2}, LaR/e;->a()Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz p3, :cond_c

    invoke-interface {p3}, LaR/f;->b()V

    :cond_c
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l()V

    :goto_f
    return-void

    :cond_10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->e:J

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->k:LaR/i;

    invoke-interface {v0}, LaR/i;->b()V

    sget-object v0, Lcom/google/googlenav/prefetch/android/k;->a:Lcom/google/googlenav/prefetch/android/k;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b:Lcom/google/googlenav/prefetch/android/k;

    invoke-static {}, Lae/c;->h()Lae/c;

    move-result-object v0

    invoke-virtual {v0}, Lae/c;->b()I

    move-result v3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "l="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/w;->c()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/w;->b()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, LaR/e;->c()Lcom/google/googlenav/prefetch/android/g;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Laf/d;->a()Z

    move-result v0

    if-nez v0, :cond_9e

    :cond_90
    :goto_90
    new-instance v0, Lcom/google/googlenav/prefetch/android/h;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/prefetch/android/h;-><init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/w;ILaR/e;LaR/f;J)V

    invoke-direct {p0, v8, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(ILjava/lang/Object;)V

    goto/16 :goto_f

    :cond_9e
    invoke-static {}, LaB/d;->a()LaB/d;

    move-result-object v0

    if-nez v0, :cond_90

    sget-object v0, LaC/b;->a:LaC/b;

    invoke-virtual {v0}, LaC/b;->d()I

    move-result v0

    invoke-static {v0}, LaB/d;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cS;->a(Z)V

    goto :goto_90
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .registers 5

    const-class v1, Lcom/google/googlenav/prefetch/android/PrefetcherService;

    monitor-enter v1

    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/google/googlenav/prefetch/android/h;)V
    .registers 8

    sget-object v0, Lcom/google/googlenav/prefetch/android/k;->c:Lcom/google/googlenav/prefetch/android/k;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b:Lcom/google/googlenav/prefetch/android/k;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    sget-object v2, Lcom/google/googlenav/prefetch/android/g;->a:Lcom/google/googlenav/prefetch/android/g;

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/h;->d()LaR/e;

    move-result-object v3

    invoke-virtual {v3}, LaR/e;->c()Lcom/google/googlenav/prefetch/android/g;

    move-result-object v3

    if-ne v2, v3, :cond_1f

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(J)V

    :cond_1f
    iput-wide v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->e:J

    invoke-static {}, Lcom/google/googlenav/prefetch/android/a;->c()Lcom/google/googlenav/prefetch/android/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/prefetch/android/a;->b()V

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/h;->g()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/h;->d()LaR/e;

    move-result-object v2

    invoke-virtual {v2}, LaR/e;->c()Lcom/google/googlenav/prefetch/android/g;

    move-result-object v2

    const-string v3, "f"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Laf/m;->f()V

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l()V

    return-void
.end method

.method private b(Lcom/google/googlenav/prefetch/android/w;LaR/f;)V
    .registers 9

    new-instance v0, LaR/b;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->j:Lcom/google/googlenav/android/J;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i:Lx/aF;

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    sget-object v5, Lcom/google/googlenav/prefetch/android/g;->c:Lcom/google/googlenav/prefetch/android/g;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, LaR/b;-><init>(Lcom/google/googlenav/android/J;Lx/aF;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/g;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/w;LaR/e;LaR/f;)V

    return-void
.end method

.method private h()Landroid/os/PowerManager$WakeLock;
    .registers 4

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "PrefetcherService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method private i()Landroid/net/wifi/WifiManager$WifiLock;
    .registers 4

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "PrefetcherService"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    return-object v0
.end method

.method private j()Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->F()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->k()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->j:Lcom/google/googlenav/android/J;

    invoke-virtual {v1}, Lcom/google/googlenav/android/J;->a()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-static {}, Laf/d;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x60

    const-string v2, "n"

    const-string v3, "p"

    invoke-static {v1, v2, v3}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    :cond_26
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private k()Z
    .registers 7

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    invoke-static {}, Lae/c;->h()Lae/c;

    move-result-object v2

    invoke-virtual {v2}, Lae/c;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private l()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->e()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/j;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/j;->sendEmptyMessage(I)Z

    :cond_16
    return-void
.end method

.method private m()J
    .registers 7

    const-wide/16 v2, 0x0

    const-string v0, "LAST_PREFECHED_FINISHED"

    invoke-static {v0, v2, v3}, Laf/l;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v4

    invoke-virtual {v4}, Laf/b;->v()Laf/a;

    move-result-object v4

    invoke-interface {v4}, Laf/a;->b()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_19

    :goto_18
    return-wide v0

    :cond_19
    move-wide v0, v2

    goto :goto_18
.end method

.method private n()J
    .registers 4

    const-string v0, "LAST_PREFETCH_NOT_START_CONDITION_LOG_TIME"

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Laf/l;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private o()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/prefetch/android/a;->c()Lcom/google/googlenav/prefetch/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/a;->b()V

    sget-object v0, Lcom/google/googlenav/prefetch/android/k;->b:Lcom/google/googlenav/prefetch/android/k;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b:Lcom/google/googlenav/prefetch/android/k;

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/j;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/j;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/j;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/j;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/j;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/j;->removeMessages(I)V

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->j()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/j;->sendEmptyMessage(I)Z

    :goto_1d
    return-void

    :cond_1e
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l()V

    goto :goto_1d
.end method

.method public a(Lcom/google/googlenav/prefetch/android/g;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/16 v0, 0x60

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/g;->a()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public a(Lcom/google/googlenav/prefetch/android/w;LaR/f;)V
    .registers 5

    const/4 v0, 0x4

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public b()V
    .registers 7

    new-instance v0, LaR/a;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->j:Lcom/google/googlenav/android/J;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i:Lx/aF;

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    sget-object v5, Lcom/google/googlenav/prefetch/android/g;->a:Lcom/google/googlenav/prefetch/android/g;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, LaR/a;-><init>(Lcom/google/googlenav/android/J;Lx/aF;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/g;)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->k:LaR/i;

    invoke-interface {v2}, LaR/i;->c()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/google/googlenav/prefetch/android/w;

    invoke-direct {v2, v1}, Lcom/google/googlenav/prefetch/android/w;-><init>(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/w;LaR/e;LaR/f;)V

    return-void
.end method

.method public c()V
    .registers 7

    new-instance v0, LaR/b;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->j:Lcom/google/googlenav/android/J;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i:Lx/aF;

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    sget-object v5, Lcom/google/googlenav/prefetch/android/g;->b:Lcom/google/googlenav/prefetch/android/g;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, LaR/b;-><init>(Lcom/google/googlenav/android/J;Lx/aF;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/g;)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->k:LaR/i;

    invoke-interface {v2}, LaR/i;->c()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/google/googlenav/prefetch/android/w;

    invoke-direct {v2, v1}, Lcom/google/googlenav/prefetch/android/w;-><init>(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/w;LaR/e;LaR/f;)V

    return-void
.end method

.method public d()LaR/h;
    .registers 7

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->g()J

    new-instance v0, LaR/h;

    iget-wide v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d:J

    iget-wide v3, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->e:J

    invoke-static {}, Laf/d;->a()Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->k:LaR/i;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_15
    invoke-direct/range {v0 .. v5}, LaR/h;-><init>(JJLjava/lang/String;)V

    return-object v0

    :cond_19
    const/4 v5, 0x0

    goto :goto_15
.end method

.method public e()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b:Lcom/google/googlenav/prefetch/android/k;

    sget-object v1, Lcom/google/googlenav/prefetch/android/k;->a:Lcom/google/googlenav/prefetch/android/k;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public f()V
    .registers 4

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f:J

    const-string v0, "LAST_PREFETCH_NOT_START_CONDITION_LOG_TIME"

    iget-wide v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f:J

    invoke-static {v0, v1, v2}, Laf/l;->a(Ljava/lang/String;J)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-interface {v0}, Lak/m;->a()V

    return-void
.end method

.method public g()Z
    .registers 7

    invoke-static {}, Laf/d;->a()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-wide v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f:J

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-interface {v2}, Laf/a;->b()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->c:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PrefetcherService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->g:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->g:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    new-instance v0, Lcom/google/googlenav/prefetch/android/j;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->g:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/prefetch/android/j;-><init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/j;

    new-instance v0, Lcom/google/googlenav/android/J;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/J;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->j:Lcom/google/googlenav/android/J;

    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lat/h;

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->a(Lcom/google/googlenav/android/AndroidGmmApplication;)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-static {v0}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v0

    check-cast v0, Lx/aF;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i:Lx/aF;

    invoke-static {}, Lcom/google/googlenav/prefetch/android/p;->d()Lcom/google/googlenav/prefetch/android/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->k:LaR/i;

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->k:LaR/i;

    invoke-interface {v0}, LaR/i;->a()V

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d:J

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f:J

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i()Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->m:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-static {}, Lcom/google/googlenav/M;->F()Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-static {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b(Landroid/content/Context;)V

    :goto_7b
    return-void

    :cond_7c
    invoke-static {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Landroid/content/Context;)V

    goto :goto_7b
.end method

.method public onDestroy()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->g:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    new-instance v1, Lcom/google/googlenav/prefetch/android/e;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/prefetch/android/e;-><init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/c;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/prefetch/android/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    invoke-virtual {p0, p1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
