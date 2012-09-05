.class Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$1;
.super Lcom/android/vending/billing/IBillingAccountService$Stub;
.source "CheckInstrumentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;

    invoke-direct {p0}, Lcom/android/vending/billing/IBillingAccountService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public hasValidCreditCard(Ljava/lang/String;)I
    .registers 15
    .parameter "accountName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 79
    const/4 v0, 0x1

    new-array v4, v0, [I

    .line 81
    .local v4, resultCode:[I
    new-instance v5, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 82
    .local v5, semaphore:Ljava/util/concurrent/Semaphore;
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;

    invoke-static {p1, v0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v6

    .line 84
    .local v6, account:Landroid/accounts/Account;
    if-nez v6, :cond_2f

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received invalid account name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const/4 v0, -0x5

    .line 109
    :goto_2e
    return v0

    .line 88
    :cond_2f
    new-instance v8, Lcom/android/volley/toolbox/AndroidAuthenticator;

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;

    invoke-direct {v8, v0, v6}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 90
    .local v8, authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    .line 92
    .local v2, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    :try_start_40
    sget-object v0, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, checkoutToken:Ljava/lang/String;
    new-instance v7, Lcom/google/android/finsky/activities/GetMarketMetadataAction;

    invoke-direct {v7}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;-><init>()V

    .line 95
    .local v7, action:Lcom/google/android/finsky/activities/GetMarketMetadataAction;
    iget-object v10, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;

    iget-object v11, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;-><init>(Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V

    new-instance v1, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataErrorListener;

    iget-object v12, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;

    invoke-direct {v1, v12, v2, v4, v5}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataErrorListener;-><init>(Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {v7, v10, v11, v0, v1}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;->run(Landroid/content/Context;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 99
    const-wide/16 v0, 0x14

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1, v10}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    .line 100
    const/4 v0, 0x0

    aget v0, v4, v0

    #calls: Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->logResult(Lcom/google/android/finsky/api/DfeApi;I)V
    invoke-static {v2, v0}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->access$000(Lcom/google/android/finsky/api/DfeApi;I)V

    .line 101
    const/4 v0, 0x0

    aget v0, v4, v0
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_77} :catch_78
    .catch Lcom/android/volley/AuthFailureError; {:try_start_40 .. :try_end_77} :catch_87

    goto :goto_2e

    .line 102
    .end local v3           #checkoutToken:Ljava/lang/String;
    .end local v7           #action:Lcom/google/android/finsky/activities/GetMarketMetadataAction;
    :catch_78
    move-exception v9

    .line 103
    .local v9, e:Ljava/lang/InterruptedException;
    const-string v0, "Timed out while waiting for response."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    const/4 v0, -0x4

    #calls: Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->logResult(Lcom/google/android/finsky/api/DfeApi;I)V
    invoke-static {v2, v0}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->access$000(Lcom/google/android/finsky/api/DfeApi;I)V

    .line 105
    const/4 v0, -0x4

    goto :goto_2e

    .line 106
    .end local v9           #e:Ljava/lang/InterruptedException;
    :catch_87
    move-exception v9

    .line 107
    .local v9, e:Lcom/android/volley/AuthFailureError;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthFailureError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/android/volley/AuthFailureError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    const/4 v0, -0x3

    #calls: Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->logResult(Lcom/google/android/finsky/api/DfeApi;I)V
    invoke-static {v2, v0}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->access$000(Lcom/google/android/finsky/api/DfeApi;I)V

    .line 109
    const/4 v0, -0x3

    goto :goto_2e
.end method
