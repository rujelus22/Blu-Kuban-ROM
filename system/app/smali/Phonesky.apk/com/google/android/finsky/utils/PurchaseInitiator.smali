.class public Lcom/google/android/finsky/utils/PurchaseInitiator;
.super Ljava/lang/Object;
.source "PurchaseInitiator.java"


# static fields
.field private static sNotificationHelper:Lcom/google/android/finsky/utils/Notifier;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/api/model/Document;I)Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/PurchaseInitiator;->createFreeAppDownloadError(Lcom/google/android/finsky/api/model/Document;I)Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/PurchaseInitiator;->switchToCompleted(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 31
    invoke-static/range {p0 .. p5}, Lcom/google/android/finsky/utils/PurchaseInitiator;->handlePurchaseResponse(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 31
    invoke-static/range {p0 .. p8}, Lcom/google/android/finsky/utils/PurchaseInitiator;->switchToError(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static createDirectDownloadListener(Ljava/lang/String;ILcom/google/android/finsky/api/model/Document;)Lcom/android/volley/Response$Listener;
    .registers 10
    .parameter "docId"
    .parameter "offerType"
    .parameter "document"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/finsky/api/model/Document;",
            ")",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/PurchaseInitiator$2;-><init>(Lcom/google/android/finsky/receivers/Installer;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static createFreeAppDownloadError(Lcom/google/android/finsky/api/model/Document;I)Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;
    .registers 9
    .parameter "doc"
    .parameter "code"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    new-instance v2, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;

    invoke-direct {v2}, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;-><init>()V

    .line 96
    .local v2, error:Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, docTitle:Ljava/lang/String;
    iput-object v1, v2, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->docTitle:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->detailsUrl:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    .line 100
    .local v0, app:Lcom/google/android/finsky/FinskyApp;
    const v3, 0x7f070093

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->title:Ljava/lang/String;

    .line 101
    const v3, 0x7f070092

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->briefMessage:Ljava/lang/String;

    .line 102
    const v3, 0x7f070094

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->detailedMessage:Ljava/lang/String;

    .line 104
    return-object v2
.end method

.method private static createFreeItemPurchaseListener(Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$Listener;
    .registers 4
    .parameter "docId"
    .parameter "offerType"
    .parameter "detailsUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseInitiator$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/android/finsky/utils/PurchaseInitiator$3;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static createPurchaseErrorListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$ErrorListener;
    .registers 11
    .parameter "navigationManager"
    .parameter "docId"
    .parameter "docTitle"
    .parameter "offerType"
    .parameter "detailsUrl"

    .prologue
    .line 278
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseInitiator$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/PurchaseInitiator$5;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private static createPurchaseStatusListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$Listener;
    .registers 11
    .parameter "navigationManager"
    .parameter "docId"
    .parameter "docTitle"
    .parameter "offerType"
    .parameter "detailsUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseInitiator$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/PurchaseInitiator$4;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static generateAssetId(Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;)Ljava/lang/String;
    .registers 3
    .parameter "appDetails"

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getMajorVersionNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPaidPurchaseStatus(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;Ljava/lang/String;)V
    .registers 12
    .parameter "navigationManager"
    .parameter "statusUrl"
    .parameter "docId"
    .parameter "docTitle"
    .parameter "offerType"
    .parameter "detailsUrl"
    .parameter "appDetails"
    .parameter "externalReferrer"

    .prologue
    .line 170
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_INITIATED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-virtual {v1, p2, p4, v2}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->switchState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V

    .line 173
    if-eqz p6, :cond_27

    .line 174
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v1

    invoke-static {v1, p6, p7}, Lcom/google/android/finsky/utils/PurchaseInitiator;->insertNewAssetIntoStore(Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 176
    .local v0, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/local/LocalAsset;->setRefundPeriodEndTime(Ljava/lang/Long;)V

    .line 179
    .end local v0           #localAsset:Lcom/google/android/finsky/local/LocalAsset;
    :cond_27
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-static {p0, p2, p3, p4, p5}, Lcom/google/android/finsky/utils/PurchaseInitiator;->createPurchaseStatusListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v2

    invoke-static {p0, p2, p3, p4, p5}, Lcom/google/android/finsky/utils/PurchaseInitiator;->createPurchaseErrorListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->getPurchaseStatus(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 184
    return-void
.end method

.method private static handlePurchaseResponse(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V
    .registers 16
    .parameter "navigationManager"
    .parameter "docId"
    .parameter "docTitle"
    .parameter "offerType"
    .parameter "detailsUrl"
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    .line 238
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    invoke-virtual {v0, p4, v4}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    .line 239
    invoke-virtual {p5}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v9

    .line 240
    .local v9, status:I
    if-ne v9, v4, :cond_16

    .line 241
    invoke-static {p1, p3}, Lcom/google/android/finsky/utils/PurchaseInitiator;->switchToCompleted(Ljava/lang/String;I)V

    .line 256
    :goto_15
    return-void

    .line 244
    :cond_16
    invoke-virtual {p5}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusMsg()Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, fullMessage:Ljava/lang/String;
    invoke-virtual {p5}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getBriefMessage()Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, briefMessage:Ljava/lang/String;
    invoke-virtual {p5}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusTitle()Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, title:Ljava/lang/String;
    invoke-virtual {p5}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getInfoUrl()Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, infoUrl:Ljava/lang/String;
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_41

    .line 249
    const-string v0, "Purchase Status response has error code %d, title %s,message %s and info URL %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    const/4 v2, 0x2

    aput-object v7, v1, v2

    const/4 v2, 0x3

    aput-object v8, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 253
    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/utils/PurchaseInitiator;->switchToError(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public static handlePurchaseStatus(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;Ljava/lang/String;)V
    .registers 14
    .parameter "navigationManager"
    .parameter "response"
    .parameter "docId"
    .parameter "docTitle"
    .parameter "offerType"
    .parameter "detailsUrl"
    .parameter "appDetails"
    .parameter "externalReferrer"

    .prologue
    .line 150
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_INITIATED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-virtual {v0, p2, p4, v1}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->switchState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p1

    .line 153
    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/utils/PurchaseInitiator;->handlePurchaseResponse(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V

    .line 154
    return-void
.end method

.method public static initialize(Lcom/google/android/finsky/utils/Notifier;)V
    .registers 1
    .parameter "notificationHelper"

    .prologue
    .line 318
    sput-object p0, Lcom/google/android/finsky/utils/PurchaseInitiator;->sNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    .line 319
    return-void
.end method

.method private static insertNewAssetIntoStore(Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;
    .registers 13
    .parameter "assetStore"
    .parameter "appDetails"
    .parameter "externalReferrer"

    .prologue
    .line 127
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, account:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/local/AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v4

    invoke-static {p1}, Lcom/google/android/finsky/utils/PurchaseInitiator;->generateAssetId(Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v0, p0

    move-object v6, p2

    invoke-interface/range {v0 .. v9}, Lcom/google/android/finsky/local/AssetStore;->insertAsset(Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    return-object v0
.end method

.method public static makeFreePurchase(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;)V
    .registers 16
    .parameter "navigationManager"
    .parameter "doc"
    .parameter "offerType"
    .parameter "externalReferrer"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 47
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v11

    .line 48
    .local v11, tracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, docId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6e

    .line 51
    sget-object v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_INITIATED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-virtual {v11, v7, v2, v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->switchState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V

    .line 53
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    if-nez v0, :cond_32

    .line 54
    const-string v0, "Document input lacks app details for free app download."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    const/16 v0, -0x64

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/PurchaseInitiator;->createFreeAppDownloadError(Lcom/google/android/finsky/api/model/Document;I)Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;

    move-result-object v10

    .line 56
    .local v10, purchaseError:Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;
    invoke-virtual {v11, v7, v2, v10}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->switchToError(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$Error;)V

    .line 92
    .end local v10           #purchaseError:Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;
    :goto_31
    return-void

    .line 60
    :cond_32
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, packageName:Ljava/lang/String;
    new-instance v8, Lcom/google/android/finsky/utils/PurchaseInitiator$1;

    invoke-direct {v8, v9, p1, v11, v7}, Lcom/google/android/finsky/utils/PurchaseInitiator$1;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/model/PurchaseStatusTracker;Ljava/lang/String;)V

    .line 75
    .local v8, errorListener:Lcom/android/volley/Response$ErrorListener;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/google/android/finsky/utils/PurchaseInitiator;->updateAssetInStore(Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    .line 77
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getVendingApi()Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->DIRECT_DOWNLOAD_KEY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/PurchaseInitiator;->generateAssetId(Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, p2, p1}, Lcom/google/android/finsky/utils/PurchaseInitiator;->createDirectDownloadListener(Ljava/lang/String;ILcom/google/android/finsky/api/model/Document;)Lcom/android/volley/Response$Listener;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3, v8}, Lcom/google/android/vending/remoting/api/VendingApi;->getAsset(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_31

    .line 84
    .end local v8           #errorListener:Lcom/android/volley/Response$ErrorListener;
    .end local v9           #packageName:Ljava/lang/String;
    :cond_6e
    sget-object v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_INITIATED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-virtual {v11, v7, p2, v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->switchState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V

    .line 86
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p2, v4}, Lcom/google/android/finsky/utils/PurchaseInitiator;->createFreeItemPurchaseListener(Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v2, v4, p2, v6}, Lcom/google/android/finsky/utils/PurchaseInitiator;->createPurchaseErrorListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    move v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/api/DfeApi;->makePurchase(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_31
.end method

.method private static switchToCompleted(Ljava/lang/String;I)V
    .registers 6
    .parameter "docId"
    .parameter "offerType"

    .prologue
    .line 259
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v1

    .line 260
    .local v1, tracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;
    invoke-virtual {v1, p0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->getPurchaseStatus(Ljava/lang/String;)Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;

    move-result-object v0

    .line 263
    .local v0, purchaseStatus:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;
    if-eqz v0, :cond_1a

    iget-object v2, v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->state:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    sget-object v3, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_INITIATED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    if-ne v2, v3, :cond_1a

    .line 264
    sget-object v2, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_COMPLETED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-virtual {v1, p0, p1, v2}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->switchState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V

    .line 268
    :goto_19
    return-void

    .line 266
    :cond_1a
    const-string v2, "Not setting purchase to PURCHASE_COMPLETED, the tickle was faster."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19
.end method

.method private static switchToError(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "navigationManager"
    .parameter "docId"
    .parameter "docTitle"
    .parameter "offerType"
    .parameter "errorSourceUrl"
    .parameter "errorTitle"
    .parameter "errorBriefMessage"
    .parameter "errorDetailedMessage"
    .parameter "errorDetailsUrl"

    .prologue
    .line 293
    new-instance v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;

    invoke-direct {v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;-><init>()V

    .line 294
    .local v0, error:Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;
    iput-object p5, v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->title:Ljava/lang/String;

    .line 295
    iput-object p2, v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->docTitle:Ljava/lang/String;

    .line 296
    iput-object p4, v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->sourceUrl:Ljava/lang/String;

    .line 297
    iput-object p6, v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->briefMessage:Ljava/lang/String;

    .line 298
    iput-object p7, v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->detailedMessage:Ljava/lang/String;

    .line 299
    iput-object p8, v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->detailsUrl:Ljava/lang/String;

    .line 300
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v1

    .line 301
    .local v1, statusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;
    invoke-virtual {v1, p1, p3, v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->switchToError(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$Error;)V

    .line 302
    const-string v2, "Error when purchasing document %s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    if-nez p0, :cond_2d

    .line 315
    :cond_2c
    :goto_2c
    return-void

    .line 306
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()Lcom/google/android/finsky/navigationmanager/NavigationState;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/navigationmanager/NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    if-ne v2, v3, :cond_49

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    if-eqz v2, :cond_49

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 312
    :cond_49
    sget-object v2, Lcom/google/android/finsky/utils/PurchaseInitiator;->sNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v2, p2, p5, p6, p1}, Lcom/google/android/finsky/utils/Notifier;->showPurchaseErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method private static updateAssetInStore(Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;
    .registers 10
    .parameter "assetStore"
    .parameter "appDetails"
    .parameter "externalReferrer"

    .prologue
    const/4 v5, 0x0

    .line 109
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 110
    .local v0, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-nez v0, :cond_10

    .line 111
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/utils/PurchaseInitiator;->insertNewAssetIntoStore(Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 121
    .end local v0           #localAsset:Lcom/google/android/finsky/local/LocalAsset;
    :goto_f
    return-object v0

    .line 115
    .restart local v0       #localAsset:Lcom/google/android/finsky/local/LocalAsset;
    :cond_10
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/local/LocalAsset;->setAccount(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v3

    invoke-static {p1}, Lcom/google/android/finsky/utils/PurchaseInitiator;->generateAssetId(Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/finsky/local/LocalAsset;->setStateDownloadPending(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-interface {v0, p2}, Lcom/google/android/finsky/local/LocalAsset;->setExternalReferrer(Ljava/lang/String;)V

    goto :goto_f
.end method
