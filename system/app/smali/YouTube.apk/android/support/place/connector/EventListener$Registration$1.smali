.class Landroid/support/place/connector/EventListener$Registration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/place/connector/EventListener$Registration;


# direct methods
.method constructor <init>(Landroid/support/place/connector/EventListener$Registration;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Landroid/support/place/connector/EventListener$Registration$1;->this$1:Landroid/support/place/connector/EventListener$Registration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration$1;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v6, v0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    monitor-enter v6

    .line 142
    :try_start_5
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration$1;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #getter for: Landroid/support/place/connector/EventListener$Registration;->mRunning:Z
    invoke-static {v0}, Landroid/support/place/connector/EventListener$Registration;->access$200(Landroid/support/place/connector/EventListener$Registration;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 143
    monitor-exit v6

    .line 151
    :goto_e
    return-void

    .line 145
    :cond_f
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration$1;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v0, v0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    invoke-virtual {v0}, Landroid/support/place/connector/EventListener;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 146
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration$1;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v0, v0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    invoke-virtual {v0}, Landroid/support/place/connector/EventListener;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/EventListener$Registration$1;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #getter for: Landroid/support/place/connector/EventListener$Registration;->mEventSource:Landroid/support/place/rpc/EndpointInfo;
    invoke-static {v1}, Landroid/support/place/connector/EventListener$Registration;->access$300(Landroid/support/place/connector/EventListener$Registration;)Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    const-string v2, "registerListener"

    iget-object v3, p0, Landroid/support/place/connector/EventListener$Registration$1;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v3, v3, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mRegisterPayload:[B
    invoke-static {v3}, Landroid/support/place/connector/EventListener;->access$400(Landroid/support/place/connector/EventListener;)[B

    move-result-object v3

    iget-object v4, p0, Landroid/support/place/connector/EventListener$Registration$1;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #getter for: Landroid/support/place/connector/EventListener$Registration;->mResultHandler:Landroid/support/place/rpc/RpcResultHandler;
    invoke-static {v4}, Landroid/support/place/connector/EventListener$Registration;->access$500(Landroid/support/place/connector/EventListener$Registration;)Landroid/support/place/rpc/RpcResultHandler;

    move-result-object v4

    iget-object v5, p0, Landroid/support/place/connector/EventListener$Registration$1;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #getter for: Landroid/support/place/connector/EventListener$Registration;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;
    invoke-static {v5}, Landroid/support/place/connector/EventListener$Registration;->access$600(Landroid/support/place/connector/EventListener$Registration;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 151
    :goto_44
    monitor-exit v6
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_46

    goto :goto_e

    :catchall_46
    move-exception v0

    monitor-exit v6

    throw v0

    .line 149
    :cond_49
    :try_start_49
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration$1;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #calls: Landroid/support/place/connector/EventListener$Registration;->handleError()V
    invoke-static {v0}, Landroid/support/place/connector/EventListener$Registration;->access$700(Landroid/support/place/connector/EventListener$Registration;)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_46

    goto :goto_44
.end method
