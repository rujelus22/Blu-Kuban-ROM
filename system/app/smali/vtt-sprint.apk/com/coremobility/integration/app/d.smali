.class final Lcom/coremobility/integration/app/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/d;->a:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    sget-boolean v0, Lcom/coremobility/integration/app/d;->a:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0, p0}, Lcom/coremobility/integration/app/e;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    if-eqz p1, :cond_1b

    :try_start_b
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->c()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_16

    :goto_12
    const/4 v0, 0x1

    sput-boolean v0, Lcom/coremobility/integration/app/d;->a:Z

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    :cond_1b
    sget-boolean v0, Lcom/coremobility/integration/app/d;->a:Z

    if-eqz v0, :cond_15

    :try_start_1f
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->c()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/Process;->setThreadPriority(II)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/d;->a:Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_29} :catch_2a

    goto :goto_15

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public final run()V
    .registers 3

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->b()Lcom/coremobility/integration/app/i;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_6
    return-void

    :cond_7
    monitor-enter v1

    const/4 v0, 0x0

    :try_start_9
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/d;->a:Z
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_14

    :goto_f
    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_11

    goto :goto_6

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_14
    move-exception v0

    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_11

    goto :goto_f
.end method
