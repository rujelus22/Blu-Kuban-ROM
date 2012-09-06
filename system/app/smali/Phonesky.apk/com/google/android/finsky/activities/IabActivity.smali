.class public Lcom/google/android/finsky/activities/IabActivity;
.super Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;
.source "IabActivity.java"


# instance fields
.field private mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

.field private mPackageName:Ljava/lang/String;

.field private mRequestId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPurchaseFragment()Lcom/google/android/finsky/activities/PurchaseFragment;
    .registers 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mDocId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/activities/PurchaseFragment;->newIabInstance(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/finsky/billing/IabParameters;)Lcom/google/android/finsky/activities/PurchaseFragment;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "document_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/IabActivity;->mDocId:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "package_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/IabActivity;->mPackageName:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "request_id"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/finsky/activities/IabActivity;->mRequestId:J

    .line 54
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "package_version_code"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 55
    .local v2, packageVersion:I
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "package_signature_hash"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, packageSignatureHash:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "developer_payload"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, developerPayload:Ljava/lang/String;
    new-instance v3, Lcom/google/android/finsky/billing/IabParameters;

    iget-object v4, p0, Lcom/google/android/finsky/activities/IabActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/google/android/finsky/billing/IabParameters;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/finsky/activities/IabActivity;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    .line 59
    return-void
.end method

.method public onFailure(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V
    .registers 10
    .parameter "error"

    .prologue
    const v7, 0x7f070068

    const v4, 0x7f070067

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 78
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mErrorShown:Z

    if-eqz v2, :cond_11

    .line 134
    :goto_10
    return-void

    .line 81
    :cond_11
    iput-boolean v6, p0, Lcom/google/android/finsky/activities/IabActivity;->mErrorShown:Z

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, dialogTitle:Ljava/lang/String;
    const/4 v0, 0x0

    .line 84
    .local v0, dialogMessage:Ljava/lang/String;
    iget-object v2, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->IAB_PERMISSION_ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    if-ne v2, v3, :cond_92

    .line 85
    iget v2, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    sparse-switch v2, :sswitch_data_ac

    .line 112
    const v2, 0x7f07005f

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v2, "Unexpected PurchasePermissionResponse: %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :goto_36
    iget-object v2, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    if-ne v2, v3, :cond_40

    .line 126
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 128
    :cond_40
    if-eqz v0, :cond_a0

    .line 129
    invoke-virtual {p0, v1, v0, v6}, Lcom/google/android/finsky/activities/IabActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_10

    .line 87
    :sswitch_46
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 88
    const v2, 0x7f07006b

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    const v2, 0x7f07006c

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    goto :goto_36

    .line 92
    :sswitch_59
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 93
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    goto :goto_36

    .line 97
    :sswitch_66
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 98
    const v2, 0x7f070069

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    const v2, 0x7f07006a

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    goto :goto_36

    .line 103
    :sswitch_79
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 104
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    goto :goto_36

    .line 108
    :sswitch_86
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 109
    const-string v2, "Unexpected INSTALL_OK response."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_36

    .line 115
    :cond_92
    iget-object v2, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->SUBSCRIPTION_ALREADY_OWNED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    if-ne v2, v3, :cond_9d

    .line 118
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    goto :goto_36

    .line 122
    :cond_9d
    iget-object v0, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    goto :goto_36

    .line 131
    :cond_a0
    const-string v2, "No error message to show to user."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->goBack()V

    goto/16 :goto_10

    .line 85
    :sswitch_data_ac
    .sparse-switch
        0x0 -> :sswitch_79
        0x1 -> :sswitch_86
        0x3 -> :sswitch_66
        0x4 -> :sswitch_59
        0xc -> :sswitch_46
    .end sparse-switch
.end method

.method protected onStop()V
    .registers 6

    .prologue
    .line 63
    invoke-super {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->onStop()V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 65
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget-object v1, v1, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mRequestId:J

    iget-object v4, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sendResponseCode(Landroid/content/Context;Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    if-ne v0, v1, :cond_36

    .line 69
    :cond_28
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/32 v2, 0x1d4c0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->setMarketAlarm(Landroid/content/Context;Ljava/lang/String;J)V

    .line 73
    :cond_36
    return-void
.end method

.method protected showSuccessToast()V
    .registers 3

    .prologue
    .line 143
    const v0, 0x7f070065

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    return-void
.end method
