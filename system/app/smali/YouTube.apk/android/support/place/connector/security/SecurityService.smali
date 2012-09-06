.class public Landroid/support/place/connector/security/SecurityService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Landroid/support/place/connector/security/SecurityService;->_broker:Landroid/support/place/connector/Broker;

    .line 13
    iput-object p2, p0, Landroid/support/place/connector/security/SecurityService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    .line 14
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/connector/security/SecurityService$OnAuthenticate;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 175
    const-string v0, "authType"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "args"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 177
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/security/SecurityService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "authenticate"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5, p3}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;-><init>(Landroid/support/place/connector/security/SecurityService;ILjava/lang/Object;)V

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 178
    return-void
.end method

.method public banUser(Landroid/support/place/connector/security/Account;Landroid/support/place/connector/security/SecurityService$OnBanUser;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 196
    const-string v0, "account"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 197
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/security/SecurityService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "banUser"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;-><init>(Landroid/support/place/connector/security/SecurityService;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 198
    return-void
.end method

.method public configureAccountManager(Ljava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/connector/security/SecurityService$OnConfigureAccountManager;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 231
    const-string v0, "authType"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "args"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 233
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/security/SecurityService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "configureAccountManager"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;

    const/4 v5, 0x7

    invoke-direct {v4, p0, v5, p3}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;-><init>(Landroid/support/place/connector/security/SecurityService;ILjava/lang/Object;)V

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 234
    return-void
.end method

.method public enableGuestMode(ZLandroid/support/place/connector/security/SecurityService$OnEnableGuestMode;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 242
    const-string v0, "enabled"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/security/SecurityService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "enableGuestMode"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;

    const/16 v5, 0x8

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;-><init>(Landroid/support/place/connector/security/SecurityService;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 244
    return-void
.end method

.method public getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method public hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/place/connector/security/SecurityService$OnHasPermission;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 218
    const-string v0, "cert"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v0, "serviceType"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "deviceId"

    invoke-virtual {v3, v0, p3}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "permission"

    invoke-virtual {v3, v0, p4}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/security/SecurityService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "hasPermission"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;

    const/4 v5, 0x6

    invoke-direct {v4, p0, v5, p5}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;-><init>(Landroid/support/place/connector/security/SecurityService;ILjava/lang/Object;)V

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 223
    return-void
.end method

.method public isGuestModeEnabled(Landroid/support/place/connector/security/SecurityService$OnIsGuestModeEnabled;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 251
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 252
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/security/SecurityService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "isGuestModeEnabled"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;

    const/16 v5, 0x9

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;-><init>(Landroid/support/place/connector/security/SecurityService;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 253
    return-void
.end method

.method public listAccounts(Landroid/support/place/connector/security/SecurityService$OnListAccounts;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 147
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 148
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/security/SecurityService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "listAccounts"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;-><init>(Landroid/support/place/connector/security/SecurityService;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 149
    return-void
.end method

.method public listUserAccounts(ZLandroid/support/place/connector/security/SecurityService$OnListUserAccounts;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 165
    const-string v0, "isGuestMode"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/security/SecurityService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "listUserAccounts"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;-><init>(Landroid/support/place/connector/security/SecurityService;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 167
    return-void
.end method

.method public revokeAccount(Landroid/support/place/connector/security/Account;Landroid/support/place/connector/security/SecurityService$OnRevokeAccount;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 186
    const-string v0, "account"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 187
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/security/SecurityService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "revokeAccount"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;-><init>(Landroid/support/place/connector/security/SecurityService;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 188
    return-void
.end method

.method public updateRoles(Landroid/support/place/connector/security/Account;Ljava/util/List;Ljava/util/List;Landroid/support/place/connector/security/SecurityService$OnUpdateRoles;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 206
    const-string v0, "account"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 207
    const-string v0, "addRoles"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putList(Ljava/lang/String;Ljava/util/List;)V

    .line 208
    const-string v0, "removeRoles"

    invoke-virtual {v3, v0, p3}, Landroid/support/place/rpc/RpcData;->putList(Ljava/lang/String;Ljava/util/List;)V

    .line 209
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/security/SecurityService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "updateRoles"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v5, p4}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;-><init>(Landroid/support/place/connector/security/SecurityService;ILjava/lang/Object;)V

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 210
    return-void
.end method
