.class public Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;
.super Lcom/google/android/finsky/activities/PhoneskyActivity;
.source "DcbDebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;
    }
.end annotation


# static fields
.field private static final GSERVICES_DETAILS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCredStatus:Landroid/widget/RatingBar;

.field private mDcbParamStatus:Landroid/widget/RatingBar;

.field private mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field private mProvStatus:Landroid/widget/RatingBar;

.field private final updateStatusRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;

    sget-object v3, Lcom/google/android/finsky/config/G;->vendingDcbConnectionType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-direct {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;-><init>(Lcom/google/android/finsky/config/GservicesValue;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;

    sget-object v3, Lcom/google/android/finsky/config/G;->vendingDcbProxyHost:Lcom/google/android/finsky/config/GservicesValue;

    invoke-direct {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;-><init>(Lcom/google/android/finsky/config/GservicesValue;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;

    sget-object v3, Lcom/google/android/finsky/config/G;->vendingDcbProxyPort:Lcom/google/android/finsky/config/GservicesValue;

    invoke-direct {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;-><init>(Lcom/google/android/finsky/config/GservicesValue;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;

    sget-object v3, Lcom/google/android/finsky/config/G;->vendingCarrierCredentialsBufferMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-direct {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;-><init>(Lcom/google/android/finsky/config/GservicesValue;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;

    sget-object v3, Lcom/google/android/finsky/config/G;->vendingCarrierProvisioningRefreshFrequencyMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-direct {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;-><init>(Lcom/google/android/finsky/config/GservicesValue;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;

    sget-object v3, Lcom/google/android/finsky/config/G;->vendingCarrierProvisioningRetryMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-direct {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;-><init>(Lcom/google/android/finsky/config/GservicesValue;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->GSERVICES_DETAILS:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;-><init>()V

    .line 59
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshCredentials(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshProvisioning(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshDcbParams(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->displayProvisioning()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->displayCredentials()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->displayDcbParams()V

    return-void
.end method

.method static synthetic access$800()Ljava/util/Collection;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->GSERVICES_DETAILS:Ljava/util/Collection;

    return-object v0
.end method

.method private displayCredentials()V
    .registers 5

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 338
    .local v1, ft:Landroid/support/v4/app/FragmentTransaction;
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v2

    const-string v3, "cred"

    invoke-direct {v0, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    .local v0, extractor:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;
    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;

    const-string v3, "Credentials"

    invoke-direct {v2, v0, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;Ljava/lang/String;)V

    const-string v3, "showCredentials"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method private displayDcbParams()V
    .registers 5

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 319
    .local v1, ft:Landroid/support/v4/app/FragmentTransaction;
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v2

    const-string v3, "dcb"

    invoke-direct {v0, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    .local v0, extractor:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;
    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;

    const-string v3, "DCB Params"

    invoke-direct {v2, v0, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;Ljava/lang/String;)V

    const-string v3, "showDcbParams"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method private displayProvisioning()V
    .registers 5

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 328
    .local v1, ft:Landroid/support/v4/app/FragmentTransaction;
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v2

    const-string v3, "prov"

    invoke-direct {v0, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    .local v0, extractor:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;
    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;

    const-string v3, "Provisioning"

    invoke-direct {v2, v0, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;Ljava/lang/String;)V

    const-string v3, "showProvisioning"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 332
    return-void
.end method

.method private handleMenuClearItem(I)V
    .registers 6
    .parameter "whichField"

    .prologue
    .line 268
    sparse-switch p1, :sswitch_data_28

    .line 279
    const-string v0, "Got unexpected whichField %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    :goto_12
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatus()V

    .line 282
    return-void

    .line 270
    :sswitch_16
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->clearParams()V

    goto :goto_12

    .line 273
    :sswitch_1c
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->clearProvisioning()V

    goto :goto_12

    .line 276
    :sswitch_22
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->clearCredentials()V

    goto :goto_12

    .line 268
    :sswitch_data_28
    .sparse-switch
        0x10 -> :sswitch_16
        0x20 -> :sswitch_1c
        0x30 -> :sswitch_22
    .end sparse-switch
.end method

.method private handleMenuRefreshItem(I)V
    .registers 6
    .parameter "whichField"

    .prologue
    .line 285
    sparse-switch p1, :sswitch_data_2c

    .line 296
    const-string v0, "Got unexpected whichField %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :goto_12
    return-void

    .line 287
    :sswitch_13
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshDcbParams(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_12

    .line 290
    :sswitch_1b
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshProvisioning(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_12

    .line 293
    :sswitch_23
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshCredentials(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_12

    .line 285
    nop

    :sswitch_data_2c
    .sparse-switch
        0x10 -> :sswitch_13
        0x20 -> :sswitch_1b
        0x30 -> :sswitch_23
    .end sparse-switch
.end method

.method private handleMenuViewDetails(I)V
    .registers 6
    .parameter "whichField"

    .prologue
    .line 301
    sparse-switch p1, :sswitch_data_20

    .line 312
    const-string v0, "Got unexpected whichField %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :goto_12
    return-void

    .line 303
    :sswitch_13
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->displayDcbParams()V

    goto :goto_12

    .line 306
    :sswitch_17
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->displayProvisioning()V

    goto :goto_12

    .line 309
    :sswitch_1b
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->displayCredentials()V

    goto :goto_12

    .line 301
    nop

    :sswitch_data_20
    .sparse-switch
        0x10 -> :sswitch_13
        0x20 -> :sswitch_17
        0x30 -> :sswitch_1b
    .end sparse-switch
.end method

.method private refreshAllInfo()V
    .registers 4

    .prologue
    .line 102
    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$2;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    .line 109
    .local v2, postRefreshProvRunnable:Ljava/lang/Runnable;
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$3;

    invoke-direct {v1, p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$3;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;)V

    .line 116
    .local v1, postRefreshDcbParamsRunnable:Ljava/lang/Runnable;
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$4;

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$4;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;)V

    .line 125
    .local v0, postInitStorageRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingLocator;->initCarrierBillingStorage(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method private refreshCredentials(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 7
    .parameter "successRunnable"
    .parameter "errorRunnable"

    .prologue
    .line 354
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;

    const-string v1, "Error refreshing credentials"

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 355
    .local v0, errorRunner:Ljava/lang/Runnable;
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;-><init>()V

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getProvisioningId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;->run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method

.method private refreshDcbParams(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 7
    .parameter "successRunnable"
    .parameter "errorRunnable"

    .prologue
    .line 366
    new-instance v0, Lcom/google/android/finsky/activities/GetMarketMetadataAction;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;-><init>()V

    .line 367
    .local v0, sendMetadataAction:Lcom/google/android/finsky/activities/GetMarketMetadataAction;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;)V

    new-instance v3, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$10;

    invoke-direct {v3, p0, p2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$10;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;->run(Landroid/content/Context;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 382
    return-void
.end method

.method private refreshProvisioning(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 5
    .parameter "successRunnable"
    .parameter "errorRunnable"

    .prologue
    .line 361
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;

    const-string v1, "Error refreshing provisioning"

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 362
    .local v0, errorRunner:Ljava/lang/Runnable;
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->forceRun(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method private updateStatus()V
    .registers 8

    .prologue
    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    .line 345
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-static {v3}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v1

    .line 346
    .local v1, isProvisioned:Z
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-static {v3}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->areCredentialsValid(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v2

    .line 347
    .local v2, validCredentials:Z
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v3

    if-eqz v3, :cond_30

    const/4 v0, 0x1

    .line 348
    .local v0, hasDcbParams:Z
    :goto_18
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mProvStatus:Landroid/widget/RatingBar;

    if-eqz v1, :cond_32

    move v3, v4

    :goto_1d
    invoke-virtual {v6, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 349
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mCredStatus:Landroid/widget/RatingBar;

    if-eqz v2, :cond_34

    move v3, v4

    :goto_25
    invoke-virtual {v6, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 350
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbParamStatus:Landroid/widget/RatingBar;

    if-eqz v0, :cond_36

    :goto_2c
    invoke-virtual {v3, v4}, Landroid/widget/RatingBar;->setRating(F)V

    .line 351
    return-void

    .line 347
    .end local v0           #hasDcbParams:Z
    :cond_30
    const/4 v0, 0x0

    goto :goto_18

    .restart local v0       #hasDcbParams:Z
    :cond_32
    move v3, v5

    .line 348
    goto :goto_1d

    :cond_34
    move v3, v5

    .line 349
    goto :goto_25

    :cond_36
    move v4, v5

    .line 350
    goto :goto_2c
.end method

.method private static whichField(Landroid/view/View;)I
    .registers 5
    .parameter "v"

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 210
    const-string v0, "Unknown view id %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    const/4 v0, -0x1

    :goto_1b
    return v0

    .line 202
    :pswitch_1c
    const/16 v0, 0x20

    goto :goto_1b

    .line 205
    :pswitch_1f
    const/16 v0, 0x30

    goto :goto_1b

    .line 208
    :pswitch_22
    const/16 v0, 0x10

    goto :goto_1b

    .line 199
    nop

    :pswitch_data_26
    .packed-switch 0x7f080099
        :pswitch_22
        :pswitch_22
        :pswitch_1c
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 249
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    and-int/lit8 v0, v3, 0xf

    .line 250
    .local v0, itemId:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    and-int/lit16 v1, v3, 0xf0

    .line 252
    .local v1, whichField:I
    packed-switch v0, :pswitch_data_22

    .line 263
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_14
    return v2

    .line 254
    :pswitch_15
    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->handleMenuViewDetails(I)V

    goto :goto_14

    .line 257
    :pswitch_19
    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->handleMenuRefreshItem(I)V

    goto :goto_14

    .line 260
    :pswitch_1d
    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->handleMenuClearItem(I)V

    goto :goto_14

    .line 252
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_15
        :pswitch_19
        :pswitch_1d
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f08009c

    const v4, 0x7f08009b

    const v3, 0x7f08009a

    const v2, 0x7f080099

    const/4 v1, 0x0

    .line 130
    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->setContentView(I)V

    .line 131
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mProvStatus:Landroid/widget/RatingBar;

    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mProvStatus:Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setEnabled(Z)V

    .line 135
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mCredStatus:Landroid/widget/RatingBar;

    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mCredStatus:Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setEnabled(Z)V

    .line 137
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbParamStatus:Landroid/widget/RatingBar;

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbParamStatus:Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setEnabled(Z)V

    .line 140
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    .line 142
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 144
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 145
    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 146
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 147
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 149
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$5;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$6;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$6;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$7;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$7;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 219
    invoke-static {p2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->whichField(Landroid/view/View;)I

    move-result v3

    .line 221
    .local v3, whichField:I
    const/4 v2, 0x0

    .line 223
    .local v2, refreshEnabled:Z
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-static {v6}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v1

    .line 224
    .local v1, isProvisioned:Z
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v6

    if-eqz v6, :cond_49

    move v0, v4

    .line 227
    .local v0, hasDcbParams:Z
    :goto_16
    const/16 v6, 0x20

    if-ne v3, v6, :cond_1d

    if-eqz v0, :cond_1d

    .line 228
    const/4 v2, 0x1

    .line 231
    :cond_1d
    const/16 v6, 0x30

    if-ne v3, v6, :cond_26

    if-eqz v0, :cond_26

    if-eqz v1, :cond_26

    .line 232
    const/4 v2, 0x1

    .line 235
    :cond_26
    const/16 v6, 0x10

    if-ne v3, v6, :cond_2b

    .line 236
    const/4 v2, 0x1

    .line 239
    :cond_2b
    or-int/lit8 v6, v3, 0x1

    const v7, 0x7f07007e

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 241
    or-int/lit8 v6, v3, 0x2

    const v7, 0x7f070080

    invoke-interface {p1, v5, v6, v4, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 243
    or-int/lit8 v4, v3, 0x3

    const/4 v6, 0x2

    const v7, 0x7f070081

    invoke-interface {p1, v5, v4, v6, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 245
    return-void

    .end local v0           #hasDcbParams:Z
    :cond_49
    move v0, v5

    .line 224
    goto :goto_16
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 85
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 86
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 97
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 94
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshAllInfo()V

    .line 95
    const/4 v0, 0x1

    goto :goto_b

    .line 92
    nop

    :pswitch_data_12
    .packed-switch 0x7f0801aa
        :pswitch_c
    .end packed-switch
.end method

.method protected onReady(Z)V
    .registers 2
    .parameter "shouldHandleIntent"

    .prologue
    .line 186
    return-void
.end method