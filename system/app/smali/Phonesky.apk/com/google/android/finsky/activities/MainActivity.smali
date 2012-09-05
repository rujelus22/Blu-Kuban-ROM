.class public Lcom/google/android/finsky/activities/MainActivity;
.super Lcom/google/android/finsky/activities/PhoneskyActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/fragments/PageFragmentHost;


# static fields
.field private static sBillingInitialized:Z


# instance fields
.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private final mHandler:Landroid/os/Handler;

.field private mLastShownErrorHash:I

.field private mMyCollectionItem:Landroid/view/MenuItem;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mNotificationListener:Lcom/google/android/finsky/utils/NotificationListener;

.field private mPageNeedsRefresh:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSequenceNumberToDrainFrom:I

.field private final mStopPreviewsRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/MainActivity$1;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNotificationListener:Lcom/google/android/finsky/utils/NotificationListener;

    .line 152
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/MainActivity$2;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStopPreviewsRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialogForCode(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->checkHasValidInstrument()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->initializeCarrierBillingParams()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->initializeBillingCountries()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->initializeCarrierBillingProvisioning()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->updateConsumptionAppMenu()V

    return-void
.end method

.method private checkHasValidInstrument()V
    .registers 3

    .prologue
    .line 344
    new-instance v0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;-><init>(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/api/DfeApi;)V

    .line 346
    .local v0, cia:Lcom/google/android/finsky/billing/AddInstrumentReminderAction;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->run(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method private getCurrentBackend()I
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/CustomActionBar;->getCurrentBackendId()I

    move-result v0

    return v0
.end method

.method public static getMyDownloadsIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.VIEW_MY_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 162
    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 167
    return-object v0
.end method

.method private handleIntent()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 195
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v4, Lcom/google/android/finsky/activities/MainActivity$3;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/MainActivity$3;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 206
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 208
    .local v0, currentIntent:Landroid/content/Intent;
    const-string v3, "authAccount"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, newAccountName:Ljava/lang/String;
    if-eqz v2, :cond_31

    .line 210
    const-string v3, "authAccount"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 212
    const-string v3, "b/5160617: Switching account to %s due to intent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/MainActivity;->switchAccount(Ljava/lang/String;)V

    .line 239
    :goto_30
    return-void

    .line 218
    :cond_31
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->maybeShowErrorDialog(Landroid/content/Intent;)V

    .line 219
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, intentAction:Ljava/lang/String;
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 221
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->handleSearchIntent(Landroid/content/Intent;)V

    goto :goto_30

    .line 222
    :cond_44
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 223
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 224
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->handleDeepLink(Ljava/lang/String;)V

    goto :goto_30

    .line 225
    :cond_5b
    const-string v3, "com.google.android.finsky.VIEW_MY_DOWNLOADS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 226
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 227
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToMyDownloads()V

    goto :goto_30

    .line 230
    :cond_6e
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 231
    sget-boolean v3, Lcom/google/android/finsky/activities/MainActivity;->sSwitchToMyApps:Z

    if-eqz v3, :cond_7f

    .line 232
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToMyDownloads()V

    .line 233
    sput-boolean v6, Lcom/google/android/finsky/activities/MainActivity;->sSwitchToMyApps:Z

    goto :goto_30

    .line 236
    :cond_7f
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    goto :goto_30
.end method

.method private handleSearchIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->isTosAccepted()Z

    move-result v1

    if-nez v1, :cond_8

    .line 260
    :goto_7
    return-void

    .line 254
    :cond_8
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, query:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCurrentBackend()I

    move-result v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_7
.end method

.method private initializeBilling()V
    .registers 4

    .prologue
    .line 295
    sget-boolean v1, Lcom/google/android/finsky/activities/MainActivity;->sBillingInitialized:Z

    if-eqz v1, :cond_5

    .line 320
    :goto_4
    return-void

    .line 298
    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/finsky/activities/MainActivity;->sBillingInitialized:Z

    .line 299
    const-string v1, "Optimistically initializing billing parameters."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;-><init>()V

    .line 303
    .local v0, cba:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;
    new-instance v1, Lcom/google/android/finsky/activities/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MainActivity$4;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->run(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method private initializeBillingCountries()V
    .registers 4

    .prologue
    .line 324
    new-instance v0, Lcom/google/android/finsky/billing/GetBillingCountriesAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;-><init>()V

    .line 325
    .local v0, gbca:Lcom/google/android/finsky/billing/GetBillingCountriesAction;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;->run(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 326
    return-void
.end method

.method private initializeCarrierBillingParams()V
    .registers 3

    .prologue
    .line 329
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getMarketMetadata()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;-><init>(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    .line 330
    .local v0, cpa:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;
    new-instance v1, Lcom/google/android/finsky/activities/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MainActivity$5;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;->run(Ljava/lang/Runnable;)V

    .line 336
    return-void
.end method

.method private initializeCarrierBillingProvisioning()V
    .registers 3

    .prologue
    .line 339
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;-><init>()V

    .line 340
    .local v0, cpa:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->runIfNotOnWifi(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method private maybeShowErrorDialog(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 737
    const-string v5, "error_html_message"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 738
    const/4 v4, 0x0

    .line 739
    .local v4, title:Ljava/lang/String;
    const-string v5, "error_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 740
    const-string v5, "error_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 742
    :cond_17
    const-string v5, "error_html_message"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, message:Ljava/lang/String;
    const-string v5, "error_doc_id"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, docId:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 745
    .local v1, errorHash:I
    iget v5, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    if-eq v5, v1, :cond_4c

    .line 746
    const-string v5, "error_return_code"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 748
    .local v3, returnCode:I
    invoke-direct {p0, v4, v2, v3, v0}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialogForCode(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    .line 749
    iput v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    .line 752
    .end local v0           #docId:Ljava/lang/String;
    .end local v1           #errorHash:I
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #returnCode:I
    .end local v4           #title:Ljava/lang/String;
    :cond_4c
    return-void
.end method

.method private onMyCollectionSelected()V
    .registers 5

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 639
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCurrentBackend()I

    move-result v0

    .line 640
    .local v0, currentBackendId:I
    packed-switch v0, :pswitch_data_2e

    .line 653
    :pswitch_b
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToMyDownloads()V

    .line 655
    :goto_10
    return-void

    .line 644
    :pswitch_11
    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/IntentUtils;->isConsumptionAppInstalled(Landroid/content/pm/PackageManager;I)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 645
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showAppNeededDialog(I)V

    goto :goto_10

    .line 648
    :cond_1d
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppLaunchIntent(Landroid/content/pm/PackageManager;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 650
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_10

    .line 640
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method private setupDcbDebugMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 705
    const v1, 0x7f0801a7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 706
    .local v0, dcbDeug:Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 707
    new-instance v1, Lcom/google/android/finsky/activities/MainActivity$10;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MainActivity$10;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 715
    return-void
.end method

.method private setupDebugMenu(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 663
    const v3, 0x7f0801a5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 664
    .local v0, clearCache:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 665
    new-instance v3, Lcom/google/android/finsky/activities/MainActivity$7;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/MainActivity$7;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 679
    const v3, 0x7f0801a6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 680
    .local v2, serverSelect:Landroid/view/MenuItem;
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 681
    new-instance v3, Lcom/google/android/finsky/activities/MainActivity$8;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/MainActivity$8;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 690
    const v3, 0x7f0801a8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 691
    .local v1, imageSizes:Landroid/view/MenuItem;
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 692
    new-instance v3, Lcom/google/android/finsky/activities/MainActivity$9;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/MainActivity$9;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 702
    return-void
.end method

.method private showErrorDialogForCode(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 9
    .parameter "title"
    .parameter "htmlMessage"
    .parameter "returnCode"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    .line 719
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v1

    .line 720
    .local v1, packageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;
    invoke-virtual {v1, p4}, Lcom/google/android/finsky/utils/PackageInfoCache;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    .line 722
    .local v0, isSystemApp:Z
    packed-switch p3, :pswitch_data_1c

    .line 731
    :cond_10
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 732
    :goto_14
    return v3

    .line 724
    :pswitch_15
    if-nez v0, :cond_10

    .line 725
    invoke-direct {p0, p4}, Lcom/google/android/finsky/activities/MainActivity;->showMismatchedCertificatesDialog(Ljava/lang/String;)V

    goto :goto_14

    .line 722
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch
.end method

.method private showErrorMessage(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter

    .prologue
    .line 799
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-eqz v0, :cond_10

    .line 800
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    .line 801
    if-eqz v0, :cond_10

    .line 802
    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->refreshOnResume()V

    .line 839
    :goto_f
    return-void

    .line 807
    :cond_10
    instance-of v0, p1, Lcom/google/android/finsky/utils/BgDataDisabledError;

    if-eqz v0, :cond_18

    .line 808
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->showBackgroundDataDialog()V

    goto :goto_f

    .line 812
    :cond_18
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    .line 813
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 814
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 815
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/MainActivity$11;

    invoke-direct {v1, p0, v2}, Lcom/google/android/finsky/activities/MainActivity$11;-><init>(Lcom/google/android/finsky/activities/MainActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f
.end method

.method private showMismatchedCertificatesDialog(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 847
    const v0, 0x7f0700ef

    const v1, 0x7f0700b0

    const v2, 0x7f070162

    const v3, 0x7f0700f7

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(IIII)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 852
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 853
    const-string v2, "error_package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 855
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "mismatched_certificates"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method private updateConsumptionAppMenu()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 564
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    if-nez v3, :cond_6

    .line 586
    :cond_5
    :goto_5
    return-void

    .line 571
    :cond_6
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()Lcom/google/android/finsky/navigationmanager/NavigationState;

    move-result-object v1

    .line 573
    .local v1, currentPageType:Lcom/google/android/finsky/navigationmanager/NavigationState;
    iget-object v5, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    sget-object v3, Lcom/google/android/finsky/navigationmanager/NavigationState;->MY_DOWNLOADS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    if-eq v1, v3, :cond_32

    const/4 v3, 0x1

    :goto_13
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 574
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 575
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCurrentBackend()I

    move-result v0

    .line 576
    .local v0, currentBackendId:I
    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusMyCollectionDescription(I)Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, myCollectionDescription:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 579
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    .end local v0           #currentBackendId:I
    .end local v2           #myCollectionDescription:Ljava/lang/String;
    :cond_32
    move v3, v4

    .line 573
    goto :goto_13

    .line 581
    .restart local v0       #currentBackendId:I
    .restart local v2       #myCollectionDescription:Ljava/lang/String;
    :cond_34
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 582
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusMyCollectionIcon(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_5
.end method


# virtual methods
.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .registers 2

    .prologue
    .line 421
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCustomActionBar()Lcom/google/android/finsky/layout/CustomActionBar;
    .registers 2

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    return-object v0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .registers 2

    .prologue
    .line 416
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method public goBack()V
    .registers 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->onBackPressed()V

    .line 381
    return-void
.end method

.method protected handleAuthenticationError(Lcom/android/volley/VolleyError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 782
    instance-of v2, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v2, :cond_11

    move-object v0, p1

    .line 783
    check-cast v0, Lcom/android/volley/AuthFailureError;

    .line 784
    .local v0, authFailure:Lcom/android/volley/AuthFailureError;
    invoke-virtual {v0}, Lcom/android/volley/AuthFailureError;->getResolutionIntent()Landroid/content/Intent;

    move-result-object v1

    .line 785
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_11

    .line 786
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/MainActivity;->handleUserAuthentication(Landroid/content/Intent;)V

    .line 796
    .end local v0           #authFailure:Lcom/android/volley/AuthFailureError;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_10
    return-void

    .line 791
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->hideLoadingIndicator()V

    .line 794
    const v2, 0x7f08003f

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 795
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->showErrorMessage(Lcom/android/volley/VolleyError;)V

    goto :goto_10
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 480
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_16

    const/16 v0, 0x28

    if-ne p2, v0, :cond_16

    .line 484
    const-string v0, "b/5160617: Reinitialize with null accountafter user changed content level"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->reinitialize(Landroid/accounts/Account;Z)V

    .line 490
    :goto_15
    return-void

    .line 489
    :cond_16
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_15
.end method

.method public onApisChanged()V
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->init(Lcom/google/android/finsky/activities/MainActivity;)V

    .line 406
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBack()Z

    move-result v0

    if-nez v0, :cond_b

    .line 520
    invoke-super {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onBackPressed()V

    .line 522
    :cond_b
    return-void
.end method

.method protected onCleanup()V
    .registers 11

    .prologue
    .line 430
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-static {}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/FinskyApp;->drainAllRequests(I)V

    .line 433
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    .line 435
    iget-boolean v8, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-nez v8, :cond_51

    .line 436
    iget-object v8, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 442
    iget-object v8, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->flush()Z

    .line 447
    :goto_21
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const v9, 0x7f08003e

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 448
    .local v5, contentFrame:Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 449
    .local v1, childCount:I
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 450
    .local v4, childrenToRemove:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_37
    if-ge v6, v1, :cond_5a

    .line 451
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 452
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    .line 453
    .local v2, childId:I
    const v8, 0x7f08003f

    if-eq v2, v8, :cond_4e

    const v8, 0x7f080040

    if-eq v2, v8, :cond_4e

    .line 455
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 444
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childCount:I
    .end local v2           #childId:I
    .end local v4           #childrenToRemove:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    .end local v5           #contentFrame:Landroid/view/ViewGroup;
    .end local v6           #i:I
    :cond_51
    const-string v8, "Unable to clear NavigationManager as state has been saved."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21

    .line 458
    .restart local v1       #childCount:I
    .restart local v4       #childrenToRemove:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    .restart local v5       #contentFrame:Landroid/view/ViewGroup;
    .restart local v6       #i:I
    :cond_5a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_5e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 459
    .local v3, childToRemove:Landroid/view/View;
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_5e

    .line 461
    .end local v3           #childToRemove:Landroid/view/View;
    :cond_6e
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->showLoadingIndicator()V

    .line 462
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 173
    const v0, 0x7f04008b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->setContentView(I)V

    .line 174
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 175
    if-eqz p1, :cond_19

    .line 176
    const-string v0, "last_shown_error_hash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    .line 178
    :cond_19
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 181
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-interface {v0, v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 184
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->setDefaultKeyMode(I)V

    .line 185
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    .line 526
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 527
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 528
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 529
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 530
    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 531
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1, p0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 533
    const v1, 0x7f0801a9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    .line 535
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->updateConsumptionAppMenu()V

    .line 538
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v2, Lcom/google/android/finsky/activities/MainActivity$6;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/MainActivity$6;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 545
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->terminate()V

    .line 495
    invoke-super {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onDestroy()V

    .line 496
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 590
    .line 591
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_66

    .line 613
    :pswitch_9
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    .line 616
    :goto_d
    return v1

    .line 593
    :pswitch_e
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->onMyCollectionSelected()V

    goto :goto_d

    .line 596
    :pswitch_12
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const-class v3, Lcom/google/android/finsky/activities/SettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 597
    const/16 v2, 0x1f

    invoke-virtual {p0, v0, v2}, Lcom/google/android/finsky/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 600
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()Lcom/google/android/finsky/navigationmanager/NavigationState;

    move-result-object v0

    sget-object v2, Lcom/google/android/finsky/navigationmanager/NavigationState;->MY_DOWNLOADS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    if-ne v0, v2, :cond_32

    move v0, v1

    :goto_2e
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->chooseAccount(Z)V

    goto :goto_d

    :cond_32
    const/4 v0, 0x0

    goto :goto_2e

    .line 604
    :pswitch_34
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v2, "help"

    invoke-interface {v0, v3, v3, v2}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    sget-object v0, Lcom/google/android/finsky/config/G;->vendingSupportUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 606
    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 608
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 609
    const-string v0, "com.android.browser.application_id"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 591
    nop

    :pswitch_data_66
    .packed-switch 0x7f0801a1
        :pswitch_23
        :pswitch_12
        :pswitch_34
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_e
    .end packed-switch
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 873
    packed-switch p1, :pswitch_data_20

    .line 884
    :goto_3
    return-void

    .line 875
    :pswitch_4
    const-string v0, "error_package_name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 876
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v1

    .line 877
    invoke-interface {v1, v0}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v1

    .line 878
    if-eqz v1, :cond_1b

    .line 879
    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->setStateUninstalling()V

    .line 881
    :cond_1b
    invoke-static {v0}, Lcom/google/android/finsky/utils/PackageManagerHelper;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_3

    .line 873
    nop

    :pswitch_data_20
    .packed-switch 0x20
        :pswitch_4
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 467
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-nez v0, :cond_b

    .line 470
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->handleIntent()V

    .line 476
    :goto_a
    return-void

    .line 473
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    .line 474
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_a
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 621
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_20

    .line 632
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 623
    :sswitch_d
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goUp()V

    goto :goto_c

    .line 626
    :sswitch_13
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->shareButtonClicked(Landroid/app/Activity;)V

    goto :goto_c

    .line 629
    :sswitch_19
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->exploreButtonClicked(Landroid/app/Activity;)V

    goto :goto_c

    .line 621
    nop

    :sswitch_data_20
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f080008 -> :sswitch_13
        0x7f08000a -> :sswitch_19
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 395
    invoke-super {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onPause()V

    .line 396
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/Notifier;->setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V

    .line 397
    invoke-static {}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    .line 398
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 4
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    if-eqz v0, :cond_9

    .line 864
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->onPositiveClick(ILandroid/os/Bundle;)V

    .line 866
    :cond_9
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 550
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 553
    sget-object v0, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 554
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->setupDebugMenu(Landroid/view/Menu;)V

    .line 556
    :cond_14
    sget-object v0, Lcom/google/android/finsky/config/G;->dcbDebugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 557
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->setupDcbDebugMenu(Landroid/view/Menu;)V

    .line 559
    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method protected onReady(Z)V
    .registers 4
    .parameter "shouldHandleIntent"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->deserialize(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 280
    :cond_e
    :goto_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 281
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->initializeBilling()V

    .line 282
    return-void

    .line 275
    :cond_15
    if-eqz p1, :cond_e

    .line 278
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->handleIntent()V

    goto :goto_e
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 410
    invoke-super {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onRestart()V

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    .line 412
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 385
    invoke-super {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onResume()V

    .line 386
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    if-eqz v0, :cond_f

    .line 387
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->refreshPage()V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    .line 390
    :cond_f
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNotificationListener:Lcom/google/android/finsky/utils/NotificationListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/Notifier;->setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V

    .line 391
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mStopPreviewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    invoke-super {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_14

    .line 354
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 358
    :goto_9
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 359
    const-string v0, "last_shown_error_hash"

    iget v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    return-void

    .line 356
    :cond_14
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->serialize(Landroid/os/Bundle;)V

    goto :goto_9
.end method

.method public onSearchRequested()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 892
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->isTosAccepted()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 893
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCustomActionBar()Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->searchButtonClicked(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-super {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onSearchRequested()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_17
    const/4 v0, 0x1

    .line 895
    :cond_18
    return v0
.end method

.method protected onStop()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 500
    invoke-super {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onStop()V

    .line 505
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mStopPreviewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 509
    iget v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    if-ne v0, v2, :cond_1b

    .line 510
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->drainAllRequests(I)V

    .line 515
    :goto_1a
    return-void

    .line 512
    :cond_1b
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->drainAllRequests(I)V

    .line 513
    iput v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    goto :goto_1a
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .parameter "title"
    .parameter "message"
    .parameter "goBack"

    .prologue
    const/4 v2, 0x0

    .line 762
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 763
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-eqz v1, :cond_1c

    .line 767
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    .line 769
    .local v0, activePage:Lcom/google/android/finsky/fragments/PageFragment;
    if-eqz v0, :cond_1b

    .line 770
    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->refreshOnResume()V

    .line 778
    .end local v0           #activePage:Lcom/google/android/finsky/fragments/PageFragment;
    :cond_1b
    :goto_1b
    return-void

    .line 773
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p2, p3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_1b

    .line 776
    :cond_25
    const-string v1, "Unknown error with empty error message."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .registers 3
    .parameter "breadcrumb"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->updateConsumptionAppMenu()V

    .line 371
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .registers 3
    .parameter "backend"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 376
    return-void
.end method
