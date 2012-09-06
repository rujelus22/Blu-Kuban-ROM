.class public Landroid/support/place/api/tts/TtsService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;

.field private _presenter:Landroid/support/place/api/tts/TtsService$Presenter;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Landroid/support/place/api/tts/TtsService;->_broker:Landroid/support/place/connector/Broker;

    .line 13
    iput-object p2, p0, Landroid/support/place/api/tts/TtsService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    .line 14
    return-void
.end method


# virtual methods
.method public getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Landroid/support/place/api/tts/TtsService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method public speak(Ljava/lang/String;ILandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 76
    const-string v0, "message"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "color"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 78
    iget-object v0, p0, Landroid/support/place/api/tts/TtsService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/api/tts/TtsService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "speak"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 79
    return-void
.end method

.method public startListening(Landroid/support/place/api/tts/TtsService$Listener;)V
    .registers 4
    .parameter

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/support/place/api/tts/TtsService;->stopListening()V

    .line 127
    new-instance v0, Landroid/support/place/api/tts/TtsService$Presenter;

    iget-object v1, p0, Landroid/support/place/api/tts/TtsService;->_broker:Landroid/support/place/connector/Broker;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/place/api/tts/TtsService$Presenter;-><init>(Landroid/support/place/api/tts/TtsService;Landroid/support/place/connector/Broker;Landroid/support/place/api/tts/TtsService$Listener;)V

    iput-object v0, p0, Landroid/support/place/api/tts/TtsService;->_presenter:Landroid/support/place/api/tts/TtsService$Presenter;

    .line 128
    iget-object v0, p0, Landroid/support/place/api/tts/TtsService;->_presenter:Landroid/support/place/api/tts/TtsService$Presenter;

    iget-object v1, p0, Landroid/support/place/api/tts/TtsService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Landroid/support/place/api/tts/TtsService$Presenter;->startListening(Landroid/support/place/rpc/EndpointInfo;)V

    .line 129
    return-void
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/place/api/tts/TtsService;->_presenter:Landroid/support/place/api/tts/TtsService$Presenter;

    if-eqz v0, :cond_c

    .line 133
    iget-object v0, p0, Landroid/support/place/api/tts/TtsService;->_presenter:Landroid/support/place/api/tts/TtsService$Presenter;

    invoke-virtual {v0}, Landroid/support/place/api/tts/TtsService$Presenter;->stopListening()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/api/tts/TtsService;->_presenter:Landroid/support/place/api/tts/TtsService$Presenter;

    .line 136
    :cond_c
    return-void
.end method
