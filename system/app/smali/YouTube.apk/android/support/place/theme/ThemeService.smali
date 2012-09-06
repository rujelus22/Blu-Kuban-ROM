.class public Landroid/support/place/theme/ThemeService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;

.field private _presenter:Landroid/support/place/theme/ThemeService$Presenter;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Landroid/support/place/theme/ThemeService;->_broker:Landroid/support/place/connector/Broker;

    .line 13
    iput-object p2, p0, Landroid/support/place/theme/ThemeService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    .line 14
    return-void
.end method


# virtual methods
.method public getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Landroid/support/place/theme/ThemeService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method public getTheme(Landroid/support/place/theme/ThemeService$OnGetTheme;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 78
    iget-object v0, p0, Landroid/support/place/theme/ThemeService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/theme/ThemeService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getTheme"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/theme/ThemeService$_ResultDispatcher;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/theme/ThemeService$_ResultDispatcher;-><init>(Landroid/support/place/theme/ThemeService;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 79
    return-void
.end method

.method public getThemeEngines(Landroid/support/place/theme/ThemeService$OnGetThemeEngines;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 87
    iget-object v0, p0, Landroid/support/place/theme/ThemeService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/theme/ThemeService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getThemeEngines"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/theme/ThemeService$_ResultDispatcher;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/theme/ThemeService$_ResultDispatcher;-><init>(Landroid/support/place/theme/ThemeService;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 88
    return-void
.end method

.method public setTheme(Landroid/support/place/theme/Theme;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 68
    const-string v0, "theme"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 69
    iget-object v0, p0, Landroid/support/place/theme/ThemeService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/theme/ThemeService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setTheme"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 70
    return-void
.end method

.method public startListening(Landroid/support/place/theme/ThemeService$Listener;)V
    .registers 4
    .parameter

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/support/place/theme/ThemeService;->stopListening()V

    .line 172
    new-instance v0, Landroid/support/place/theme/ThemeService$Presenter;

    iget-object v1, p0, Landroid/support/place/theme/ThemeService;->_broker:Landroid/support/place/connector/Broker;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/place/theme/ThemeService$Presenter;-><init>(Landroid/support/place/theme/ThemeService;Landroid/support/place/connector/Broker;Landroid/support/place/theme/ThemeService$Listener;)V

    iput-object v0, p0, Landroid/support/place/theme/ThemeService;->_presenter:Landroid/support/place/theme/ThemeService$Presenter;

    .line 173
    iget-object v0, p0, Landroid/support/place/theme/ThemeService;->_presenter:Landroid/support/place/theme/ThemeService$Presenter;

    iget-object v1, p0, Landroid/support/place/theme/ThemeService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Landroid/support/place/theme/ThemeService$Presenter;->startListening(Landroid/support/place/rpc/EndpointInfo;)V

    .line 174
    return-void
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/place/theme/ThemeService;->_presenter:Landroid/support/place/theme/ThemeService$Presenter;

    if-eqz v0, :cond_c

    .line 178
    iget-object v0, p0, Landroid/support/place/theme/ThemeService;->_presenter:Landroid/support/place/theme/ThemeService$Presenter;

    invoke-virtual {v0}, Landroid/support/place/theme/ThemeService$Presenter;->stopListening()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/theme/ThemeService;->_presenter:Landroid/support/place/theme/ThemeService$Presenter;

    .line 181
    :cond_c
    return-void
.end method
