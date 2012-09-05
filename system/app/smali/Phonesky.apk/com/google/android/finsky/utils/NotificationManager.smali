.class public Lcom/google/android/finsky/utils/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Lcom/google/android/finsky/utils/Notifier;


# static fields
.field private static final UNKNOWN_PACKAGE_ID:I


# instance fields
.field private final mAssetStore:Lcom/google/android/finsky/local/AssetStore;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/google/android/finsky/utils/NotificationListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, "unknown package"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/google/android/finsky/utils/NotificationManager;->UNKNOWN_PACKAGE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/local/AssetStore;)V
    .registers 3
    .parameter "context"
    .parameter "assetStore"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/google/android/finsky/utils/NotificationManager;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    .line 42
    return-void
.end method

.method public static createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 275
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 276
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://market.android.com/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 278
    const-string v1, "error_doc_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    :cond_34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 281
    const-string v1, "error_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    :cond_3f
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 284
    const-string v1, "error_html_message"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    :cond_4a
    return-object v0
.end method

.method private showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .parameter "packageName"
    .parameter "statusBarText"
    .parameter "title"
    .parameter "message"
    .parameter "icon"

    .prologue
    .line 174
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 176
    return-void
.end method

.method private showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .parameter "packageName"
    .parameter "statusBarText"
    .parameter "title"
    .parameter "message"
    .parameter "icon"
    .parameter "returnCode"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    invoke-interface {v0, p1, p3, p4, p6}, Lcom/google/android/finsky/utils/NotificationListener;->showAppAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 183
    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 184
    .local v6, detailsIntent:Landroid/content/Intent;
    const-string v0, "error_return_code"

    invoke-virtual {v6, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 185
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 188
    .end local v6           #detailsIntent:Landroid/content/Intent;
    :cond_20
    return-void
.end method

.method private showDocNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .parameter "docId"
    .parameter "statusBarText"
    .parameter "title"
    .parameter "message"
    .parameter "icon"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    invoke-interface {v0, p1, p3, p4}, Lcom/google/android/finsky/utils/NotificationListener;->showDocAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 193
    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 196
    :cond_1b
    return-void
.end method


# virtual methods
.method public hideAllMessagesForAccount(Ljava/lang/String;)V
    .registers 6
    .parameter "accountName"

    .prologue
    .line 265
    iget-object v2, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 267
    .local v0, mgr:Landroid/app/NotificationManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, notificationId:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 269
    return-void
.end method

.method public hideAllMessagesForPackage(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 260
    .local v0, mgr:Landroid/app/NotificationManager;
    if-nez p1, :cond_12

    sget v1, Lcom/google/android/finsky/utils/NotificationManager;->UNKNOWN_PACKAGE_ID:I

    :goto_e
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 261
    return-void

    .line 260
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e
.end method

.method public setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    .line 47
    return-void
.end method

.method public showDownloadErrorMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14
    .parameter "title"
    .parameter "packageName"
    .parameter "errorCode"

    .prologue
    const v5, 0x108008a

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v1, p2}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v7

    .line 96
    .local v7, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-eqz v7, :cond_47

    invoke-interface {v7}, Lcom/google/android/finsky/local/LocalAsset;->isUpdate()Z

    move-result v6

    .line 97
    .local v6, isUpdate:Z
    :goto_12
    if-nez v6, :cond_49

    .line 98
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f070092

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v3, 0x7f070093

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f070094

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-virtual {v1, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    :goto_46
    return-void

    .end local v6           #isUpdate:Z
    :cond_47
    move v6, v0

    .line 96
    goto :goto_12

    .line 105
    .restart local v6       #isUpdate:Z
    :cond_49
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f070095

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v3, 0x7f070096

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f070097

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-virtual {v1, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_46
.end method

.method public showExternalStorageFull(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "title"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 60
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070086

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070087

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070088

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public showExternalStorageMissing(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "title"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070089

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07008a

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07008b

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method public showInstallationFailureMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .parameter "title"
    .parameter "packageName"
    .parameter "message"
    .parameter "returnCode"

    .prologue
    .line 161
    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 163
    return-void
.end method

.method public showInstallingMessage(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .parameter "title"
    .parameter "packageName"
    .parameter "isUpdate"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 115
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_39

    const v0, 0x7f07009a

    :goto_a
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, notificationStatus:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_3d

    const v0, 0x7f07009b

    :goto_1d
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, notificationMsg:Ljava/lang/String;
    const v5, 0x1080081

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, v6, v6}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 124
    return-void

    .line 115
    .end local v2           #notificationStatus:Ljava/lang/String;
    .end local v4           #notificationMsg:Ljava/lang/String;
    :cond_39
    const v0, 0x7f070098

    goto :goto_a

    .line 118
    .restart local v2       #notificationStatus:Ljava/lang/String;
    :cond_3d
    const v0, 0x7f070099

    goto :goto_1d
.end method

.method public showInternalStorageFull(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "title"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070083

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070084

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070085

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method public showMaliciousAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "title"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07008c

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f07008d

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v3, 0x7f07008e

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/finsky/utils/NotificationManager;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "title"
    .parameter "shortMessage"
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 200
    const v5, 0x108008a

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1, p3}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 202
    return-void
.end method

.method public showNormalAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "title"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07008f

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070090

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070091

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V
    .registers 16
    .parameter "notificationId"
    .parameter "statusBarText"
    .parameter "title"
    .parameter "message"
    .parameter "icon"
    .parameter "clickIntent"

    .prologue
    .line 207
    if-nez p1, :cond_60

    sget v2, Lcom/google/android/finsky/utils/NotificationManager;->UNKNOWN_PACKAGE_ID:I

    .line 209
    .local v2, notificationCode:I
    :goto_4
    iget-object v4, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x5000

    invoke-static {v4, v2, p6, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 213
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, p5, p2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 215
    .local v1, notification:Landroid/app/Notification;
    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 216
    iget-object v4, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, p3, p4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 217
    iget-object v4, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 219
    .local v0, mgr:Landroid/app/NotificationManager;
    iget-object v4, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, p3, p4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 220
    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 221
    sget-object v4, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 222
    const-string v4, "Showing notification: [ID=%s, Title=%s, Message=%s, returnCode=%d]"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x2

    aput-object p4, v5, v6

    const/4 v6, 0x3

    const-string v7, "error_return_code"

    const/4 v8, -0x1

    invoke-virtual {p6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :cond_5f
    return-void

    .line 207
    .end local v0           #mgr:Landroid/app/NotificationManager;
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #notificationCode:I
    .end local v3           #pendingIntent:Landroid/app/PendingIntent;
    :cond_60
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4
.end method

.method public showPurchaseErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "title"
    .parameter "shortMessage"
    .parameter "message"
    .parameter "docId"

    .prologue
    .line 168
    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showDocNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    return-void
.end method

.method public showSingleUpdateAvailableMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "accountName"
    .parameter "appName"

    .prologue
    const/4 v9, 0x1

    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v3, 0x7f070158

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, status:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0001

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    aput-object p1, v5, v9

    invoke-virtual {v0, v3, v9, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, message:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/MainActivity;->getMyDownloadsIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 251
    .local v6, myDownloadsIntent:Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, notificationId:Ljava/lang/String;
    const v5, 0x7f0200b3

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 254
    return-void
.end method

.method public showSuccessfulInstallMessage(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .parameter "title"
    .parameter "packageName"
    .parameter "isUpdate"

    .prologue
    const/4 v5, 0x0

    .line 131
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_64

    const v0, 0x7f07009f

    :goto_8
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, notificationStatus:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_68

    const v0, 0x7f0700a0

    :goto_1d
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, notificationMsg:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v0, p2}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v7

    .line 139
    .local v7, asset:Lcom/google/android/finsky/local/LocalAsset;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 141
    .local v6, intent:Landroid/content/Intent;
    if-eqz v7, :cond_52

    invoke-interface {v7}, Lcom/google/android/finsky/local/LocalAsset;->getExternalReferrer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils;->isLaunchUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-interface {v7}, Lcom/google/android/finsky/local/LocalAsset;->getExternalReferrer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils;->extractContinueUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, url:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/IntentUtils;->createUrlLaunchIntent(Lcom/google/android/finsky/local/LocalAsset;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 148
    .end local v8           #url:Ljava/lang/String;
    :cond_52
    if-nez v6, :cond_5a

    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, v5, v5}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 154
    :cond_5a
    const v5, 0x7f0200b4

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 156
    return-void

    .line 131
    .end local v2           #notificationStatus:Ljava/lang/String;
    .end local v4           #notificationMsg:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #asset:Lcom/google/android/finsky/local/LocalAsset;
    :cond_64
    const v0, 0x7f07009c

    goto :goto_8

    .line 134
    .restart local v2       #notificationStatus:Ljava/lang/String;
    :cond_68
    const v0, 0x7f07009d

    goto :goto_1d
.end method

.method public showUpdatesAvailableMessage(Ljava/lang/String;I)V
    .registers 13
    .parameter "accountName"
    .parameter "numberOfUpdates"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v5, 0x7f070158

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, status:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v5, 0x7f070159

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0d0001

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v0, v5, p2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, message:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/MainActivity;->getMyDownloadsIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 238
    .local v6, myDownloadsIntent:Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, notificationId:Ljava/lang/String;
    const v5, 0x7f0200b3

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 241
    return-void
.end method
