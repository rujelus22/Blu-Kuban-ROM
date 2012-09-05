.class public Lcom/google/android/finsky/receivers/DeclineAssetReceiver;
.super Lcom/google/android/finsky/download/DownloadReceiver;
.source "DeclineAssetReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadReceiver;-><init>()V

    return-void
.end method

.method private getDetailedMessage(ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "declinedReason"
    .parameter "assetName"

    .prologue
    .line 122
    packed-switch p1, :pswitch_data_26

    .line 137
    :pswitch_3
    const v0, 0x7f0700bd

    .line 139
    .local v0, detailMessageResId:I
    :goto_6
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 124
    .end local v0           #detailMessageResId:I
    :pswitch_15
    const v0, 0x7f0700bc

    .line 125
    .restart local v0       #detailMessageResId:I
    goto :goto_6

    .line 127
    .end local v0           #detailMessageResId:I
    :pswitch_19
    const v0, 0x7f0700bb

    .line 128
    .restart local v0       #detailMessageResId:I
    goto :goto_6

    .line 130
    .end local v0           #detailMessageResId:I
    :pswitch_1d
    const v0, 0x7f0700bf

    .line 131
    .restart local v0       #detailMessageResId:I
    goto :goto_6

    .line 133
    .end local v0           #detailMessageResId:I
    :pswitch_21
    const v0, 0x7f0700be

    .line 134
    .restart local v0       #detailMessageResId:I
    goto :goto_6

    .line 122
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_19
        :pswitch_15
        :pswitch_3
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method private handleAssetDeclined(Lcom/google/android/finsky/local/LocalAsset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 17
    .parameter "localAsset"
    .parameter "assetPackage"
    .parameter "assetName"
    .parameter "title"
    .parameter "message"
    .parameter "detailedMessage"
    .parameter "reason"

    .prologue
    .line 81
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    .line 82
    .local v0, app:Lcom/google/android/finsky/FinskyApp;
    new-instance v4, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;

    invoke-direct {v4}, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;-><init>()V

    .line 83
    .local v4, error:Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;
    iput-object p3, v4, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->docTitle:Ljava/lang/String;

    .line 84
    iput-object p4, v4, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->title:Ljava/lang/String;

    .line 85
    iput-object p5, v4, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->briefMessage:Ljava/lang/String;

    .line 86
    iput-object p6, v4, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->detailedMessage:Ljava/lang/String;

    .line 87
    const/4 v6, 0x0

    invoke-static {p2, v6}, Lcom/google/android/finsky/api/DfeApi;->createDetailsUrlFromId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->detailsUrl:Ljava/lang/String;

    .line 88
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, packageName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7, v4}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->switchToError(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$Error;)V

    .line 90
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v1

    .line 91
    .local v1, currentState:Lcom/google/android/finsky/local/AssetState;
    sget-object v6, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    if-eq v1, v6, :cond_30

    sget-object v6, Lcom/google/android/finsky/local/AssetState;->DOWNLOADING:Lcom/google/android/finsky/local/AssetState;

    if-ne v1, v6, :cond_53

    .line 92
    :cond_30
    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDownloadQueue()Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v3

    .line 93
    .local v3, downloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    invoke-interface {v3, v5}, Lcom/google/android/finsky/download/DownloadQueue;->getByPackageName(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;

    move-result-object v2

    .line 94
    .local v2, download:Lcom/google/android/finsky/download/Download;
    if-eqz v2, :cond_48

    .line 95
    const-string v6, "Download %s queued already, attempt to cancel."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-interface {v3, v2}, Lcom/google/android/finsky/download/DownloadQueue;->cancel(Lcom/google/android/finsky/download/Download;)V

    .line 98
    :cond_48
    const-string v6, "Set local asset state to DOWNLOAD_FAILED."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->setStateDownloadFailed()V

    .line 102
    .end local v2           #download:Lcom/google/android/finsky/download/Download;
    .end local v3           #downloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    :cond_53
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v6

    const-string v7, "install.declinedTickle"

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v5, v8}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method private handleUnknownAssetDeclined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .parameter "packageName"
    .parameter "title"
    .parameter "message"
    .parameter "detailedMessage"
    .parameter "reason"

    .prologue
    .line 114
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/google/android/finsky/utils/Notifier;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->clearPurchaseStatusMap()V

    .line 116
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "install.declinedTickle"

    if-nez p1, :cond_24

    const-string p1, "unknown"

    .end local p1
    :cond_24
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 32
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v8, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 33
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/receivers/DeclineAssetReceiver;->setResultCode(I)V

    .line 36
    :cond_12
    const-string v2, "assetid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 37
    .local v17, assetId:Ljava/lang/String;
    const-string v2, "asset_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 38
    .local v11, assetName:Ljava/lang/String;
    const-string v2, "asset_package"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, assetPackage:Ljava/lang/String;
    const-string v2, "decline_reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 40
    .local v19, declinedReasonStr:Ljava/lang/String;
    const/4 v7, -0x1

    .line 41
    .local v7, reason:I
    if-eqz v19, :cond_3d

    .line 43
    :try_start_35
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_3c} :catch_8e

    move-result v7

    .line 50
    :cond_3d
    :goto_3d
    const-string v2, "Received DECLINE_ASSET tickle %s for asset ID %s %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v19, v8, v10

    const/4 v10, 0x1

    aput-object v17, v8, v10

    const/4 v10, 0x2

    aput-object v11, v8, v10

    invoke-static {v2, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v16

    .line 54
    .local v16, app:Lcom/google/android/finsky/FinskyApp;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v18

    .line 56
    .local v18, assetStore:Lcom/google/android/finsky/local/AssetStore;
    const v2, 0x7f0700b8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, title:Ljava/lang/String;
    const v2, 0x7f0700b9

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v11, v8, v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v8}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, message:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/google/android/finsky/local/AssetStore;->getAssetById(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v9

    .line 61
    .local v9, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-nez v9, :cond_80

    if-eqz v3, :cond_80

    .line 62
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v9

    .line 64
    :cond_80
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/google/android/finsky/receivers/DeclineAssetReceiver;->getDetailedMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, detailedMessage:Ljava/lang/String;
    if-nez v9, :cond_9b

    move-object/from16 v2, p0

    .line 66
    invoke-direct/range {v2 .. v7}, Lcom/google/android/finsky/receivers/DeclineAssetReceiver;->handleUnknownAssetDeclined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    :goto_8d
    return-void

    .line 44
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #detailedMessage:Ljava/lang/String;
    .end local v9           #localAsset:Lcom/google/android/finsky/local/LocalAsset;
    .end local v16           #app:Lcom/google/android/finsky/FinskyApp;
    .end local v18           #assetStore:Lcom/google/android/finsky/local/AssetStore;
    :catch_8e
    move-exception v20

    .line 46
    .local v20, nfe:Ljava/lang/NumberFormatException;
    const-string v2, "Non-numeric decline reason: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v19, v8, v10

    invoke-static {v2, v8}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3d

    .end local v20           #nfe:Ljava/lang/NumberFormatException;
    .restart local v4       #title:Ljava/lang/String;
    .restart local v5       #message:Ljava/lang/String;
    .restart local v6       #detailedMessage:Ljava/lang/String;
    .restart local v9       #localAsset:Lcom/google/android/finsky/local/LocalAsset;
    .restart local v16       #app:Lcom/google/android/finsky/FinskyApp;
    .restart local v18       #assetStore:Lcom/google/android/finsky/local/AssetStore;
    :cond_9b
    move-object/from16 v8, p0

    move-object v10, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move v15, v7

    .line 68
    invoke-direct/range {v8 .. v15}, Lcom/google/android/finsky/receivers/DeclineAssetReceiver;->handleAssetDeclined(Lcom/google/android/finsky/local/LocalAsset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_8d
.end method
