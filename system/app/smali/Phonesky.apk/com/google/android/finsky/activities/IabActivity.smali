.class public Lcom/google/android/finsky/activities/IabActivity;
.super Lcom/google/android/finsky/activities/PhoneskyActivity;
.source "IabActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;
.implements Lcom/google/android/finsky/fragments/PageFragmentHost;
.implements Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;
.implements Lcom/google/android/finsky/utils/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/IabActivity$1;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mErrorShown:Z

.field private mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

.field private mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

.field private mRequestId:J

.field private mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSku:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;-><init>()V

    .line 52
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    return-void
.end method


# virtual methods
.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .registers 2

    .prologue
    .line 188
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .registers 2

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 3

    .prologue
    .line 149
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 150
    const-string v0, "No navigation manager in IabActivity."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public goBack()V
    .registers 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->finish()V

    .line 172
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 176
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_USER_CANCELED:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 177
    invoke-super {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onBackPressed()V

    .line 178
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    .line 63
    const v4, 0x7f04006d

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/IabActivity;->setContentView(I)V

    .line 64
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    iput-object p1, p0, Lcom/google/android/finsky/activities/IabActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 66
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "sku"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/activities/IabActivity;->mSku:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "request_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/finsky/activities/IabActivity;->mRequestId:J

    .line 68
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "package_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "package_version_code"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 70
    .local v3, packageVersion:I
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "package_signature_hash"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, packageSignatureHash:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "developer_payload"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, developerPayload:Ljava/lang/String;
    new-instance v4, Lcom/google/android/finsky/billing/IabParameters;

    invoke-direct {v4, v1, v3, v2, v0}, Lcom/google/android/finsky/billing/IabParameters;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/finsky/activities/IabActivity;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    .line 74
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "account"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    iput-object v4, p0, Lcom/google/android/finsky/activities/IabActivity;->mAccount:Landroid/accounts/Account;

    .line 75
    if-eqz p1, :cond_79

    .line 76
    const-string v4, "error_shown"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/finsky/activities/IabActivity;->mErrorShown:Z

    .line 77
    const-string v4, "response_code"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 80
    :cond_79
    return-void
.end method

.method public onFailure(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V
    .registers 10
    .parameter "error"

    .prologue
    const v7, 0x7f07006d

    const v4, 0x7f07006c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 245
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 246
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mErrorShown:Z

    if-eqz v2, :cond_11

    .line 299
    :goto_10
    return-void

    .line 249
    :cond_11
    iput-boolean v6, p0, Lcom/google/android/finsky/activities/IabActivity;->mErrorShown:Z

    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, dialogTitle:Ljava/lang/String;
    const/4 v0, 0x0

    .line 252
    .local v0, dialogMessage:Ljava/lang/String;
    iget-object v2, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->IAB_PERMISSION_ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    if-ne v2, v3, :cond_92

    .line 253
    iget v2, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    sparse-switch v2, :sswitch_data_a2

    .line 283
    const v2, 0x7f070065

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    const-string v2, "Unexpected PurchasePermissionResponse: %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :goto_36
    iget-object v2, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    if-ne v2, v3, :cond_40

    .line 291
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 293
    :cond_40
    if-eqz v0, :cond_95

    .line 294
    invoke-virtual {p0, v1, v0, v6}, Lcom/google/android/finsky/activities/IabActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_10

    .line 255
    :sswitch_46
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 256
    const v2, 0x7f070070

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    const v2, 0x7f070071

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    goto :goto_36

    .line 260
    :sswitch_59
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 261
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    goto :goto_36

    .line 268
    :sswitch_66
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 269
    const v2, 0x7f07006e

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    const v2, 0x7f07006f

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    goto :goto_36

    .line 274
    :sswitch_79
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 275
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/IabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    goto :goto_36

    .line 279
    :sswitch_86
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 280
    const-string v2, "Unexpected INSTALL_OK response."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_36

    .line 287
    :cond_92
    iget-object v0, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    goto :goto_36

    .line 296
    :cond_95
    const-string v2, "No error message to show to user."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->goBack()V

    goto/16 :goto_10

    .line 253
    nop

    :sswitch_data_a2
    .sparse-switch
        0x0 -> :sswitch_79
        0x1 -> :sswitch_86
        0x3 -> :sswitch_66
        0x4 -> :sswitch_59
        0xc -> :sswitch_46
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 126
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/Notifier;->setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V

    .line 127
    invoke-super {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onPause()V

    .line 128
    return-void
.end method

.method public onPurchaseStatusChanged(Ljava/lang/String;Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;)V
    .registers 6
    .parameter "docId"
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mSku:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 202
    sget-object v0, Lcom/google/android/finsky/activities/IabActivity$1;->$SwitchMap$com$google$android$finsky$model$PurchaseStatusTracker$PurchaseState:[I

    iget-object v1, p2, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->state:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-virtual {v1}, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 214
    :cond_16
    :goto_16
    return-void

    .line 204
    :pswitch_17
    const v0, 0x7f07006b

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->finish()V

    goto :goto_16

    .line 209
    :pswitch_25
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 210
    iput-boolean v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mErrorShown:Z

    goto :goto_16

    .line 202
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_25
    .end packed-switch
.end method

.method protected onReady(Z)V
    .registers 6
    .parameter "shouldHandleIntent"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_14

    .line 106
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "purchase_fragment"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/PurchaseFragment;

    iput-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    .line 112
    :cond_14
    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    if-nez v1, :cond_3f

    .line 113
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 114
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mSku:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/IabActivity;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/activities/PurchaseFragment;->newIabInstance(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/finsky/billing/IabParameters;)Lcom/google/android/finsky/activities/PurchaseFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    .line 115
    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setPurchaseFragmentListener(Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;)V

    .line 116
    const v1, 0x7f08003e

    iget-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    const-string v3, "purchase_fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 117
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 122
    .end local v0           #ft:Landroid/support/v4/app/FragmentTransaction;
    :goto_3e
    return-void

    .line 120
    :cond_3f
    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setPurchaseFragmentListener(Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;)V

    goto :goto_3e
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 132
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/finsky/utils/Notifier;->setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V

    .line 133
    invoke-super {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onResume()V

    .line 134
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    if-eqz v0, :cond_12

    .line 140
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "purchase_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 143
    :cond_12
    const-string v0, "error_shown"

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mErrorShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    const-string v0, "response_code"

    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onStart()V

    .line 85
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->attach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V

    .line 86
    return-void
.end method

.method protected onStop()V
    .registers 6

    .prologue
    .line 90
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->detach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V

    .line 91
    invoke-super {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onStop()V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 93
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget-object v1, v1, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/finsky/activities/IabActivity;->mRequestId:J

    iget-object v4, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sendResponseCode(Landroid/content/Context;Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    if-eq v0, v1, :cond_33

    iget-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    sget-object v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    if-ne v0, v1, :cond_41

    .line 97
    :cond_33
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/32 v2, 0x1d4c0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->setMarketAlarm(Landroid/content/Context;Ljava/lang/String;J)V

    .line 101
    :cond_41
    return-void
.end method

.method public onSuccess()V
    .registers 2

    .prologue
    .line 236
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 237
    return-void
.end method

.method public showAppAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .parameter "packageName"
    .parameter "title"
    .parameter "htmlMessage"
    .parameter "returnCode"

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public showDocAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "docId"
    .parameter "title"
    .parameter "htmlMessage"

    .prologue
    const/4 v0, 0x1

    .line 218
    iget-object v1, p0, Lcom/google/android/finsky/activities/IabActivity;->mSku:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 219
    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/finsky/activities/IabActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 222
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "title"
    .parameter "message"
    .parameter "goBack"

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/IabActivity;->mStateSaved:Z

    if-eqz v0, :cond_5

    .line 197
    :goto_4
    return-void

    .line 196
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/IabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_4
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .registers 5
    .parameter "breadcrumb"

    .prologue
    .line 157
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 158
    const-string v0, "Ignoring breadcrumb: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_f
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .registers 6
    .parameter "backend"

    .prologue
    .line 164
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 165
    const-string v0, "Ignoring backend: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_13
    return-void
.end method
