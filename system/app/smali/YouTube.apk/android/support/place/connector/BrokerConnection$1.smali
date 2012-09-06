.class Landroid/support/place/connector/BrokerConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Landroid/support/place/connector/BrokerConnection;


# direct methods
.method constructor <init>(Landroid/support/place/connector/BrokerConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    invoke-virtual {v0, p2}, Landroid/support/place/connector/BrokerConnection;->getBrokerService(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerService;

    move-result-object v0

    .line 212
    if-nez v0, :cond_10

    .line 213
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 228
    :goto_f
    return-void

    .line 219
    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    new-instance v2, Landroid/support/place/connector/BrokerConnection$Callback;

    iget-object v3, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    invoke-direct {v2, v3}, Landroid/support/place/connector/BrokerConnection$Callback;-><init>(Landroid/support/place/connector/BrokerConnection;)V

    iput-object v2, v1, Landroid/support/place/connector/BrokerConnection;->mBrokerConnection:Landroid/support/place/connector/IBrokerConnection$Stub;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BrokerConnection(pid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    iget-object v2, v2, Landroid/support/place/connector/BrokerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    iget-object v2, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    iget-object v2, v2, Landroid/support/place/connector/BrokerConnection;->mBrokerConnection:Landroid/support/place/connector/IBrokerConnection$Stub;

    invoke-interface {v0, v2, v1}, Landroid/support/place/connector/IBrokerService;->registerCallback(Landroid/support/place/connector/IBrokerConnection;Ljava/lang/String;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_51} :catch_56

    .line 227
    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    iput-object v0, v1, Landroid/support/place/connector/BrokerConnection;->mBrokerService:Landroid/support/place/connector/IBrokerService;

    goto :goto_f

    .line 224
    :catch_56
    move-exception v0

    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_f
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    #calls: Landroid/support/place/connector/BrokerConnection;->handleBrokerServiceDisconnected()V
    invoke-static {v0}, Landroid/support/place/connector/BrokerConnection;->access$100(Landroid/support/place/connector/BrokerConnection;)V

    .line 233
    return-void
.end method
