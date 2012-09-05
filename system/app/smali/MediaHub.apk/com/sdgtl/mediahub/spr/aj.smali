.class public final Lcom/sdgtl/mediahub/spr/aj;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/aj;->a:Landroid/os/Handler;

    sput-object v0, Lcom/sdgtl/mediahub/spr/aj;->b:Ljava/lang/Thread;

    return-void
.end method

.method public static declared-synchronized a()V
    .registers 3

    const-class v1, Lcom/sdgtl/mediahub/spr/aj;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sdgtl/mediahub/spr/aj;->b:Ljava/lang/Thread;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/sdgtl/mediahub/spr/ak;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/ak;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/aj;->b:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/aj;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Landroid/os/Handler;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/aj;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    invoke-static {p0}, Lcom/a/a/a/a/d/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_f

    :cond_e
    return-void

    :cond_f
    add-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x12c

    :try_start_13
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_1

    :catch_17
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private static declared-synchronized a(Ljava/lang/String;ILcom/sdgtl/mediahub/spr/am;)V
    .registers 6

    const-class v1, Lcom/sdgtl/mediahub/spr/aj;

    monitor-enter v1

    if-nez p0, :cond_7

    :goto_5
    monitor-exit v1

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Lcom/sdgtl/mediahub/spr/al;

    invoke-direct {v0, p1, p0, p2}, Lcom/sdgtl/mediahub/spr/al;-><init>(ILjava/lang/String;Lcom/sdgtl/mediahub/spr/am;)V

    if-nez p2, :cond_15

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_5

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_15
    :try_start_15
    sget-object v2, Lcom/sdgtl/mediahub/spr/aj;->a:Landroid/os/Handler;

    if-nez v2, :cond_1d

    invoke-static {}, Lcom/sdgtl/mediahub/spr/aj;->a()V

    goto :goto_5

    :cond_1d
    sget-object v2, Lcom/sdgtl/mediahub/spr/aj;->a:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_12

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;Lcom/sdgtl/mediahub/spr/am;)V
    .registers 3

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcom/sdgtl/mediahub/spr/aj;->a(Ljava/lang/String;ILcom/sdgtl/mediahub/spr/am;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/sdgtl/mediahub/spr/am;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/sdgtl/mediahub/spr/aj;->a(Ljava/lang/String;ILcom/sdgtl/mediahub/spr/am;)V

    return-void
.end method
