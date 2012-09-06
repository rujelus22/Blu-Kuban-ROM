.class final Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcResultHandler;


# instance fields
.field private callback:Ljava/lang/Object;

.field private methodId:I

.field final synthetic this$0:Landroid/support/place/connector/security/SecurityService;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/security/SecurityService;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->this$0:Landroid/support/place/connector/security/SecurityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput p2, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->methodId:I

    .line 261
    iput-object p3, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    .line 262
    return-void
.end method


# virtual methods
.method public final authenticate([B)V
    .registers 4
    .parameter

    .prologue
    .line 339
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 341
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 342
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 343
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/connector/security/SecurityService$OnAuthenticate;

    invoke-interface {v0, v1}, Landroid/support/place/connector/security/SecurityService$OnAuthenticate;->onAuthenticate(Z)V

    .line 345
    :cond_16
    return-void
.end method

.method public final banUser([B)V
    .registers 4
    .parameter

    .prologue
    .line 357
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 359
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 360
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 361
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/connector/security/SecurityService$OnBanUser;

    invoke-interface {v0, v1}, Landroid/support/place/connector/security/SecurityService$OnBanUser;->onBanUser(Z)V

    .line 363
    :cond_16
    return-void
.end method

.method public final configureAccountManager([B)V
    .registers 4
    .parameter

    .prologue
    .line 384
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 386
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 387
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 388
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/connector/security/SecurityService$OnConfigureAccountManager;

    invoke-interface {v0, v1}, Landroid/support/place/connector/security/SecurityService$OnConfigureAccountManager;->onConfigureAccountManager(Landroid/support/place/rpc/RpcData;)V

    .line 390
    :cond_16
    return-void
.end method

.method public final enableGuestMode([B)V
    .registers 4
    .parameter

    .prologue
    .line 393
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 395
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 396
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 397
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/connector/security/SecurityService$OnEnableGuestMode;

    invoke-interface {v0, v1}, Landroid/support/place/connector/security/SecurityService$OnEnableGuestMode;->onEnableGuestMode(Z)V

    .line 399
    :cond_16
    return-void
.end method

.method public final hasPermission([B)V
    .registers 4
    .parameter

    .prologue
    .line 375
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 377
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 378
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 379
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/connector/security/SecurityService$OnHasPermission;

    invoke-interface {v0, v1}, Landroid/support/place/connector/security/SecurityService$OnHasPermission;->onHasPermission(Z)V

    .line 381
    :cond_16
    return-void
.end method

.method public final isGuestModeEnabled([B)V
    .registers 4
    .parameter

    .prologue
    .line 402
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 404
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 405
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 406
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/connector/security/SecurityService$OnIsGuestModeEnabled;

    invoke-interface {v0, v1}, Landroid/support/place/connector/security/SecurityService$OnIsGuestModeEnabled;->onIsGuestModeEnabled(Z)V

    .line 408
    :cond_16
    return-void
.end method

.method public final listAccounts([B)V
    .registers 4
    .parameter

    .prologue
    .line 321
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 323
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 324
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 325
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/connector/security/SecurityService$OnListAccounts;

    invoke-interface {v0, v1}, Landroid/support/place/connector/security/SecurityService$OnListAccounts;->onListAccounts(Landroid/support/place/rpc/RpcData;)V

    .line 327
    :cond_16
    return-void
.end method

.method public final listUserAccounts([B)V
    .registers 4
    .parameter

    .prologue
    .line 330
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 332
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 333
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 334
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/connector/security/SecurityService$OnListUserAccounts;

    invoke-interface {v0, v1}, Landroid/support/place/connector/security/SecurityService$OnListUserAccounts;->onListUserAccounts(Landroid/support/place/rpc/RpcData;)V

    .line 336
    :cond_16
    return-void
.end method

.method public final onResult([B)V
    .registers 3
    .parameter

    .prologue
    .line 265
    iget v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->methodId:I

    packed-switch v0, :pswitch_data_2e

    .line 318
    :goto_5
    return-void

    .line 269
    :pswitch_6
    invoke-virtual {p0, p1}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->listAccounts([B)V

    goto :goto_5

    .line 274
    :pswitch_a
    invoke-virtual {p0, p1}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->listUserAccounts([B)V

    goto :goto_5

    .line 279
    :pswitch_e
    invoke-virtual {p0, p1}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->authenticate([B)V

    goto :goto_5

    .line 284
    :pswitch_12
    invoke-virtual {p0, p1}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->revokeAccount([B)V

    goto :goto_5

    .line 289
    :pswitch_16
    invoke-virtual {p0, p1}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->banUser([B)V

    goto :goto_5

    .line 294
    :pswitch_1a
    invoke-virtual {p0, p1}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->updateRoles([B)V

    goto :goto_5

    .line 299
    :pswitch_1e
    invoke-virtual {p0, p1}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->hasPermission([B)V

    goto :goto_5

    .line 304
    :pswitch_22
    invoke-virtual {p0, p1}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->configureAccountManager([B)V

    goto :goto_5

    .line 309
    :pswitch_26
    invoke-virtual {p0, p1}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->enableGuestMode([B)V

    goto :goto_5

    .line 314
    :pswitch_2a
    invoke-virtual {p0, p1}, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->isGuestModeEnabled([B)V

    goto :goto_5

    .line 265
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_22
        :pswitch_26
        :pswitch_2a
    .end packed-switch
.end method

.method public final revokeAccount([B)V
    .registers 4
    .parameter

    .prologue
    .line 348
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 350
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 351
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 352
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/connector/security/SecurityService$OnRevokeAccount;

    invoke-interface {v0, v1}, Landroid/support/place/connector/security/SecurityService$OnRevokeAccount;->onRevokeAccount(Z)V

    .line 354
    :cond_16
    return-void
.end method

.method public final updateRoles([B)V
    .registers 4
    .parameter

    .prologue
    .line 366
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 368
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 369
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 370
    iget-object v0, p0, Landroid/support/place/connector/security/SecurityService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/connector/security/SecurityService$OnUpdateRoles;

    invoke-interface {v0, v1}, Landroid/support/place/connector/security/SecurityService$OnUpdateRoles;->onUpdateRoles(Z)V

    .line 372
    :cond_16
    return-void
.end method
