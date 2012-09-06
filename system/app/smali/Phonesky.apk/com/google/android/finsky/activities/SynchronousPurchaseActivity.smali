.class public Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;
.super Lcom/google/android/finsky/activities/AuthenticatedActivity;
.source "SynchronousPurchaseActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;
.implements Lcom/google/android/finsky/fragments/PageFragmentHost;
.implements Lcom/google/android/finsky/utils/NotificationListener;


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected mDocId:Ljava/lang/String;

.field protected mErrorShown:Z

.field protected mExternalReferrerUrl:Ljava/lang/String;

.field protected mIsDirectLinkPurchase:Z

.field protected mOfferType:I

.field protected mOriginalUrl:Ljava/lang/String;

.field protected mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

.field protected mReferrerCookie:Ljava/lang/String;

.field protected mReferrerUrl:Ljava/lang/String;

.field protected mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

.field protected mSavedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;-><init>()V

    .line 61
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    const-string v1, "authAccount"

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "document_id"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "finsky.original_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "finsky.offer_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v1, "finsky.referrer_url"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "finsky.external_referrer_url"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "finsky.referrer_cookie"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "finsky.is_direct_link_purchase"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0, p8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 87
    return-void
.end method


# virtual methods
.method public final finish()V
    .registers 5

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v0, data:Landroid/content/Intent;
    const-string v2, "finsky.is_direct_link_purchase"

    iget-boolean v3, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mIsDirectLinkPurchase:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    const-string v2, "requested_doc_id"

    iget-object v3, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mDocId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    iget-object v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    sget-object v3, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    if-ne v2, v3, :cond_21

    const/4 v1, -0x1

    .line 188
    .local v1, result:I
    :goto_1a
    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 189
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    .line 190
    return-void

    .line 187
    .end local v1           #result:I
    :cond_21
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .registers 2

    .prologue
    .line 205
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .registers 2

    .prologue
    .line 200
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 3

    .prologue
    .line 156
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 157
    const-string v0, "No navigation manager in IabActivity."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPurchaseFragment()Lcom/google/android/finsky/activities/PurchaseFragment;
    .registers 10

    .prologue
    .line 276
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 279
    .local v0, currentAccount:Landroid/accounts/Account;
    iget-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mOriginalUrl:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mOfferType:I

    iget-object v3, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mReferrerUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mReferrerCookie:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mIsDirectLinkPurchase:Z

    iget-object v6, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mExternalReferrerUrl:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mDocId:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/activities/PurchaseFragment;->newInstance(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/PurchaseFragment;

    move-result-object v1

    return-object v1
.end method

.method public goBack()V
    .registers 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->finish()V

    .line 179
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 194
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_USER_CANCELED:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 195
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onBackPressed()V

    .line 196
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 91
    const v1, 0x7f040078

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->setContentView(I)V

    .line 92
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    iput-object p1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 94
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "document_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mDocId:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authAccount"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, accountName:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mAccount:Landroid/accounts/Account;

    .line 97
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finsky.original_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mOriginalUrl:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finsky.referrer_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mReferrerUrl:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finsky.external_referrer_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mExternalReferrerUrl:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finsky.offer_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mOfferType:I

    .line 101
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finsky.referrer_cookie"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mReferrerCookie:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finsky.is_direct_link_purchase"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mIsDirectLinkPurchase:Z

    .line 103
    if-eqz p1, :cond_87

    .line 104
    const-string v1, "error_shown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mErrorShown:Z

    .line 105
    const-string v1, "response_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 108
    :cond_87
    return-void
.end method

.method public onFailure(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V
    .registers 7
    .parameter "error"

    .prologue
    const/4 v4, 0x1

    .line 232
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 233
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mErrorShown:Z

    if-eqz v2, :cond_a

    .line 249
    :goto_9
    return-void

    .line 236
    :cond_a
    iput-boolean v4, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mErrorShown:Z

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, dialogTitle:Ljava/lang/String;
    iget-object v0, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    .line 240
    .local v0, dialogMessage:Ljava/lang/String;
    iget-object v2, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    if-ne v2, v3, :cond_19

    .line 241
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 243
    :cond_19
    if-eqz v0, :cond_1f

    .line 244
    invoke-virtual {p0, v1, v0, v4}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    .line 246
    :cond_1f
    const-string v2, "No error message to show to user."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->goBack()V

    goto :goto_9
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 133
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/Notifier;->setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V

    .line 134
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onPause()V

    .line 135
    return-void
.end method

.method protected onReady(Z)V
    .registers 6
    .parameter "shouldHandleIntent"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_14

    .line 113
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "purchase_fragment"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/PurchaseFragment;

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    .line 119
    :cond_14
    iget-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    if-nez v1, :cond_39

    .line 120
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 121
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getPurchaseFragment()Lcom/google/android/finsky/activities/PurchaseFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    .line 122
    iget-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setPurchaseFragmentListener(Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;)V

    .line 123
    const v1, 0x7f080033

    iget-object v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    const-string v3, "purchase_fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 124
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 129
    .end local v0           #ft:Landroid/support/v4/app/FragmentTransaction;
    :goto_38
    return-void

    .line 127
    :cond_39
    iget-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setPurchaseFragmentListener(Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;)V

    goto :goto_38
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 139
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/finsky/utils/Notifier;->setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V

    .line 140
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onResume()V

    .line 141
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    if-eqz v0, :cond_12

    .line 147
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "purchase_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 150
    :cond_12
    const-string v0, "error_shown"

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mErrorShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    const-string v0, "response_code"

    iget-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public onSuccess()V
    .registers 2

    .prologue
    .line 221
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 222
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->showSuccessToast()V

    .line 223
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->finish()V

    .line 224
    return-void
.end method

.method public showAppAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .parameter "packageName"
    .parameter "title"
    .parameter "htmlMessage"
    .parameter "returnCode"

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"
    .parameter "title"
    .parameter "htmlMessage"

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public showDocAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "docId"
    .parameter "title"
    .parameter "htmlMessage"
    .parameter "detailsUrl"

    .prologue
    const/4 v0, 0x1

    .line 253
    iget-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mDocId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 254
    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 257
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
    .line 210
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mStateSaved:Z

    if-eqz v0, :cond_5

    .line 214
    :goto_4
    return-void

    .line 213
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_4
.end method

.method protected showSuccessToast()V
    .registers 3

    .prologue
    .line 272
    const v0, 0x7f070066

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    return-void
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .registers 5
    .parameter "breadcrumb"

    .prologue
    .line 164
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 165
    const-string v0, "Ignoring breadcrumb: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_f
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .registers 6
    .parameter "backend"

    .prologue
    .line 171
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 172
    const-string v0, "Ignoring backend: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_13
    return-void
.end method
