.class public Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;
.super Ljava/lang/Object;
.source "MyPurchasesHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;
.implements Lcom/google/android/youtube/videos/PinManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$6;,
        Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesGridViewWrapper;,
        Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;,
        Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;,
        Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

.field private final analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

.field private bytesFree:J

.field private downloadPolicyDialogHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;

.field private downloadPolicyDialogShown:Z

.field private final downloadStreamLengthRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final emptyStatusMessage:I

.field private enterOfflineModeWhenPossible:Z

.field private expiredEntryCount:I

.field private final localPurchasesCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation
.end field

.field private final navigation:Lcom/google/android/youtube/videos/Navigation;

.field private final offlineChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineFooter:Landroid/view/View;

.field private final offlineManagementModeListener:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;

.field private final pinManager:Lcom/google/android/youtube/videos/PinManager;

.field private pinManagerRestored:Z

.field private final preferences:Landroid/content/SharedPreferences;

.field private final purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

.field private final purchasesViewWrapper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;

.field private final remotePurchasesCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation
.end field

.field private request:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

.field private final statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

.field private final storageIndicator:Landroid/widget/ProgressBar;

.field private final storageLabel:Landroid/widget/TextView;

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field private final videoSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final videosSeen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/content/SharedPreferences;Landroid/view/View;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;Landroid/view/View;ILcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/VideosAnalytics;Lcom/google/android/youtube/videos/VideosPlatformUtil;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;)V
    .registers 24
    .parameter "activity"
    .parameter "navigation"
    .parameter "preferences"
    .parameter "offlineFooter"
    .parameter "purchasesViewWrapper"
    .parameter "statusView"
    .parameter "emptyStatusMessage"
    .parameter "adapter"
    .parameter "requesters"
    .parameter "purchaseStore"
    .parameter "drmManager"
    .parameter "analytics"
    .parameter "videosPlatformUtil"
    .parameter "offlineManagementModeListener"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManagerRestored:Z

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->enterOfflineModeWhenPossible:Z

    .line 152
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    .line 153
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    .line 154
    iput-object p2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->navigation:Lcom/google/android/youtube/videos/Navigation;

    .line 155
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    .line 156
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    .line 157
    iput-object p5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->purchasesViewWrapper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;

    .line 158
    move-object/from16 v0, p8

    invoke-interface {p5, v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;->setAdapter(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;)V

    .line 159
    invoke-interface {p5, p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    move/from16 v0, p7

    iput v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->emptyStatusMessage:I

    .line 162
    invoke-static {p1, p6, p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->createFromParent(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)Lcom/google/android/youtube/core/ui/StatusHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    .line 163
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/ui/StatusHelper;->init()V

    .line 165
    iput-object p3, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->preferences:Landroid/content/SharedPreferences;

    .line 166
    const-string v1, "download_policy_dialog_shown"

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->downloadPolicyDialogShown:Z

    .line 169
    invoke-interface/range {p9 .. p9}, Lcom/google/android/youtube/videos/Requesters;->getDownloadStreamLengthRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->downloadStreamLengthRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 171
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->createLocalPurchasesCallback()Lcom/google/android/youtube/core/async/Callback;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->localPurchasesCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 172
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->createRemotePurchasesCallback()Lcom/google/android/youtube/core/async/Callback;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->remotePurchasesCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    .line 175
    new-instance v1, Lcom/google/android/youtube/videos/PinManager;

    move-object v2, p1

    move-object/from16 v3, p13

    move-object v4, p3

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/youtube/videos/PinManager;-><init>(Landroid/content/Context;Lcom/google/android/youtube/videos/VideosPlatformUtil;Landroid/content/SharedPreferences;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/PinManager$Listener;)V

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    .line 177
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineManagementModeListener:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;

    .line 178
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    .line 180
    iput-object p4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineFooter:Landroid/view/View;

    .line 181
    const v1, 0x7f0d0023

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$1;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$1;-><init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v1, 0x7f0d0027

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->storageLabel:Landroid/widget/TextView;

    .line 189
    const v1, 0x7f0d0025

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->storageIndicator:Landroid/widget/ProgressBar;

    .line 190
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->storageIndicator:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 192
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    .line 194
    new-instance v2, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/VideosApplication;->mobileDownloadsEnabled()Z

    move-result v1

    invoke-direct {v2, p0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;-><init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Z)V

    iput-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->downloadPolicyDialogHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->commitOfflineChanges()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->downloadPolicyDialogShown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updateOfflineFooter()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->requestStillValid(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onPurchases(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Lcom/google/android/youtube/core/async/Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->remotePurchasesCallback:Lcom/google/android/youtube/core/async/Callback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Lcom/google/android/youtube/videos/store/PurchaseStore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Ljava/lang/Exception;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onRemotePurchasesError(Ljava/lang/Exception;)V

    return-void
.end method

.method private cancelOfflineChanges()V
    .registers 4

    .prologue
    .line 402
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 403
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 404
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 405
    .local v1, videoId:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 406
    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updatePinState(Ljava/lang/String;)V

    goto :goto_a

    .line 408
    .end local v1           #videoId:Ljava/lang/String;
    :cond_1d
    return-void
.end method

.method private commitOfflineChanges()V
    .registers 8

    .prologue
    .line 411
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 442
    :goto_8
    return-void

    .line 414
    :cond_9
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 415
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v6, 0x7f0b0019

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->cancelOfflineChanges()V

    goto :goto_8

    .line 420
    :cond_23
    const/4 v1, 0x0

    .line 421
    .local v1, pinningSomething:Z
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 422
    .local v3, videoId:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 423
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v4, v3}, Lcom/google/android/youtube/videos/PinManager;->getState(Ljava/lang/String;)Lcom/google/android/youtube/videos/PinManager$PinState;

    move-result-object v2

    .line 424
    .local v2, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    invoke-virtual {v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 425
    const/4 v1, 0x1

    .line 431
    .end local v2           #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    .end local v3           #videoId:Ljava/lang/String;
    :cond_55
    if-eqz v1, :cond_6a

    iget-boolean v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->downloadPolicyDialogShown:Z

    if-nez v4, :cond_6a

    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/youtube/core/utils/Util;->isMobileNetworkCapable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 432
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    .line 437
    :cond_6a
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 438
    .restart local v3       #videoId:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v3, v4}, Lcom/google/android/youtube/videos/PinManager;->setPinned(Ljava/lang/String;Z)V

    .line 439
    invoke-direct {p0, v3}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updatePinState(Ljava/lang/String;)V

    goto :goto_74

    .line 441
    .end local v3           #videoId:Ljava/lang/String;
    :cond_95
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    goto/16 :goto_8
.end method

.method private createLocalPurchasesCallback()Lcom/google/android/youtube/core/async/Callback;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 637
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;-><init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    return-object v0
.end method

.method private createRemotePurchasesCallback()Lcom/google/android/youtube/core/async/Callback;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 654
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$5;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$5;-><init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    return-object v0
.end method

.method private getDownloadStatus(Lcom/google/android/youtube/videos/PinManager$PinState;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;
    .registers 7
    .parameter "state"

    .prologue
    .line 471
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getBytesDownloaded()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    invoke-virtual {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->fileExists()Z

    move-result v1

    if-nez v1, :cond_13

    .line 472
    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->MISSING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    .line 489
    :goto_12
    return-object v1

    .line 475
    :cond_13
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getDownloadStatus()Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move-result-object v0

    .line 476
    .local v0, downloadStatus:Lcom/google/android/youtube/core/transfer/Transfer$Status;
    if-eqz v0, :cond_28

    .line 477
    sget-object v1, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$6;->$SwitchMap$com$google$android$youtube$core$transfer$Transfer$Status:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getDownloadStatus()Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/transfer/Transfer$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_40

    .line 489
    :cond_28
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_3d

    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->PENDING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    goto :goto_12

    .line 479
    :pswitch_31
    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->RUNNING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    goto :goto_12

    .line 481
    :pswitch_34
    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->PENDING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    goto :goto_12

    .line 483
    :pswitch_37
    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->FAILED:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    goto :goto_12

    .line 485
    :pswitch_3a
    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->COMPLETED:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    goto :goto_12

    .line 489
    :cond_3d
    const/4 v1, 0x0

    goto :goto_12

    .line 477
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
    .end packed-switch
.end method

.method private isPinned(Ljava/lang/String;)Z
    .registers 4
    .parameter "videoId"

    .prologue
    .line 493
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 494
    .local v0, pendingPinState:Ljava/lang/Boolean;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_e
    return v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/videos/PinManager;->getState(Ljava/lang/String;)Lcom/google/android/youtube/videos/PinManager$PinState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned()Z

    move-result v1

    goto :goto_e
.end method

.method private makeRequest()V
    .registers 6

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    const-wide/32 v1, 0x5265c00

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/videos/store/PurchaseRequests;->createActiveAndRecentlyExpiredPurchasesRequest(Lcom/google/android/youtube/core/model/UserAuth;J)Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->request:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->request:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->localPurchasesCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/videos/store/PurchaseStore;->getStoredPurchases(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 224
    return-void
.end method

.method private onPurchase(Lcom/google/android/youtube/core/model/Purchase;Z)V
    .registers 9
    .parameter "purchase"
    .parameter "expired"

    .prologue
    .line 286
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 288
    .local v0, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 289
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    if-eqz v1, :cond_34

    .line 292
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;

    invoke-direct {v5, p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;-><init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/videos/store/PurchaseStore;->getPoster(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V

    .line 305
    :cond_34
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 306
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->downloadStreamLengthRequester:Lcom/google/android/youtube/core/async/Requester;

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;

    invoke-direct {v4, p0, v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;-><init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Lcom/google/android/youtube/core/model/Video;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v1, p1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 320
    :cond_5c
    return-void
.end method

.method private onPurchases(Ljava/util/List;)V
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, response:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/youtube/core/model/Purchase;>;"
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 243
    .local v5, now:Ljava/util/Date;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_7a

    .line 244
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/youtube/core/model/Purchase;

    .line 245
    .local v6, purchase:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v10, v6, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v10}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v10

    if-eqz v10, :cond_29

    iget-object v10, v6, Lcom/google/android/youtube/core/model/Purchase;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    if-nez v10, :cond_44

    .line 247
    :cond_29
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "filtering out purchase "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 243
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 249
    :cond_44
    iget-object v10, v6, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v10, v10, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_76

    move v2, v8

    .line 250
    .local v2, hasStreams:Z
    :goto_4f
    invoke-virtual {v6, v5}, Lcom/google/android/youtube/core/model/Purchase;->isExpired(Ljava/util/Date;)Z

    move-result v4

    .line 251
    .local v4, isExpired:Z
    if-eqz v4, :cond_78

    iget-object v10, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    iget-object v11, v6, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v11, v11, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_78

    iget v10, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->expiredEntryCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->expiredEntryCount:I

    const/4 v11, 0x5

    if-le v10, v11, :cond_78

    move v1, v8

    .line 254
    .local v1, filterAsExpired:Z
    :goto_6b
    if-eqz v2, :cond_41

    if-nez v1, :cond_41

    .line 255
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-direct {p0, v6, v4}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onPurchase(Lcom/google/android/youtube/core/model/Purchase;Z)V

    goto :goto_41

    .end local v1           #filterAsExpired:Z
    .end local v2           #hasStreams:Z
    .end local v4           #isExpired:Z
    :cond_76
    move v2, v9

    .line 249
    goto :goto_4f

    .restart local v2       #hasStreams:Z
    .restart local v4       #isExpired:Z
    :cond_78
    move v1, v9

    .line 251
    goto :goto_6b

    .line 261
    .end local v2           #hasStreams:Z
    .end local v4           #isExpired:Z
    .end local v6           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    :cond_7a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_90

    .line 262
    iget-object v8, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v8}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isEmpty()Z

    move-result v7

    .line 263
    .local v7, wasEmpty:Z
    iget-object v8, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v8, v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->addAndSort(Ljava/util/ArrayList;)V

    .line 264
    if-eqz v7, :cond_90

    .line 265
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onHasEntries()V

    .line 269
    .end local v7           #wasEmpty:Z
    :cond_90
    iget-object v8, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v8}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9d

    .line 270
    iget-object v8, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v8}, Lcom/google/android/youtube/core/ui/StatusHelper;->hide()V

    .line 272
    :cond_9d
    return-void
.end method

.method private onRemotePurchasesError(Ljava/lang/Exception;)V
    .registers 5
    .parameter "exception"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 276
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 277
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/core/ErrorHelper;->humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/ui/StatusHelper;->setErrorMessage(Ljava/lang/String;Z)V

    .line 283
    :cond_24
    return-void
.end method

.method private requestStillValid(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Z
    .registers 4
    .parameter "request"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private setPinState(Ljava/lang/String;Z)V
    .registers 14
    .parameter "videoId"
    .parameter "pin"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 379
    if-eqz p2, :cond_4b

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isOfflineManagement()Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->bytesFree:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_4b

    .line 381
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v6, 0x7f0b00f6

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 399
    :goto_4a
    return-void

    .line 387
    :cond_4b
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v2, p1}, Lcom/google/android/youtube/videos/PinManager;->getState(Ljava/lang/String;)Lcom/google/android/youtube/videos/PinManager$PinState;

    move-result-object v0

    .line 388
    .local v0, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    if-nez p2, :cond_7d

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager$PinState;->getDownloadStatus()Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move-result-object v2

    sget-object v4, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v2, v4, :cond_6f

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager$PinState;->getDownloadStatus()Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move-result-object v2

    sget-object v4, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v2, v4, :cond_7d

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager$PinState;->fileExists()Z

    move-result v2

    if-nez v2, :cond_7d

    .line 391
    .local v1, unpinningFromErrorState:Z
    :cond_6f
    :goto_6f
    if-eqz v1, :cond_7f

    .line 393
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/youtube/videos/PinManager;->setPinned(Ljava/lang/String;Z)V

    .line 397
    :goto_76
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updatePinState(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updateOfflineFooter()V

    goto :goto_4a

    .end local v1           #unpinningFromErrorState:Z
    :cond_7d
    move v1, v3

    .line 388
    goto :goto_6f

    .line 395
    .restart local v1       #unpinningFromErrorState:Z
    :cond_7f
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76
.end method

.method private showNetworkDependentErrorToast(Ljava/lang/String;)V
    .registers 5
    .parameter "errorIfNetwork"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    .end local p1
    :goto_a
    invoke-static {v0, p1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 623
    return-void

    .line 621
    .restart local p1
    :cond_e
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_a
.end method

.method private updateOfflineFooter()V
    .registers 16

    .prologue
    const-wide/16 v13, 0x0

    .line 445
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v5}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isOfflineManagement()Z

    move-result v5

    if-nez v5, :cond_b

    .line 460
    :goto_a
    return-void

    .line 449
    :cond_b
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v5}, Lcom/google/android/youtube/videos/PinManager;->getTotalBytes()J

    move-result-wide v2

    .line 450
    .local v2, totalBytes:J
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v5}, Lcom/google/android/youtube/videos/PinManager;->getAvailableBytes()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->bytesFree:J

    .line 451
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 452
    .local v4, videoId:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->isPinned(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 453
    iget-wide v6, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->bytesFree:J

    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v5, v6, v8

    iput-wide v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->bytesFree:J

    goto :goto_23

    .line 456
    .end local v4           #videoId:Ljava/lang/String;
    :cond_50
    iget-wide v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->bytesFree:J

    cmp-long v5, v5, v13

    if-gtz v5, :cond_7e

    const/16 v1, 0x64

    .line 457
    .local v1, progress:I
    :goto_58
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->storageIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 458
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->storageLabel:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v7, 0x7f0b00f5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-wide v11, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->bytesFree:J

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 456
    .end local v1           #progress:I
    :cond_7e
    const-wide/high16 v5, 0x4059

    iget-wide v7, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->bytesFree:J

    sub-long v7, v2, v7

    long-to-double v7, v7

    mul-double/2addr v5, v7

    long-to-double v7, v2

    div-double/2addr v5, v7

    double-to-int v1, v5

    goto :goto_58
.end method

.method private updatePinState(Ljava/lang/String;)V
    .registers 11
    .parameter "videoId"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/PinManager;->getState(Ljava/lang/String;)Lcom/google/android/youtube/videos/PinManager$PinState;

    move-result-object v8

    .line 464
    .local v8, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    invoke-virtual {v8}, Lcom/google/android/youtube/videos/PinManager$PinState;->getBytesTotal()J

    move-result-wide v6

    .line 465
    .local v6, bytesTotal:J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_24

    const/4 v4, 0x0

    .line 466
    .local v4, progress:I
    :goto_11
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->isPinned(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v8}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->getDownloadStatus(Lcom/google/android/youtube/videos/PinManager$PinState;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/youtube/videos/PinManager$PinState;->getLicenseExpirationDate()Ljava/util/Date;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->setPinState(Ljava/lang/String;ZLcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;ILjava/util/Date;)V

    .line 468
    return-void

    .line 465
    .end local v4           #progress:I
    :cond_24
    invoke-virtual {v8}, Lcom/google/android/youtube/videos/PinManager$PinState;->getBytesDownloaded()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    long-to-int v4, v0

    goto :goto_11
.end method


# virtual methods
.method public final init(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter "userAuth"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->reset()V

    .line 200
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserAuth;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/StatusHelper;->setLoading()V

    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/PinManager;->init(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 204
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 626
    const/16 v0, 0x16

    if-ne p1, v0, :cond_b

    .line 627
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->downloadPolicyDialogHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->access$400(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 629
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager;->onDestroy()V

    .line 499
    return-void
.end method

.method public onDirectoryMountedChange()V
    .registers 4

    .prologue
    .line 524
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/PinManager;->isDownloadDirectoryMounted()Z

    move-result v2

    if-nez v2, :cond_c

    .line 525
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->setOfflineManagement(Z)V

    .line 527
    :cond_c
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/PinManager;->getStates()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 528
    .local v1, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    invoke-virtual {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updatePinState(Ljava/lang/String;)V

    goto :goto_1a

    .line 530
    .end local v1           #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    :cond_2e
    return-void
.end method

.method protected onHasEntries()V
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->purchasesViewWrapper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;->setVisibility(I)V

    .line 328
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Purchase;

    iget-object v0, v1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 362
    .local v0, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isExpired(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 363
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    sget-object v2, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->ExpiredRental:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackToShopEvent(Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;)V

    .line 364
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startShopForVideoDetails(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 375
    :goto_22
    return-void

    .line 367
    :cond_23
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isOfflineManagement()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 368
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->isPinned(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    const/4 v1, 0x1

    :goto_36
    invoke-direct {p0, v2, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->setPinState(Ljava/lang/String;Z)V

    goto :goto_22

    :cond_3a
    const/4 v1, 0x0

    goto :goto_36

    .line 369
    :cond_3c
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/videos/PinManager;->getState(Ljava/lang/String;)Lcom/google/android/youtube/videos/PinManager$PinState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->isOperationInProgress()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 370
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->isPinned(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    const v1, 0x7f0b00f1

    :goto_57
    invoke-static {v2, v1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;I)V

    goto :goto_22

    :cond_5b
    const v1, 0x7f0b00f2

    goto :goto_57

    .line 373
    :cond_5f
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->navigation:Lcom/google/android/youtube/videos/Navigation;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/youtube/videos/Navigation;->toWatch(Ljava/lang/String;)V

    goto :goto_22
.end method

.method protected onNoEntries()V
    .registers 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    iget v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->emptyStatusMessage:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/ui/StatusHelper;->setErrorMessage(IZ)V

    .line 324
    return-void
.end method

.method public onPinErrorInsufficientSpace(Ljava/lang/String;)V
    .registers 11
    .parameter "videoId"

    .prologue
    .line 554
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 555
    .local v0, video:Lcom/google/android/youtube/core/model/Video;
    if-eqz v0, :cond_39

    .line 556
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    const-string v2, "PinError"

    const-string v3, "InsufficientSpace"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v3, 0x7f0b00f6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    iget-object v8, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/youtube/videos/PinManager;->getState(Ljava/lang/String;)Lcom/google/android/youtube/videos/PinManager$PinState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/youtube/videos/PinManager$PinState;->getBytesTotal()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 561
    :cond_39
    return-void
.end method

.method public onPinErrorLicenseException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 11
    .parameter "videoId"
    .parameter "exception"

    .prologue
    .line 576
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/Video;

    .line 577
    .local v3, video:Lcom/google/android/youtube/core/model/Video;
    if-eqz v3, :cond_47

    .line 578
    const v2, 0x7f0b00e8

    .line 579
    .local v2, errorId:I
    const/4 v0, -0x1

    .line 580
    .local v0, cgiError:I
    instance-of v4, p2, Lcom/google/android/youtube/videos/DrmException;

    if-eqz v4, :cond_2f

    move-object v1, p2

    .line 581
    check-cast v1, Lcom/google/android/youtube/videos/DrmException;

    .line 582
    .local v1, drmException:Lcom/google/android/youtube/videos/DrmException;
    sget-object v4, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$6;->$SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I

    iget-object v5, v1, Lcom/google/android/youtube/videos/DrmException;->drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;

    invoke-virtual {v5}, Lcom/google/android/youtube/videos/DrmException$DrmError;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_54

    .line 595
    :goto_22
    iget v0, v1, Lcom/google/android/youtube/videos/DrmException;->errorCode:I

    .line 596
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    const-string v5, "PinError"

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .end local v1           #drmException:Lcom/google/android/youtube/videos/DrmException;
    :cond_2f
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v2, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->showNetworkDependentErrorToast(Ljava/lang/String;)V

    .line 600
    .end local v0           #cgiError:I
    .end local v2           #errorId:I
    :cond_47
    return-void

    .line 584
    .restart local v0       #cgiError:I
    .restart local v1       #drmException:Lcom/google/android/youtube/videos/DrmException;
    .restart local v2       #errorId:I
    :pswitch_48
    const v2, 0x7f0b00ea

    .line 585
    goto :goto_22

    .line 587
    :pswitch_4c
    const v2, 0x7f0b00ec

    .line 588
    goto :goto_22

    .line 592
    :pswitch_50
    const v2, 0x7f0b00ee

    goto :goto_22

    .line 582
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_48
        :pswitch_4c
        :pswitch_50
        :pswitch_50
    .end packed-switch
.end method

.method public onPinErrorNoActivePurchaseException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 9
    .parameter "videoId"
    .parameter "exception"

    .prologue
    .line 603
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 604
    .local v0, video:Lcom/google/android/youtube/core/model/Video;
    if-eqz v0, :cond_27

    .line 605
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    const-string v2, "PinError"

    const-string v3, "NoActivePurchase"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0b00ed

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->showNetworkDependentErrorToast(Ljava/lang/String;)V

    .line 609
    :cond_27
    return-void
.end method

.method public onPinErrorUnsupportedVideoFormat(Ljava/lang/String;)V
    .registers 8
    .parameter "videoId"

    .prologue
    .line 612
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 613
    .local v0, video:Lcom/google/android/youtube/core/model/Video;
    if-eqz v0, :cond_27

    .line 614
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    const-string v2, "PinError"

    const-string v3, "UnsupportedFormat"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0b00eb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->showNetworkDependentErrorToast(Ljava/lang/String;)V

    .line 618
    :cond_27
    return-void
.end method

.method public onPinErrorVideoNotPlayable(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$State;)V
    .registers 10
    .parameter "videoId"
    .parameter "state"

    .prologue
    .line 539
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    .line 540
    .local v1, video:Lcom/google/android/youtube/core/model/Video;
    if-eqz v1, :cond_2f

    .line 542
    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->COUNTRY_RESTRICTED:Lcom/google/android/youtube/core/model/Video$State;

    if-ne p2, v2, :cond_30

    .line 543
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v3, 0x7f0b00ec

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, error:Ljava/lang/String;
    :goto_1f
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    const-string v3, "PinError"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 551
    .end local v0           #error:Ljava/lang/String;
    :cond_2f
    return-void

    .line 546
    :cond_30
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget v3, p2, Lcom/google/android/youtube/core/model/Video$State;->explanationId:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #error:Ljava/lang/String;
    goto :goto_1f
.end method

.method public onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 533
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getVideoId()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, videoId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updatePinState(Ljava/lang/String;)V

    .line 535
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updateOfflineFooter()V

    .line 536
    return-void
.end method

.method public onRestored()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 504
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v2, :cond_6

    .line 521
    :goto_5
    return-void

    .line 509
    :cond_6
    iput-boolean v6, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManagerRestored:Z

    .line 510
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/PinManager;->getStates()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 511
    .local v1, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    invoke-virtual {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updatePinState(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getBytesTotal()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    .line 513
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getBytesTotal()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 516
    .end local v1           #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    :cond_45
    iget-boolean v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->enterOfflineModeWhenPossible:Z

    if-eqz v2, :cond_4f

    .line 517
    invoke-virtual {p0, v6}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->setOfflineManagement(Z)V

    .line 518
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->enterOfflineModeWhenPossible:Z

    .line 520
    :cond_4f
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->makeRequest()V

    goto :goto_5
.end method

.method public onRetry()V
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_c

    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/StatusHelper;->setLoading()V

    .line 213
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->makeRequest()V

    .line 215
    :cond_c
    return-void
.end method

.method public onUnpinError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 10
    .parameter "videoId"
    .parameter "exception"

    .prologue
    .line 564
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    .line 565
    .local v1, video:Lcom/google/android/youtube/core/model/Video;
    if-eqz v1, :cond_30

    .line 566
    instance-of v2, p2, Lcom/google/android/youtube/videos/DrmException;

    if-eqz v2, :cond_1c

    move-object v0, p2

    .line 567
    check-cast v0, Lcom/google/android/youtube/videos/DrmException;

    .line 568
    .local v0, drmException:Lcom/google/android/youtube/videos/DrmException;
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    const-string v3, "UnpinError"

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .end local v0           #drmException:Lcom/google/android/youtube/videos/DrmException;
    :cond_1c
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v3, 0x7f0b00e9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->showNetworkDependentErrorToast(Ljava/lang/String;)V

    .line 573
    :cond_30
    return-void
.end method

.method public pinVideo(Ljava/lang/String;)V
    .registers 3
    .parameter "videoId"

    .prologue
    .line 354
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->setPinState(Ljava/lang/String;Z)V

    .line 355
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isOfflineManagement()Z

    move-result v0

    if-nez v0, :cond_f

    .line 356
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->commitOfflineChanges()V

    .line 358
    :cond_f
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 227
    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 228
    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->request:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    .line 229
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManagerRestored:Z

    .line 230
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/StatusHelper;->hide()V

    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->purchasesViewWrapper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->clear()V

    .line 233
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 236
    iput v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->expiredEntryCount:I

    .line 237
    return-void
.end method

.method public setOfflineManagement(Z)V
    .registers 5
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 331
    if-eqz p1, :cond_37

    .line 332
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManagerRestored:Z

    if-nez v0, :cond_b

    .line 333
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->enterOfflineModeWhenPossible:Z

    .line 351
    :cond_a
    :goto_a
    return-void

    .line 336
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager;->isDownloadDirectoryMounted()Z

    move-result v0

    if-nez v0, :cond_20

    .line 337
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v1, 0x7f0b00f3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 340
    :cond_20
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :goto_25
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->setOfflineManagement(Z)V

    .line 347
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updateOfflineFooter()V

    .line 348
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineManagementModeListener:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;

    if-eqz v0, :cond_a

    .line 349
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineManagementModeListener:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;->onModeChange(Z)V

    goto :goto_a

    .line 342
    :cond_37
    iput-boolean v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->enterOfflineModeWhenPossible:Z

    .line 343
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->cancelOfflineChanges()V

    .line 344
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineFooter:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25
.end method
