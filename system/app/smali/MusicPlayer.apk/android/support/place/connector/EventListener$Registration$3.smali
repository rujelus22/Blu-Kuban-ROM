.class Landroid/support/place/connector/EventListener$Registration$3;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Landroid/support/place/rpc/RpcErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/connector/EventListener$Registration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


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
    .parameter "err"

    .prologue
    .line 169
    iget-object v1, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v2, v1, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    monitor-enter v2

    .line 170
    :try_start_5
    iget-object v1, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #getter for: Landroid/support/place/connector/EventListener$Registration;->mRunning:Z
    invoke-static {v1}, Landroid/support/place/connector/EventListener$Registration;->access$200(Landroid/support/place/connector/EventListener$Registration;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 171
    monitor-exit v2

    .line 193
    :goto_e
    return-void

    .line 173
    :cond_f
    iget-object v1, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #getter for: Landroid/support/place/connector/EventListener$Registration;->mRegisterErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Landroid/support/place/connector/EventListener$Registration;->access$800(Landroid/support/place/connector/EventListener$Registration;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_8b

    .line 174
    const-string v1, "aah.EventListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error registering listener me="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v4, v4, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;
    invoke-static {v4}, Landroid/support/place/connector/EventListener;->access$1000(Landroid/support/place/connector/EventListener;)Landroid/support/place/rpc/EndpointInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " err="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/support/place/rpc/RpcError;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (1 STATUS_ERROR_LOCAL)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v1, "aah.EventListener"

    const-string v3, "Switching to PANIC re-registration mode"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v1, v1, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mRegistrationHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/support/place/connector/EventListener;->access$000(Landroid/support/place/connector/EventListener;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #getter for: Landroid/support/place/connector/EventListener$Registration;->mTask:Ljava/lang/Runnable;
    invoke-static {v3}, Landroid/support/place/connector/EventListener$Registration;->access$900(Landroid/support/place/connector/EventListener$Registration;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    iget-object v1, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v1, v1, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mRegistrationHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/support/place/connector/EventListener;->access$000(Landroid/support/place/connector/EventListener;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #getter for: Landroid/support/place/connector/EventListener$Registration;->mTask:Ljava/lang/Runnable;
    invoke-static {v3}, Landroid/support/place/connector/EventListener$Registration;->access$900(Landroid/support/place/connector/EventListener$Registration;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    iget-object v1, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v1, v1, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mListener:Landroid/support/place/connector/EventListener$Listener;
    invoke-static {v1}, Landroid/support/place/connector/EventListener;->access$1100(Landroid/support/place/connector/EventListener;)Landroid/support/place/connector/EventListener$Listener;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/place/connector/EventListener$Listener;->onError(Landroid/support/place/rpc/RpcError;)V

    .line 192
    :goto_86
    monitor-exit v2

    goto :goto_e

    :catchall_88
    move-exception v1

    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_5 .. :try_end_8a} :catchall_88

    throw v1

    .line 181
    :cond_8b
    :try_start_8b
    const-string v1, "aah.EventListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnecting listener me="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v4, v4, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;
    invoke-static {v4}, Landroid/support/place/connector/EventListener;->access$1000(Landroid/support/place/connector/EventListener;)Landroid/support/place/rpc/EndpointInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " err="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/support/place/rpc/RpcError;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (1 STATUS_ERROR_LOCAL)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Landroid/support/place/connector/EventListener$Registration$3$1;

    invoke-direct {v0, p0}, Landroid/support/place/connector/EventListener$Registration$3$1;-><init>(Landroid/support/place/connector/EventListener$Registration$3;)V

    .line 189
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v1, v1, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mRegistrationHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/support/place/connector/EventListener;->access$000(Landroid/support/place/connector/EventListener;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v3, v3, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    :try_end_dc
    .catchall {:try_start_8b .. :try_end_dc} :catchall_88

    goto :goto_86
.end method
