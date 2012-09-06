.class Landroid/support/place/connector/BrokerConnection$Callback;
.super Landroid/support/place/connector/IBrokerConnection$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroid/support/place/connector/BrokerConnection;


# direct methods
.method constructor <init>(Landroid/support/place/connector/BrokerConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Landroid/support/place/connector/BrokerConnection$Callback;->this$0:Landroid/support/place/connector/BrokerConnection;

    invoke-direct {p0}, Landroid/support/place/connector/IBrokerConnection$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendBrokerConnected(Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection$Callback;->this$0:Landroid/support/place/connector/BrokerConnection;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/place/connector/BrokerConnection$Callback$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/place/connector/BrokerConnection$Callback$1;-><init>(Landroid/support/place/connector/BrokerConnection$Callback;Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void
.end method

.method public sendBrokerDisconnected()V
    .registers 3

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection$Callback;->this$0:Landroid/support/place/connector/BrokerConnection;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/place/connector/BrokerConnection$Callback$4;

    invoke-direct {v1, p0}, Landroid/support/place/connector/BrokerConnection$Callback$4;-><init>(Landroid/support/place/connector/BrokerConnection$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    return-void
.end method

.method public sendPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection$Callback;->this$0:Landroid/support/place/connector/BrokerConnection;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/place/connector/BrokerConnection$Callback$2;

    invoke-direct {v1, p0, p1}, Landroid/support/place/connector/BrokerConnection$Callback$2;-><init>(Landroid/support/place/connector/BrokerConnection$Callback;Landroid/support/place/connector/PlaceInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void
.end method

.method public sendPlaceDisconnected()V
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection$Callback;->this$0:Landroid/support/place/connector/BrokerConnection;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/place/connector/BrokerConnection$Callback$3;

    invoke-direct {v1, p0}, Landroid/support/place/connector/BrokerConnection$Callback$3;-><init>(Landroid/support/place/connector/BrokerConnection$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    return-void
.end method
