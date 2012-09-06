.class public Lcom/google/android/finsky/utils/PurchaseInitiator;
.super Ljava/lang/Object;
.source "PurchaseInitiator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFreePurchaseListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)Lcom/android/volley/Response$Listener;
    .registers 5
    .parameter "account"
    .parameter "doc"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/finsky/utils/PurchaseInitiator$1;-><init>(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static createPurchaseErrorListener(Lcom/google/android/finsky/api/model/Document;)Lcom/android/volley/Response$ErrorListener;
    .registers 2
    .parameter "doc"

    .prologue
    .line 127
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/utils/PurchaseInitiator$2;-><init>(Lcom/google/android/finsky/api/model/Document;)V

    return-object v0
.end method

.method public static initiateDownload(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)V
    .registers 15
    .parameter "account"
    .parameter "doc"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "deliveryData"

    .prologue
    const/4 v8, 0x0

    .line 104
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    if-nez v0, :cond_15

    .line 105
    const-string v0, "Document does not contain AppDetails, cannot download: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_15
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v2

    iget-object v4, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v7

    const-string v9, "single_install"

    move-object v3, p4

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v9}, Lcom/google/android/finsky/receivers/Installer;->requestInstall(Ljava/lang/String;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 119
    return-void
.end method

.method public static makeFreePurchase(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "account"
    .parameter "doc"
    .parameter "offerType"
    .parameter "externalReferrer"
    .parameter "continueUrl"

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    invoke-static {p0, p1, p3, p4}, Lcom/google/android/finsky/utils/PurchaseInitiator;->createFreePurchaseListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v5

    invoke-static {p1}, Lcom/google/android/finsky/utils/PurchaseInitiator;->createPurchaseErrorListener(Lcom/google/android/finsky/api/model/Document;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/finsky/api/DfeApi;->makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 32
    return-void
.end method

.method public static processPurchaseStatusResponse(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;ZLjava/lang/String;)V
    .registers 12
    .parameter "account"
    .parameter "doc"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "response"
    .parameter "initiateAppDownload"
    .parameter "debugEventName"

    .prologue
    const/4 v3, 0x1

    .line 82
    invoke-virtual {p4}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasLibraryUpdate()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 83
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v1

    invoke-virtual {p4}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v2

    invoke-interface {v1, p0, v2, p6}, Lcom/google/android/finsky/library/LibraryReplicators;->applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    .line 86
    :cond_16
    invoke-virtual {p4}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v0

    .line 87
    .local v0, status:I
    if-ne v0, v3, :cond_31

    .line 88
    if-eqz p5, :cond_31

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    if-ne v1, v3, :cond_31

    .line 89
    invoke-virtual {p4}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasAppDeliveryData()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 90
    invoke-virtual {p4}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v1

    invoke-static {p0, p1, p2, p3, v1}, Lcom/google/android/finsky/utils/PurchaseInitiator;->initiateDownload(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)V

    .line 100
    :cond_31
    :goto_31
    return-void

    .line 93
    :cond_32
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setReferrer(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "No delivery data for %s, waiting for notification."

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_31
.end method
