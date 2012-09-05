.class public Lcom/google/android/talk/videochat/CallTaskDispatcher;
.super Ljava/lang/Object;
.source "CallTaskDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;
    }
.end annotation


# instance fields
.field private final mCallTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mCallTaskQueue:Ljava/util/Queue;

    .line 36
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/videochat/CallTaskDispatcher;Lcom/google/android/videochat/VideoChatService$HardBinder;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CallTaskDispatcher;->onVideoChatServiceBound(Lcom/google/android/videochat/VideoChatService$HardBinder;)V

    return-void
.end method

.method private bindVideoChatService()V
    .registers 6

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/videochat/VideoChatServiceBinder;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/talk/videochat/VideoChatOutputReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/videochat/VideoChatServiceBinder;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    .line 71
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    new-instance v1, Lcom/google/android/talk/videochat/CallTaskDispatcher$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/CallTaskDispatcher$1;-><init>(Lcom/google/android/talk/videochat/CallTaskDispatcher;)V

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/VideoChatServiceBinder;->bind(Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;)V

    .line 77
    return-void
.end method

.method private onVideoChatServiceBound(Lcom/google/android/videochat/VideoChatService$HardBinder;)V
    .registers 6
    .parameter "service"

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/google/android/videochat/VideoChatService$HardBinder;->getCallSession()Lcom/google/android/videochat/CallSession;

    move-result-object v0

    .line 81
    .local v0, session:Lcom/google/android/videochat/CallSession;
    if-eqz v0, :cond_2a

    .line 82
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mCallTaskQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 84
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mCallTaskQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    .line 85
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mCallTaskQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;

    .line 86
    .local v1, task:Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;
    invoke-interface {v1, v0}, Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;->runTask(Lcom/google/android/videochat/CallSession;)V

    goto :goto_9

    .line 91
    .end local v1           #task:Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_1d

    throw v2

    .line 89
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    invoke-virtual {v2}, Lcom/google/android/videochat/VideoChatServiceBinder;->unbind()V

    .line 90
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    .line 91
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_1d

    .line 95
    :goto_29
    return-void

    .line 93
    :cond_2a
    const-string v2, "Talk:CallTaskDispatcher"

    const-string v3, "Bound to service, but call session is null!!!"

    invoke-static {v2, v3}, Lcom/google/android/talk/TalkApp;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method


# virtual methods
.method public postCallTask(Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;)V
    .registers 4
    .parameter "task"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mCallTaskQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 57
    :try_start_3
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mCallTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 58
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallTaskDispatcher;->bindVideoChatService()V

    .line 60
    :cond_e
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mCallTaskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method
