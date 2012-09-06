.class Landroid/support/place/connector/BrokerConnection$Callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/place/connector/BrokerConnection$Callback;

.field final synthetic val$brokerConnector:Landroid/support/place/rpc/EndpointInfo;

.field final synthetic val$brokerService:Landroid/support/place/connector/IBrokerService;


# direct methods
.method constructor <init>(Landroid/support/place/connector/BrokerConnection$Callback;Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Landroid/support/place/connector/BrokerConnection$Callback$1;->this$1:Landroid/support/place/connector/BrokerConnection$Callback;

    iput-object p2, p0, Landroid/support/place/connector/BrokerConnection$Callback$1;->val$brokerService:Landroid/support/place/connector/IBrokerService;

    iput-object p3, p0, Landroid/support/place/connector/BrokerConnection$Callback$1;->val$brokerConnector:Landroid/support/place/rpc/EndpointInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 258
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection$Callback$1;->this$1:Landroid/support/place/connector/BrokerConnection$Callback;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$Callback;->this$0:Landroid/support/place/connector/BrokerConnection;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection$Callback$1;->val$brokerService:Landroid/support/place/connector/IBrokerService;

    iget-object v2, p0, Landroid/support/place/connector/BrokerConnection$Callback$1;->val$brokerConnector:Landroid/support/place/rpc/EndpointInfo;

    #calls: Landroid/support/place/connector/BrokerConnection;->handleBrokerConnected(Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;)V
    invoke-static {v0, v1, v2}, Landroid/support/place/connector/BrokerConnection;->access$200(Landroid/support/place/connector/BrokerConnection;Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;)V

    .line 259
    return-void
.end method
