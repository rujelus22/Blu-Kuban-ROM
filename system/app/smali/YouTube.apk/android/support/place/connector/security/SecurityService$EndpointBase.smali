.class public abstract Landroid/support/place/connector/security/SecurityService$EndpointBase;
.super Landroid/support/place/connector/Connector;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/support/place/connector/Connector;-><init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V

    .line 25
    return-void
.end method


# virtual methods
.method public abstract authenticate(Ljava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract banUser(Landroid/support/place/connector/security/Account;Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract configureAccountManager(Ljava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;
.end method

.method public abstract enableGuestMode(ZLandroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract isGuestModeEnabled(Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract listAccounts(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;
.end method

.method public abstract listUserAccounts(ZLandroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;
.end method

.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v4, Landroid/support/place/rpc/RpcData;

    invoke-direct {v4, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 45
    const-string v0, "listAccounts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 47
    invoke-virtual {p0, p3}, Landroid/support/place/connector/security/SecurityService$EndpointBase;->listAccounts(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 48
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 49
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 129
    :goto_1b
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    :goto_1f
    return-object v0

    .line 51
    :cond_20
    const-string v0, "listUserAccounts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 53
    const-string v0, "isGuestMode"

    invoke-virtual {v4, v0}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 54
    invoke-virtual {p0, v0, p3}, Landroid/support/place/connector/security/SecurityService$EndpointBase;->listUserAccounts(ZLandroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 55
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 56
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    goto :goto_1b

    .line 58
    :cond_3d
    const-string v0, "authenticate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 60
    const-string v0, "authType"

    invoke-virtual {v4, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "args"

    invoke-virtual {v4, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 63
    invoke-virtual {p0, v0, v1, p3}, Landroid/support/place/connector/security/SecurityService$EndpointBase;->authenticate(Ljava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)Z

    move-result v1

    .line 64
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 65
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1b

    .line 67
    :cond_60
    const-string v0, "revokeAccount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 69
    const-string v0, "account"

    sget-object v1, Landroid/support/place/connector/security/Account;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v4, v0, v1}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/security/Account;

    .line 70
    invoke-virtual {p0, v0, p3}, Landroid/support/place/connector/security/SecurityService$EndpointBase;->revokeAccount(Landroid/support/place/connector/security/Account;Landroid/support/place/rpc/RpcContext;)Z

    move-result v1

    .line 71
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 72
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1b

    .line 74
    :cond_81
    const-string v0, "banUser"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 76
    const-string v0, "account"

    sget-object v1, Landroid/support/place/connector/security/Account;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v4, v0, v1}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/security/Account;

    .line 77
    invoke-virtual {p0, v0, p3}, Landroid/support/place/connector/security/SecurityService$EndpointBase;->banUser(Landroid/support/place/connector/security/Account;Landroid/support/place/rpc/RpcContext;)Z

    move-result v1

    .line 78
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 79
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1b

    .line 81
    :cond_a3
    const-string v0, "updateRoles"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 83
    const-string v0, "account"

    sget-object v1, Landroid/support/place/connector/security/Account;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v4, v0, v1}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/security/Account;

    .line 85
    const-string v1, "addRoles"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/support/place/rpc/RpcData;->getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 87
    const-string v2, "removeRoles"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/support/place/rpc/RpcData;->getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 88
    invoke-virtual {p0, v0, v1, v2, p3}, Landroid/support/place/connector/security/SecurityService$EndpointBase;->updateRoles(Landroid/support/place/connector/security/Account;Ljava/util/List;Ljava/util/List;Landroid/support/place/rpc/RpcContext;)Z

    move-result v1

    .line 89
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 90
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1b

    .line 92
    :cond_d5
    const-string v0, "hasPermission"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 94
    const-string v0, "cert"

    invoke-virtual {v4, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v0, "serviceType"

    invoke-virtual {v4, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    const-string v0, "deviceId"

    invoke-virtual {v4, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    const-string v0, "permission"

    invoke-virtual {v4, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p3

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/security/SecurityService$EndpointBase;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z

    move-result v1

    .line 102
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 103
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1b

    .line 105
    :cond_107
    const-string v0, "configureAccountManager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 107
    const-string v0, "authType"

    invoke-virtual {v4, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v1, "args"

    invoke-virtual {v4, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 110
    invoke-virtual {p0, v0, v1, p3}, Landroid/support/place/connector/security/SecurityService$EndpointBase;->configureAccountManager(Ljava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 111
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 112
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    goto/16 :goto_1b

    .line 114
    :cond_12b
    const-string v0, "enableGuestMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 116
    const-string v0, "enabled"

    invoke-virtual {v4, v0}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 117
    invoke-virtual {p0, v0, p3}, Landroid/support/place/connector/security/SecurityService$EndpointBase;->enableGuestMode(ZLandroid/support/place/rpc/RpcContext;)Z

    move-result v1

    .line 118
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 119
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1b

    .line 121
    :cond_149
    const-string v0, "isGuestModeEnabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    .line 122
    invoke-virtual {p0, p3}, Landroid/support/place/connector/security/SecurityService$EndpointBase;->isGuestModeEnabled(Landroid/support/place/rpc/RpcContext;)Z

    move-result v1

    .line 123
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 124
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1b

    .line 127
    :cond_161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/Connector;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto/16 :goto_1f
.end method

.method public abstract revokeAccount(Landroid/support/place/connector/security/Account;Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract updateRoles(Landroid/support/place/connector/security/Account;Ljava/util/List;Ljava/util/List;Landroid/support/place/rpc/RpcContext;)Z
.end method
