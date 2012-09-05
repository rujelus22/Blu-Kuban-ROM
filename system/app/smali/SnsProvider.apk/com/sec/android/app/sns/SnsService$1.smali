.class Lcom/sec/android/app/sns/SnsService$1;
.super Lcom/sec/android/app/sns/ISnsService$Stub;
.source "SnsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sns/SnsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sns/SnsService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sns/SnsService;)V
    .registers 2
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-direct {p0}, Lcom/sec/android/app/sns/ISnsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoggedInAccount(I)[Ljava/lang/String;
    .registers 8
    .parameter "sp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 411
    iget-object v3, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 413
    .local v1, am:Landroid/accounts/AccountManager;
    sget-object v3, Lcom/sec/android/app/sns/type/SnsAccountType;->ACCOUNT_TYPE:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 414
    .local v2, loginAccount:[Landroid/accounts/Account;
    array-length v3, v2

    if-gtz v3, :cond_1a

    .line 415
    new-array v0, v4, [Ljava/lang/String;

    .line 433
    :goto_19
    return-object v0

    .line 418
    :cond_1a
    iget-object v3, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v3

    if-nez v3, :cond_29

    .line 419
    new-array v0, v4, [Ljava/lang/String;

    goto :goto_19

    .line 422
    :cond_29
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    .line 424
    .local v0, account:[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sns/account/SnsAccount;->getUserID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 425
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v4}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sns/account/SnsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 426
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v4}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sns/account/SnsAccount;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 428
    iget-object v3, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sns/account/SnsAccount;->getSessionValidity()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 429
    const-string v3, "0"

    aput-object v3, v0, v5

    goto :goto_19

    .line 431
    :cond_73
    const-string v3, "1"

    aput-object v3, v0, v5

    goto :goto_19
.end method

.method public getSessionKeys()[Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 446
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->hasValidSNSAccount()Z

    move-result v1

    if-nez v1, :cond_14

    .line 447
    new-array v0, v4, [Ljava/lang/String;

    .line 467
    :cond_13
    :goto_13
    return-object v0

    .line 450
    :cond_14
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    .line 452
    .local v0, sessionkeys:[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getCryptSessionCredential()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sns/util/SnsUtil;->getPersistKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 455
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sns/util/SnsUtil;->getApplicationKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 456
    invoke-static {}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getHttpServerAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 458
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 459
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSessionKey - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCryptSessionCredential - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPersistKey - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApplicationKey - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    aget-object v1, v0, v5

    if-eqz v1, :cond_13

    .line 464
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNormalAddress - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13
.end method

.method public isLoggedIn(I)I
    .registers 5
    .parameter "sp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 388
    .local v0, am:Landroid/accounts/AccountManager;
    sget-object v2, Lcom/sec/android/app/sns/type/SnsAccountType;->ACCOUNT_TYPE:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 389
    .local v1, loginAccount:[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_41

    .line 390
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 391
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sns/account/SnsAccount;->getSessionValidity()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getSeesionStatus()I

    move-result v2

    if-nez v2, :cond_3f

    .line 393
    const/4 v2, 0x0

    .line 398
    :goto_3e
    return v2

    .line 395
    :cond_3f
    const/4 v2, 0x1

    goto :goto_3e

    .line 398
    :cond_41
    const/4 v2, 0x2

    goto :goto_3e
.end method

.method public registerCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)I
    .registers 4
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    if-eqz p1, :cond_1a

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    #getter for: Lcom/sec/android/app/sns/SnsService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsService;->access$100(Lcom/sec/android/app/sns/SnsService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sns/SnsService;->access$008()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 363
    invoke-static {}, Lcom/sec/android/app/sns/SnsService;->access$000()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_19
    return v0

    .line 360
    :cond_1a
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public setSessionInvalid(I)V
    .registers 9
    .parameter "spType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 482
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 483
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sns/account/SnsAccount;->setSessionValidity(Z)V

    .line 485
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->writeAccountInfo()V

    .line 487
    new-instance v0, Lcom/sec/android/app/sns/result/SnsResultData;

    const/4 v6, 0x0

    move v2, p1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 489
    .local v0, resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    .end local v0           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :goto_41
    return-void

    .line 493
    :cond_42
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "============= setSessionInvalid : SnsAccount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null!!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method public setSyncPendingState(I)Z
    .registers 3
    .parameter "pollingID"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsService;->getPollingMgr()Lcom/sec/android/app/sns/polling/SnsPollingMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->pendPollingRequest(I)Z

    move-result v0

    return v0
.end method

.method public unregisterCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 373
    if-eqz p1, :cond_b

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService$1;->this$0:Lcom/sec/android/app/sns/SnsService;

    #getter for: Lcom/sec/android/app/sns/SnsService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsService;->access$100(Lcom/sec/android/app/sns/SnsService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 376
    :cond_b
    return-void
.end method
