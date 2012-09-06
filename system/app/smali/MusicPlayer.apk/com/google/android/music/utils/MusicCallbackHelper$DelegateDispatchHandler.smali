.class final Lcom/google/android/music/utils/MusicCallbackHelper$DelegateDispatchHandler;
.super Landroid/os/Handler;
.source "MusicCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/MusicCallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelegateDispatchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/utils/MusicCallbackHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/music/utils/MusicCallbackHelper;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/music/utils/MusicCallbackHelper$DelegateDispatchHandler;->this$0:Lcom/google/android/music/utils/MusicCallbackHelper;

    .line 28
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 34
    .local v0, r:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 35
    iget-object v1, p0, Lcom/google/android/music/utils/MusicCallbackHelper$DelegateDispatchHandler;->this$0:Lcom/google/android/music/utils/MusicCallbackHelper;

    #getter for: Lcom/google/android/music/utils/MusicCallbackHelper;->mCancellableRunnables:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/google/android/music/utils/MusicCallbackHelper;->access$000(Lcom/google/android/music/utils/MusicCallbackHelper;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 36
    :try_start_e
    iget-object v1, p0, Lcom/google/android/music/utils/MusicCallbackHelper$DelegateDispatchHandler;->this$0:Lcom/google/android/music/utils/MusicCallbackHelper;

    #getter for: Lcom/google/android/music/utils/MusicCallbackHelper;->mCancellableRunnables:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/google/android/music/utils/MusicCallbackHelper;->access$000(Lcom/google/android/music/utils/MusicCallbackHelper;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 37
    monitor-exit v2

    .line 38
    return-void

    .line 37
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw v1
.end method
