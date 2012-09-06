.class Landroid/support/place/api/tts/TtsService$Presenter;
.super Landroid/support/place/connector/EventListener;
.source "SourceFile"


# instance fields
.field private _listener:Landroid/support/place/api/tts/TtsService$Listener;

.field final synthetic this$0:Landroid/support/place/api/tts/TtsService;


# direct methods
.method public constructor <init>(Landroid/support/place/api/tts/TtsService;Landroid/support/place/connector/Broker;Landroid/support/place/api/tts/TtsService$Listener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Landroid/support/place/api/tts/TtsService$Presenter;->this$0:Landroid/support/place/api/tts/TtsService;

    .line 95
    invoke-direct {p0, p2, p3}, Landroid/support/place/connector/EventListener;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/connector/EventListener$Listener;)V

    .line 96
    iput-object p3, p0, Landroid/support/place/api/tts/TtsService$Presenter;->_listener:Landroid/support/place/api/tts/TtsService$Listener;

    .line 97
    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 101
    const-string v1, "onSpeak"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 104
    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Landroid/support/place/api/tts/TtsService$Presenter;->_listener:Landroid/support/place/api/tts/TtsService$Listener;

    invoke-virtual {v1, v0, p3}, Landroid/support/place/api/tts/TtsService$Listener;->onSpeak(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    .line 115
    :goto_18
    const/4 v0, 0x0

    :goto_19
    return-object v0

    .line 107
    :cond_1a
    const-string v1, "onStatusChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 109
    const-string v1, "status"

    sget-object v2, Landroid/support/place/api/tts/TtsStatus;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/api/tts/TtsStatus;

    .line 110
    iget-object v1, p0, Landroid/support/place/api/tts/TtsService$Presenter;->_listener:Landroid/support/place/api/tts/TtsService$Listener;

    invoke-virtual {v1, v0, p3}, Landroid/support/place/api/tts/TtsService$Listener;->onStatusChanged(Landroid/support/place/api/tts/TtsStatus;Landroid/support/place/rpc/RpcContext;)V

    goto :goto_18

    .line 113
    :cond_32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/EventListener;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_19
.end method
