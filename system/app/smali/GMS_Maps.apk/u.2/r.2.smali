.class public Lu/r;
.super Lz/d;

# interfaces
.implements Ls/c;
.implements Lv/t;


# static fields
.field private static a:Lu/r;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Looper;

.field private d:Z

.field private final e:Lu/p;

.field private f:Landroid/location/Location;

.field private g:Lv/u;

.field private h:Z

.field private i:Lu/w;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lu/r;->a:Lu/r;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lz/d;-><init>()V

    new-instance v0, Lu/w;

    invoke-direct {v0, p0, v1}, Lu/w;-><init>(Lu/r;Lu/s;)V

    iput-object v0, p0, Lu/r;->i:Lu/w;

    iput-object v1, p0, Lu/r;->e:Lu/p;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lat/h;Ljava/io/File;)V
    .registers 10

    const-string v0, "NavigationThread"

    invoke-direct {p0, v0}, Lz/d;-><init>(Ljava/lang/String;)V

    new-instance v0, Lu/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu/w;-><init>(Lu/r;Lu/s;)V

    iput-object v0, p0, Lu/r;->i:Lu/w;

    new-instance v1, Lu/E;

    invoke-direct {v1, p2, p0}, Lu/E;-><init>(Lat/h;Lu/r;)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->f:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-static {v0}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v0

    new-instance v2, Lv/u;

    invoke-direct {v2, p1, v0}, Lv/u;-><init>(Landroid/content/Context;Lx/ay;)V

    iput-object v2, p0, Lu/r;->g:Lv/u;

    iget-object v0, p0, Lu/r;->g:Lv/u;

    invoke-virtual {v0, p0}, Lv/u;->a(Lv/t;)V

    new-instance v0, Lu/p;

    iget-object v2, p0, Lu/r;->g:Lv/u;

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lu/p;-><init>(Lu/E;Lv/u;Ljava/lang/Thread;Ljava/io/File;Landroid/content/Context;)V

    iput-object v0, p0, Lu/r;->e:Lu/p;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/r;->d:Z

    invoke-virtual {p0}, Lu/r;->start()V

    monitor-enter p0

    :goto_37
    :try_start_37
    iget-object v0, p0, Lu/r;->b:Landroid/os/Handler;
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_43

    if-nez v0, :cond_41

    :try_start_3b
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_43
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_37

    :catch_3f
    move-exception v0

    goto :goto_37

    :cond_41
    :try_start_41
    monitor-exit p0

    return-void

    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_43

    throw v0
.end method

.method static synthetic a(Lu/r;Landroid/location/Location;)Landroid/location/Location;
    .registers 2

    iput-object p1, p0, Lu/r;->f:Landroid/location/Location;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/r;
    .registers 5

    const-class v1, Lu/r;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lu/r;->a:Lu/r;

    if-nez v0, :cond_16

    new-instance v0, Lu/r;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v2

    invoke-static {p0}, Ln/b;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lu/r;-><init>(Landroid/content/Context;Lat/h;Ljava/io/File;)V

    sput-object v0, Lu/r;->a:Lu/r;

    :cond_16
    sget-object v0, Lu/r;->a:Lu/r;

    iget-object v0, v0, Lu/r;->i:Lu/w;

    invoke-static {v0, p0}, Lu/w;->a(Lu/w;Landroid/content/Context;)V

    sget-object v0, Lu/r;->a:Lu/r;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit v1

    return-object v0

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/location/Location;)V
    .registers 5

    invoke-direct {p0}, Lu/r;->m()V

    iput-object p1, p0, Lu/r;->f:Landroid/location/Location;

    iget-boolean v0, p0, Lu/r;->h:Z

    if-nez v0, :cond_1a

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lu/t;

    const-string v2, "NavigationThread.IdleHandler"

    invoke-direct {v1, p0, v2}, Lu/t;-><init>(Lu/r;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/r;->h:Z

    :cond_1a
    return-void
.end method

.method private a(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_b2

    :goto_5
    return-void

    :pswitch_6
    invoke-direct {p0}, Lu/r;->k()V

    goto :goto_5

    :pswitch_a
    invoke-direct {p0}, Lu/r;->j()V

    goto :goto_5

    :pswitch_e
    invoke-direct {p0}, Lu/r;->l()V

    goto :goto_5

    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lu/u;

    iget-object v0, p0, Lu/r;->e:Lu/p;

    invoke-static {v5}, Lu/u;->a(Lu/u;)Ls/b;

    move-result-object v1

    invoke-static {v5}, Lu/u;->b(Lu/u;)[Lu/P;

    move-result-object v2

    invoke-static {v5}, Lu/u;->c(Lu/u;)I

    move-result v3

    invoke-static {v5}, Lu/u;->d(Lu/u;)I

    move-result v4

    invoke-static {v5}, Lu/u;->e(Lu/u;)[Lu/b;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lu/p;->a(Ls/b;[Lu/P;II[Lu/b;)V

    goto :goto_5

    :pswitch_31
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lu/u;

    iget-object v1, p0, Lu/r;->e:Lu/p;

    invoke-static {v0}, Lu/u;->a(Lu/u;)Ls/b;

    move-result-object v2

    invoke-static {v0}, Lu/u;->f(Lu/u;)Lu/x;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lu/p;->a(Ls/b;Lu/x;)V

    goto :goto_5

    :pswitch_43
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lu/u;

    iget-object v1, p0, Lu/r;->e:Lu/p;

    invoke-static {v0}, Lu/u;->b(Lu/u;)[Lu/P;

    move-result-object v2

    invoke-static {v0}, Lu/u;->c(Lu/u;)I

    move-result v3

    invoke-static {v0}, Lu/u;->e(Lu/u;)[Lu/b;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lu/p;->a([Lu/P;I[Lu/b;)V

    goto :goto_5

    :pswitch_59
    iget-object v1, p0, Lu/r;->e:Lu/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lu/x;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lu/p;->a(Lu/x;Z)V

    goto :goto_5

    :pswitch_64
    iget-object v1, p0, Lu/r;->e:Lu/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lu/a;

    invoke-virtual {v1, v0}, Lu/p;->a(Lu/a;)V

    goto :goto_5

    :pswitch_6e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v0}, Lu/r;->a(Landroid/location/Location;)V

    goto :goto_5

    :pswitch_76
    iget-object v1, p0, Lu/r;->e:Lu/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lu/g;

    invoke-virtual {v1, v0}, Lu/p;->a(Lu/g;)V

    goto :goto_5

    :pswitch_80
    iget-object v0, p0, Lu/r;->e:Lu/p;

    invoke-virtual {v0}, Lu/p;->g()V

    goto :goto_5

    :pswitch_86
    iget-object v0, p0, Lu/r;->e:Lu/p;

    invoke-virtual {v0}, Lu/p;->i()V

    goto/16 :goto_5

    :pswitch_8d
    iget-object v0, p0, Lu/r;->e:Lu/p;

    invoke-virtual {v0}, Lu/p;->k()V

    goto/16 :goto_5

    :pswitch_94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lu/v;

    iget-object v1, p0, Lu/r;->e:Lu/p;

    invoke-static {v0}, Lu/v;->a(Lu/v;)Lu/x;

    move-result-object v2

    invoke-static {v0}, Lu/v;->b(Lu/v;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lu/p;->a(Lu/x;I)V

    goto/16 :goto_5

    :pswitch_a7
    invoke-direct {p0}, Lu/r;->k()V

    iget-object v0, p0, Lu/r;->e:Lu/p;

    invoke-virtual {v0}, Lu/p;->l()V

    goto/16 :goto_5

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

.method static synthetic a(Lu/r;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lu/r;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lu/r;)Z
    .registers 2

    iget-boolean v0, p0, Lu/r;->d:Z

    return v0
.end method

.method static synthetic a(Lu/r;Z)Z
    .registers 2

    iput-boolean p1, p0, Lu/r;->h:Z

    return p1
.end method

.method static synthetic b(Lu/r;)Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lu/r;->f:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic c(Lu/r;)Lu/p;
    .registers 2

    iget-object v0, p0, Lu/r;->e:Lu/p;

    return-object v0
.end method

.method private declared-synchronized i()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lu/r;->c:Landroid/os/Looper;

    new-instance v0, Lu/s;

    invoke-direct {v0, p0}, Lu/s;-><init>(Lu/r;)V

    iput-object v0, p0, Lu/r;->b:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()V
    .registers 2

    invoke-direct {p0}, Lu/r;->m()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/r;->d:Z

    return-void
.end method

.method private k()V
    .registers 2

    invoke-direct {p0}, Lu/r;->m()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/r;->d:Z

    return-void
.end method

.method private l()V
    .registers 2

    invoke-direct {p0}, Lu/r;->m()V

    iget-object v0, p0, Lu/r;->c:Landroid/os/Looper;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lu/r;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lu/r;->c:Landroid/os/Looper;

    :cond_f
    return-void
.end method

.method private final m()V
    .registers 3

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_14

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on NavigationThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_b

    :goto_4
    invoke-direct {p0}, Lu/r;->i()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_b
    move-exception v0

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

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public a(IZ)V
    .registers 6

    iget-object v0, p0, Lu/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lu/r;->b:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ls/C;)V
    .registers 2

    return-void
.end method

.method public a(Ls/b;Lu/x;)V
    .registers 8

    iget-object v0, p0, Lu/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lu/r;->b:Landroid/os/Handler;

    const/4 v2, 0x4

    new-instance v3, Lu/u;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lu/u;-><init>(Ls/b;Lu/x;Lu/s;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ls/b;Lu/x;[Lu/b;)V
    .registers 14

    const/4 v0, 0x1

    new-array v2, v0, [Lu/P;

    const/4 v0, 0x0

    invoke-virtual {p2}, Lu/x;->m()Lu/P;

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v7, p0, Lu/r;->b:Landroid/os/Handler;

    iget-object v8, p0, Lu/r;->b:Landroid/os/Handler;

    const/4 v9, 0x3

    new-instance v0, Lu/u;

    invoke-virtual {p2}, Lu/x;->d()I

    move-result v3

    const/4 v4, 0x5

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lu/u;-><init>(Ls/b;[Lu/P;II[Lu/b;Lu/s;)V

    invoke-virtual {v8, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ls/b;[Lu/P;I[Lu/b;)V
    .registers 15

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A to location must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v7, p0, Lu/r;->b:Landroid/os/Handler;

    iget-object v8, p0, Lu/r;->b:Landroid/os/Handler;

    const/4 v9, 0x3

    new-instance v0, Lu/u;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lu/u;-><init>(Ls/b;[Lu/P;II[Lu/b;Lu/s;)V

    invoke-virtual {v8, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lu/a;)V
    .registers 5

    iget-object v0, p0, Lu/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lu/r;->b:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lu/g;)V
    .registers 5

    iget-object v0, p0, Lu/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lu/r;->b:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lu/o;)V
    .registers 3

    iget-object v0, p0, Lu/r;->e:Lu/p;

    invoke-virtual {v0, p1}, Lu/p;->a(Lu/o;)V

    return-void
.end method

.method public a(Lu/x;)V
    .registers 5

    iget-object v0, p0, Lu/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lu/r;->b:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lu/x;I)V
    .registers 8

    iget-object v0, p0, Lu/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lu/r;->b:Landroid/os/Handler;

    const/16 v2, 0xb

    new-instance v3, Lu/v;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lu/v;-><init>(Lu/x;ILu/s;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lu/r;->e:Lu/p;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lu/r;->e:Lu/p;

    invoke-virtual {v0, p1}, Lu/p;->a(Z)V

    :cond_9
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lu/r;->i:Lu/w;

    invoke-static {v0}, Lu/w;->a(Lu/w;)V

    return-void
.end method

.method public b(Lu/o;)V
    .registers 3

    iget-object v0, p0, Lu/r;->e:Lu/p;

    invoke-virtual {v0, p1}, Lu/p;->b(Lu/o;)V

    return-void
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lu/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lu/r;->b:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lu/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lu/r;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public e()V
    .registers 4

    iget-object v0, p0, Lu/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lu/r;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public f()V
    .registers 4

    iget-object v0, p0, Lu/r;->g:Lv/u;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lu/r;->g:Lv/u;

    invoke-virtual {v0}, Lv/u;->b()V

    :cond_9
    iget-object v0, p0, Lu/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lu/r;->b:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_15
    invoke-virtual {p0}, Lu/r;->join()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_1c

    :goto_18
    const/4 v0, 0x0

    sput-object v0, Lu/r;->a:Lu/r;

    return-void

    :catch_1c
    move-exception v0

    goto :goto_18
.end method

.method public g()V
    .registers 4

    iget-object v0, p0, Lu/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lu/r;->b:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public h()V
    .registers 4

    iget-object v0, p0, Lu/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lu/r;->b:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5

    iget-object v0, p0, Lu/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Lu/r;->b:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
