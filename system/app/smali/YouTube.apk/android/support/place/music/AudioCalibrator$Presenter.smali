.class Landroid/support/place/music/AudioCalibrator$Presenter;
.super Landroid/support/place/connector/EventListener;
.source "SourceFile"


# instance fields
.field private _listener:Landroid/support/place/music/AudioCalibrator$Listener;

.field final synthetic this$0:Landroid/support/place/music/AudioCalibrator;


# direct methods
.method public constructor <init>(Landroid/support/place/music/AudioCalibrator;Landroid/support/place/connector/Broker;Landroid/support/place/music/AudioCalibrator$Listener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Landroid/support/place/music/AudioCalibrator$Presenter;->this$0:Landroid/support/place/music/AudioCalibrator;

    .line 172
    invoke-direct {p0, p2, p3}, Landroid/support/place/connector/EventListener;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/connector/EventListener$Listener;)V

    .line 173
    iput-object p3, p0, Landroid/support/place/music/AudioCalibrator$Presenter;->_listener:Landroid/support/place/music/AudioCalibrator$Listener;

    .line 174
    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 178
    const-string v1, "onCalibrationStateChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 181
    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 182
    iget-object v1, p0, Landroid/support/place/music/AudioCalibrator$Presenter;->_listener:Landroid/support/place/music/AudioCalibrator$Listener;

    invoke-virtual {v1, v0, p3}, Landroid/support/place/music/AudioCalibrator$Listener;->onCalibrationStateChanged(ILandroid/support/place/rpc/RpcContext;)V

    .line 187
    const/4 v0, 0x0

    :goto_19
    return-object v0

    .line 185
    :cond_1a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/EventListener;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_19
.end method
