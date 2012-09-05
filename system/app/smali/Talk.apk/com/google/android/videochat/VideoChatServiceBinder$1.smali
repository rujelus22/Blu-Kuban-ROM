.class Lcom/google/android/videochat/VideoChatServiceBinder$1;
.super Ljava/lang/Object;
.source "VideoChatServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/VideoChatServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/VideoChatServiceBinder;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/VideoChatServiceBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/videochat/VideoChatServiceBinder$1;->this$0:Lcom/google/android/videochat/VideoChatServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 65
    move-object v0, p2

    check-cast v0, Lcom/google/android/videochat/VideoChatService$HardBinder;

    .line 66
    .local v0, s:Lcom/google/android/videochat/VideoChatService$HardBinder;
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatServiceBinder$1;->this$0:Lcom/google/android/videochat/VideoChatServiceBinder;

    #getter for: Lcom/google/android/videochat/VideoChatServiceBinder;->mOutgoingStanzaReceiverComponent:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/google/android/videochat/VideoChatServiceBinder;->access$000(Lcom/google/android/videochat/VideoChatServiceBinder;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/VideoChatService$HardBinder;->setOutputReceiverComponent(Landroid/content/ComponentName;)V

    .line 67
    iget-object v2, p0, Lcom/google/android/videochat/VideoChatServiceBinder$1;->this$0:Lcom/google/android/videochat/VideoChatServiceBinder;

    monitor-enter v2

    .line 68
    :try_start_f
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatServiceBinder$1;->this$0:Lcom/google/android/videochat/VideoChatServiceBinder;

    #getter for: Lcom/google/android/videochat/VideoChatServiceBinder;->mServiceBoundCallback:Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;
    invoke-static {v1}, Lcom/google/android/videochat/VideoChatServiceBinder;->access$100(Lcom/google/android/videochat/VideoChatServiceBinder;)Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 69
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatServiceBinder$1;->this$0:Lcom/google/android/videochat/VideoChatServiceBinder;

    #getter for: Lcom/google/android/videochat/VideoChatServiceBinder;->mServiceBoundCallback:Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;
    invoke-static {v1}, Lcom/google/android/videochat/VideoChatServiceBinder;->access$100(Lcom/google/android/videochat/VideoChatServiceBinder;)Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;->onServiceBound(Lcom/google/android/videochat/VideoChatService$HardBinder;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatServiceBinder$1;->this$0:Lcom/google/android/videochat/VideoChatServiceBinder;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/videochat/VideoChatServiceBinder;->mServiceBoundCallback:Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;
    invoke-static {v1, v3}, Lcom/google/android/videochat/VideoChatServiceBinder;->access$102(Lcom/google/android/videochat/VideoChatServiceBinder;Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;)Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;

    .line 72
    :cond_26
    monitor-exit v2

    .line 73
    return-void

    .line 72
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 76
    return-void
.end method
