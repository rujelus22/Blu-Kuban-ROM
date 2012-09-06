.class Landroid/support/place/api/broker/BrokerManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcErrorHandler;


# static fields
.field private static final MAX_RETRIES:I = 0x5


# instance fields
.field private mRetries:I

.field final synthetic this$0:Landroid/support/place/api/broker/BrokerManager;

.field final synthetic val$errorHandler:Landroid/support/place/rpc/RpcErrorHandler;

.field final synthetic val$isAuthorized:Z

.field final synthetic val$mHelper:Landroid/support/place/api/broker/PlaceConnectHelper;

.field final synthetic val$placeInfo:Landroid/support/place/connector/PlaceInfo;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/place/api/broker/BrokerManager;Landroid/support/place/api/broker/PlaceConnectHelper;Landroid/support/place/connector/PlaceInfo;Ljava/lang/String;ZLandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 879
    iput-object p1, p0, Landroid/support/place/api/broker/BrokerManager$6;->this$0:Landroid/support/place/api/broker/BrokerManager;

    iput-object p2, p0, Landroid/support/place/api/broker/BrokerManager$6;->val$mHelper:Landroid/support/place/api/broker/PlaceConnectHelper;

    iput-object p3, p0, Landroid/support/place/api/broker/BrokerManager$6;->val$placeInfo:Landroid/support/place/connector/PlaceInfo;

    iput-object p4, p0, Landroid/support/place/api/broker/BrokerManager$6;->val$userId:Ljava/lang/String;

    iput-boolean p5, p0, Landroid/support/place/api/broker/BrokerManager$6;->val$isAuthorized:Z

    iput-object p6, p0, Landroid/support/place/api/broker/BrokerManager$6;->val$errorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/place/api/broker/BrokerManager$6;->mRetries:I

    return-void
.end method


# virtual methods
.method public onError(Landroid/support/place/rpc/RpcError;)V
    .registers 6
    .parameter

    .prologue
    .line 885
    const-string v0, "aah-BrokerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RpcError encountered trying to register with place as guest."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/support/place/rpc/RpcError;->logs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget v0, p0, Landroid/support/place/api/broker/BrokerManager$6;->mRetries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/place/api/broker/BrokerManager$6;->mRetries:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2b

    .line 888
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$6;->val$mHelper:Landroid/support/place/api/broker/PlaceConnectHelper;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$6;->val$placeInfo:Landroid/support/place/connector/PlaceInfo;

    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager$6;->val$userId:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/support/place/api/broker/BrokerManager$6;->val$isAuthorized:Z

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/support/place/api/broker/PlaceConnectHelper;->connect(Landroid/support/place/connector/PlaceInfo;Ljava/lang/String;ZLandroid/support/place/rpc/RpcErrorHandler;)Z

    .line 892
    :goto_2a
    return-void

    .line 890
    :cond_2b
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$6;->val$errorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-interface {v0, p1}, Landroid/support/place/rpc/RpcErrorHandler;->onError(Landroid/support/place/rpc/RpcError;)V

    goto :goto_2a
.end method
