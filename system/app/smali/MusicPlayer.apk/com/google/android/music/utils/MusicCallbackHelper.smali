.class public Lcom/google/android/music/utils/MusicCallbackHelper;
.super Ljava/lang/Object;
.source "MusicCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/utils/MusicCallbackHelper$DelegateDispatchHandler;
    }
.end annotation


# instance fields
.field private mCancellableRunnables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/utils/MusicCallbackHelper;->mCancellableRunnables:Ljava/util/HashSet;

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MusicCallbackHelper.handler"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/music/utils/MusicCallbackHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 55
    iget-object v0, p0, Lcom/google/android/music/utils/MusicCallbackHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    new-instance v0, Lcom/google/android/music/utils/MusicCallbackHelper$DelegateDispatchHandler;

    iget-object v1, p0, Lcom/google/android/music/utils/MusicCallbackHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/utils/MusicCallbackHelper$DelegateDispatchHandler;-><init>(Lcom/google/android/music/utils/MusicCallbackHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/music/utils/MusicCallbackHelper;->mHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/utils/MusicCallbackHelper;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/music/utils/MusicCallbackHelper;->mCancellableRunnables:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/music/utils/MusicCallbackHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/music/utils/MusicCallbackHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 93
    return-void
.end method

.method public post(Ljava/lang/Runnable;Z)V
    .registers 5
    .parameter "r"
    .parameter "cancellable"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/music/utils/MusicCallbackHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    if-eqz p2, :cond_10

    .line 77
    iget-object v1, p0, Lcom/google/android/music/utils/MusicCallbackHelper;->mCancellableRunnables:Ljava/util/HashSet;

    monitor-enter v1

    .line 78
    :try_start_a
    iget-object v0, p0, Lcom/google/android/music/utils/MusicCallbackHelper;->mCancellableRunnables:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    monitor-exit v1

    .line 81
    :cond_10
    return-void

    .line 79
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v0
.end method

.method public removeCancellables()V
    .registers 5

    .prologue
    .line 60
    iget-object v3, p0, Lcom/google/android/music/utils/MusicCallbackHelper;->mCancellableRunnables:Ljava/util/HashSet;

    monitor-enter v3

    .line 61
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/utils/MusicCallbackHelper;->mCancellableRunnables:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 62
    .local v1, set:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 64
    .local v0, r:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/google/android/music/utils/MusicCallbackHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_9

    .line 67
    .end local v0           #r:Ljava/lang/Runnable;
    .end local v1           #set:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v2

    .line 66
    .restart local v1       #set:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/google/android/music/utils/MusicCallbackHelper;->mCancellableRunnables:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 67
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_1b

    .line 68
    return-void
.end method
