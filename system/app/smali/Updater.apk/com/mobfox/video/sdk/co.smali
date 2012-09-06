.class public final Lcom/mobfox/video/sdk/co;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Z

.field private static c:Ljava/util/Queue;

.field private static d:Ljava/util/Queue;

.field private static e:Ljava/lang/Thread;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mobfox/video/sdk/co;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobfox/video/sdk/co;->b:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/mobfox/video/sdk/co;->c:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/mobfox/video/sdk/co;->d:Ljava/util/Queue;

    return-void
.end method

.method public static a()V
    .registers 3

    sget-object v1, Lcom/mobfox/video/sdk/co;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/mobfox/video/sdk/co;->b:Z

    if-nez v0, :cond_23

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mobfox/video/sdk/co;->b:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/mobfox/video/sdk/cp;

    invoke-direct {v2}, Lcom/mobfox/video/sdk/cp;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/mobfox/video/sdk/co;->e:Ljava/lang/Thread;

    new-instance v2, Lcom/mobfox/video/sdk/cq;

    invoke-direct {v2}, Lcom/mobfox/video/sdk/cq;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sget-object v0, Lcom/mobfox/video/sdk/co;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/mobfox/video/sdk/cm;)V
    .registers 5

    sget-object v1, Lcom/mobfox/video/sdk/co;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mobfox/video/sdk/co;->c:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/mobfox/video/sdk/co;->c:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_10
    const-string v0, "MOBFOX"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Added track event:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/mobfox/video/sdk/co;->c:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_3c

    sget-boolean v0, Lcom/mobfox/video/sdk/co;->b:Z

    if-nez v0, :cond_3b

    invoke-static {}, Lcom/mobfox/video/sdk/co;->a()V

    :cond_3b
    return-void

    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Z)V
    .registers 1

    sput-boolean p0, Lcom/mobfox/video/sdk/co;->f:Z

    return-void
.end method

.method public static b(Lcom/mobfox/video/sdk/cm;)V
    .registers 5

    sget-object v1, Lcom/mobfox/video/sdk/co;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mobfox/video/sdk/co;->d:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/mobfox/video/sdk/cm;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobfox/video/sdk/cm;->c:I

    iget v0, p0, Lcom/mobfox/video/sdk/cm;->c:I

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1b

    sget-object v0, Lcom/mobfox/video/sdk/co;->d:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1b
    const-string v0, "MOBFOX"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Added retry track event:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/mobfox/video/sdk/co;->d:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_40

    return-void

    :catchall_40
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()Z
    .registers 1

    sget-boolean v0, Lcom/mobfox/video/sdk/co;->f:Z

    return v0
.end method

.method static synthetic c()Z
    .registers 1

    invoke-static {}, Lcom/mobfox/video/sdk/co;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Lcom/mobfox/video/sdk/cm;
    .registers 1

    invoke-static {}, Lcom/mobfox/video/sdk/co;->k()Lcom/mobfox/video/sdk/cm;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Ljava/util/Queue;
    .registers 1

    sget-object v0, Lcom/mobfox/video/sdk/co;->c:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic f()Ljava/util/Queue;
    .registers 1

    sget-object v0, Lcom/mobfox/video/sdk/co;->d:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/mobfox/video/sdk/co;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobfox/video/sdk/co;->b:Z

    return-void
.end method

.method static synthetic i()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mobfox/video/sdk/co;->e:Ljava/lang/Thread;

    return-void
.end method

.method private static j()Z
    .registers 5

    sget-object v1, Lcom/mobfox/video/sdk/co;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mobfox/video/sdk/co;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    :goto_c
    const-string v2, "MOBFOX"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "MOBFOX"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "More updates:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mobfox/video/sdk/co;->c:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3d

    return v0

    :cond_3b
    const/4 v0, 0x1

    goto :goto_c

    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static k()Lcom/mobfox/video/sdk/cm;
    .registers 2

    sget-object v1, Lcom/mobfox/video/sdk/co;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mobfox/video/sdk/co;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    monitor-exit v1

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Lcom/mobfox/video/sdk/co;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobfox/video/sdk/cm;

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_18

    goto :goto_d

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method
