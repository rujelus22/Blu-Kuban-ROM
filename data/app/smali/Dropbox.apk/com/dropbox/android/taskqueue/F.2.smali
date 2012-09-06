.class public final Lcom/dropbox/android/taskqueue/F;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private a:Z

.field private b:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/taskqueue/F;->a:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/F;->b:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/dropbox/android/taskqueue/F;->a:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/dropbox/android/taskqueue/F;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_10

    .line 35
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reuse of TransferResourceLock is not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_10
    :try_start_10
    invoke-static {}, Lcom/dropbox/android/util/bc;->a()Lcom/dropbox/android/util/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/bc;->b()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/taskqueue/F;->a:Z
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_24

    .line 44
    :try_start_1a
    invoke-static {}, Lcom/dropbox/android/util/N;->a()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 46
    iput-object v0, p0, Lcom/dropbox/android/taskqueue/F;->b:Landroid/os/PowerManager$WakeLock;
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_26

    .line 48
    return-void

    .line 41
    :catchall_24
    move-exception v0

    throw v0

    .line 47
    :catchall_26
    move-exception v0

    throw v0
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 53
    iget-boolean v1, p0, Lcom/dropbox/android/taskqueue/F;->a:Z

    if-eqz v1, :cond_c

    .line 55
    :try_start_5
    invoke-static {}, Lcom/dropbox/android/util/bc;->a()Lcom/dropbox/android/util/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/bc;->c()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_22

    .line 61
    :cond_c
    :goto_c
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/F;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_15

    .line 63
    :try_start_10
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/F;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_20

    .line 69
    :cond_15
    :goto_15
    if-eqz v0, :cond_1f

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error releasing wifi and wake locks"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 72
    :cond_1f
    return-void

    .line 64
    :catch_20
    move-exception v0

    goto :goto_15

    .line 56
    :catch_22
    move-exception v0

    goto :goto_c
.end method
