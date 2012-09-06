.class Landroid/support/place/api/broker/PlaceConnectHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/connector/security/SecurityService$OnAuthenticate;


# instance fields
.field final synthetic this$0:Landroid/support/place/api/broker/PlaceConnectHelper;

.field final synthetic val$placeInfo:Landroid/support/place/connector/PlaceInfo;


# direct methods
.method constructor <init>(Landroid/support/place/api/broker/PlaceConnectHelper;Landroid/support/place/connector/PlaceInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Landroid/support/place/api/broker/PlaceConnectHelper$1;->this$0:Landroid/support/place/api/broker/PlaceConnectHelper;

    iput-object p2, p0, Landroid/support/place/api/broker/PlaceConnectHelper$1;->val$placeInfo:Landroid/support/place/connector/PlaceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticate(Z)V
    .registers 6
    .parameter

    .prologue
    .line 165
    if-eqz p1, :cond_12

    .line 166
    iget-object v0, p0, Landroid/support/place/api/broker/PlaceConnectHelper$1;->this$0:Landroid/support/place/api/broker/PlaceConnectHelper;

    #getter for: Landroid/support/place/api/broker/PlaceConnectHelper;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0}, Landroid/support/place/api/broker/PlaceConnectHelper;->access$200(Landroid/support/place/api/broker/PlaceConnectHelper;)Landroid/support/place/connector/Broker;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/api/broker/PlaceConnectHelper$1;->val$placeInfo:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v1}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/place/connector/Broker;->setPlaceId(Ljava/lang/String;)V

    .line 172
    :goto_11
    return-void

    .line 168
    :cond_12
    new-instance v0, Landroid/support/place/rpc/RpcError;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to authenticate place: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/place/api/broker/PlaceConnectHelper$1;->val$placeInfo:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/place/rpc/RpcError;-><init>(ILjava/lang/String;)V

    .line 170
    iget-object v1, p0, Landroid/support/place/api/broker/PlaceConnectHelper$1;->this$0:Landroid/support/place/api/broker/PlaceConnectHelper;

    #calls: Landroid/support/place/api/broker/PlaceConnectHelper;->postError(Landroid/support/place/rpc/RpcError;)V
    invoke-static {v1, v0}, Landroid/support/place/api/broker/PlaceConnectHelper;->access$000(Landroid/support/place/api/broker/PlaceConnectHelper;Landroid/support/place/rpc/RpcError;)V

    goto :goto_11
.end method
