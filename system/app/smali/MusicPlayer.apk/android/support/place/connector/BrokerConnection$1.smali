.class Landroid/support/place/connector/BrokerConnection$1;
.super Ljava/lang/Object;
.source "BrokerConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/connector/BrokerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


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
    .registers 9
    .parameter "name"
    .parameter "service"

    .prologue
    .line 211
    iget-object v3, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    invoke-virtual {v3, p2}, Landroid/support/place/connector/BrokerConnection;->getBrokerService(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerService;

    move-result-object v0

    .line 212
    .local v0, brokerService:Landroid/support/place/connector/IBrokerService;
    if-nez v0, :cond_10

    .line 213
    iget-object v3, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    iget-object v3, v3, Landroid/support/place/connector/BrokerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 228
    :goto_f
    return-void

    .line 219
    :cond_10
    :try_start_10
    iget-object v3, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    new-instance v4, Landroid/support/place/connector/BrokerConnection$Callback;

    iget-object v5, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    invoke-direct {v4, v5}, Landroid/support/place/connector/BrokerConnection$Callback;-><init>(Landroid/support/place/connector/BrokerConnection;)V

    iput-object v4, v3, Landroid/support/place/connector/BrokerConnection;->mBrokerConnection:Landroid/support/place/connector/IBrokerConnection$Stub;

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BrokerConnection(pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " context="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    iget-object v4, v4, Landroid/support/place/connector/BrokerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, debug:Ljava/lang/String;
    iget-object v3, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    iget-object v3, v3, Landroid/support/place/connector/BrokerConnection;->mBrokerConnection:Landroid/support/place/connector/IBrokerConnection$Stub;

    invoke-interface {v0, v3, v1}, Landroid/support/place/connector/IBrokerService;->registerCallback(Landroid/support/place/connector/IBrokerConnection;Ljava/lang/String;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_55} :catch_5a

    .line 227
    iget-object v3, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    iput-object v0, v3, Landroid/support/place/connector/BrokerConnection;->mBrokerService:Landroid/support/place/connector/IBrokerService;

    goto :goto_f

    .line 223
    .end local v1           #debug:Ljava/lang/String;
    :catch_5a
    move-exception v2

    .line 224
    .local v2, ex:Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    iget-object v3, v3, Landroid/support/place/connector/BrokerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_f
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection$1;->this$0:Landroid/support/place/connector/BrokerConnection;

    #calls: Landroid/support/place/connector/BrokerConnection;->handleBrokerServiceDisconnected()V
    invoke-static {v0}, Landroid/support/place/connector/BrokerConnection;->access$100(Landroid/support/place/connector/BrokerConnection;)V

    .line 233
    return-void
.end method
