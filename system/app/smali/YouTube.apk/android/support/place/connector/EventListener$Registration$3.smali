.class Landroid/support/place/connector/EventListener$Registration$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcErrorHandler;


# instance fields
.field final synthetic this$1:Landroid/support/place/connector/EventListener$Registration;


# direct methods
.method constructor <init>(Landroid/support/place/connector/EventListener$Registration;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/support/place/rpc/RpcError;)V
    .registers 10
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v1, v0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    monitor-enter v1

    .line 170
    :try_start_5
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #getter for: Landroid/support/place/connector/EventListener$Registration;->mRunning:Z
    invoke-static {v0}, Landroid/support/place/connector/EventListener$Registration;->access$200(Landroid/support/place/connector/EventListener$Registration;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 171
    monitor-exit v1

    .line 192
    :goto_e
    return-void

    .line 173
    :cond_f
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #getter for: Landroid/support/place/connector/EventListener$Registration;->mRegisterErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Landroid/support/place/connector/EventListener$Registration;->access$800(Landroid/support/place/connector/EventListener$Registration;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_87

    .line 174
    const-string v0, "aah.EventListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error registering listener me="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v3, v3, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;
    invoke-static {v3}, Landroid/support/place/connector/EventListener;->access$1000(Landroid/support/place/connector/EventListener;)Landroid/support/place/rpc/EndpointInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/support/place/rpc/RpcError;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (1 STATUS_ERROR_LOCAL)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v0, "aah.EventListener"

    const-string v2, "Switching to PANIC re-registration mode"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v0, v0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mRegistrationHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/place/connector/EventListener;->access$000(Landroid/support/place/connector/EventListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #getter for: Landroid/support/place/connector/EventListener$Registration;->mTask:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/support/place/connector/EventListener$Registration;->access$900(Landroid/support/place/connector/EventListener$Registration;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v0, v0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mRegistrationHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/place/connector/EventListener;->access$000(Landroid/support/place/connector/EventListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #getter for: Landroid/support/place/connector/EventListener$Registration;->mTask:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/support/place/connector/EventListener$Registration;->access$900(Landroid/support/place/connector/EventListener$Registration;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v0, v0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mListener:Landroid/support/place/connector/EventListener$Listener;
    invoke-static {v0}, Landroid/support/place/connector/EventListener;->access$1100(Landroid/support/place/connector/EventListener;)Landroid/support/place/connector/EventListener$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/place/connector/EventListener$Listener;->onError(Landroid/support/place/rpc/RpcError;)V

    .line 192
    :goto_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_5 .. :try_end_83} :catchall_84

    goto :goto_e

    :catchall_84
    move-exception v0

    monitor-exit v1

    throw v0

    .line 181
    :cond_87
    :try_start_87
    const-string v0, "aah.EventListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Disconnecting listener me="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v3, v3, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;
    invoke-static {v3}, Landroid/support/place/connector/EventListener;->access$1000(Landroid/support/place/connector/EventListener;)Landroid/support/place/rpc/EndpointInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/support/place/rpc/RpcError;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (1 STATUS_ERROR_LOCAL)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Landroid/support/place/connector/EventListener$Registration$3$1;

    invoke-direct {v0, p0}, Landroid/support/place/connector/EventListener$Registration$3$1;-><init>(Landroid/support/place/connector/EventListener$Registration$3;)V

    .line 189
    iget-object v2, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v2, v2, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mRegistrationHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/support/place/connector/EventListener;->access$000(Landroid/support/place/connector/EventListener;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v3, v3, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    :try_end_d4
    .catchall {:try_start_87 .. :try_end_d4} :catchall_84

    goto :goto_82
.end method
