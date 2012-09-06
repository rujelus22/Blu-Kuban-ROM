.class public Lcom/google/android/finsky/utils/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Lcom/google/android/finsky/utils/Notifier;


# static fields
.field private static final UNKNOWN_PACKAGE_ID:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/google/android/finsky/utils/NotificationListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "unknown package"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/google/android/finsky/utils/NotificationManager;->UNKNOWN_PACKAGE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 310
    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 312
    invoke-static {p0, p4}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 313
    const-string v1, "error_doc_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    :cond_19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 316
    const-string v1, "error_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    :cond_24
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 319
    const-string v1, "error_html_message"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    :cond_2f
    return-object v0
.end method

.method private showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .parameter "packageName"
    .parameter "statusBarText"
    .parameter "title"
    .parameter "message"
    .parameter "icon"

    .prologue
    .line 193
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotificationOrAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 195
    return-void
.end method

.method private showAppNotificationOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .parameter "packageName"
    .parameter "statusBarText"
    .parameter "title"
    .parameter "message"
    .parameter "icon"
    .parameter "returnCode"

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    invoke-interface {v0, p1, p3, p4}, Lcom/google/android/finsky/utils/NotificationListener;->showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 214
    :cond_d
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v2, v2, v1}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 217
    .local v6, detailsIntent:Landroid/content/Intent;
    const-string v0, "error_return_code"

    invoke-virtual {v6, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 218
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 220
    .end local v6           #detailsIntent:Landroid/content/Intent;
    :cond_25
    return-void
.end method

.method private showAppNotificationOrAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .parameter "packageName"
    .parameter "statusBarText"
    .parameter "title"
    .parameter "message"
    .parameter "icon"
    .parameter "returnCode"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    invoke-interface {v0, p1, p3, p4, p6}, Lcom/google/android/finsky/utils/NotificationListener;->showAppAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 202
    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p3, p4, v1}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 205
    .local v6, detailsIntent:Landroid/content/Intent;
    const-string v0, "error_return_code"

    invoke-virtual {v6, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 206
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 208
    .end local v6           #detailsIntent:Landroid/content/Intent;
    :cond_24
    return-void
.end method

.method private showDocNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
    .parameter "docId"
    .parameter "statusBarText"
    .parameter "title"
    .parameter "message"
    .parameter "icon"
    .parameter "detailsUrl"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    invoke-interface {v0, p1, p3, p4, p6}, Lcom/google/android/finsky/utils/NotificationListener;->showDocAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 225
    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4, p6}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 228
    :cond_1b
    return-void
.end method


# virtual methods
.method public hideAllMessagesForAccount(Ljava/lang/String;)V
    .registers 6
    .parameter "accountName"

    .prologue
    .line 301
    iget-object v2, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 303
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

    .line 304
    .local v1, notificationId:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 305
    return-void
.end method

.method public hideAllMessagesForPackage(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 294
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 296
    .local v0, mgr:Landroid/app/NotificationManager;
    if-nez p1, :cond_12

    sget v1, Lcom/google/android/finsky/utils/NotificationManager;->UNKNOWN_PACKAGE_ID:I

    :goto_e
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 297
    return-void

    .line 296
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e
.end method

.method public setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    .line 45
    return-void
.end method

.method public showDownloadErrorMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 15
    .parameter "title"
    .parameter "packageName"
    .parameter "errorCode"
    .parameter "serverMessage"
    .parameter "isUpdate"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 97
    if-nez p5, :cond_4d

    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07009d

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, barText:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07009e

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, titleText:Ljava/lang/String;
    if-eqz p4, :cond_39

    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700a0

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p4, v5, v7

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, messageText:Ljava/lang/String;
    :goto_30
    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    return-void

    .line 105
    .end local v4           #messageText:Ljava/lang/String;
    :cond_39
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07009f

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #messageText:Ljava/lang/String;
    goto :goto_30

    .line 109
    .end local v2           #barText:Ljava/lang/String;
    .end local v3           #titleText:Ljava/lang/String;
    .end local v4           #messageText:Ljava/lang/String;
    :cond_4d
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700a1

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .restart local v2       #barText:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700a2

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .restart local v3       #titleText:Ljava/lang/String;
    if-eqz p4, :cond_79

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700a4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p4, v5, v7

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #messageText:Ljava/lang/String;
    goto :goto_30

    .line 116
    .end local v4           #messageText:Ljava/lang/String;
    :cond_79
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700a3

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #messageText:Ljava/lang/String;
    goto :goto_30
.end method

.method public showExternalStorageMissing(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "title"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070094

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070095

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070096

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public showInstallationFailureMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .parameter "title"
    .parameter "packageName"
    .parameter "message"
    .parameter "returnCode"

    .prologue
    .line 173
    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotificationOrAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 175
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

    .line 126
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_3d

    const v0, 0x7f0700a7

    :goto_a
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, notificationStatus:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_41

    const v0, 0x7f0700a8

    :goto_1d
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, notificationMsg:Ljava/lang/String;
    const v5, 0x1080081

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v6, v6, v1}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 136
    return-void

    .line 126
    .end local v2           #notificationStatus:Ljava/lang/String;
    .end local v4           #notificationMsg:Ljava/lang/String;
    :cond_3d
    const v0, 0x7f0700a5

    goto :goto_a

    .line 129
    .restart local v2       #notificationStatus:Ljava/lang/String;
    :cond_41
    const v0, 0x7f0700a6

    goto :goto_1d
.end method

.method public showInternalStorageFull(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "title"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07008e

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07008f

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070090

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public showMaliciousAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "title"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070097

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f070098

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v3, 0x7f070099

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/finsky/utils/NotificationManager;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "title"
    .parameter "shortMessage"
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 232
    const v5, 0x108008a

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1, p3, v1}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 234
    return-void
.end method

.method public showNormalAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "title"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07009a

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07009b

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07009c

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method public showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V
    .registers 18
    .parameter "notificationId"
    .parameter "statusBarText"
    .parameter "title"
    .parameter "htmlMessage"
    .parameter "icon"
    .parameter "clickIntent"

    .prologue
    .line 240
    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, message:Ljava/lang/String;
    if-nez p1, :cond_7f

    sget v4, Lcom/google/android/finsky/utils/NotificationManager;->UNKNOWN_PACKAGE_ID:I

    .line 243
    .local v4, notificationCode:I
    :goto_c
    iget-object v6, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const/high16 v7, 0x5000

    move-object/from16 v0, p6

    invoke-static {v6, v4, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 247
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move/from16 v0, p5

    invoke-direct {v3, v0, p2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 249
    .local v3, notification:Landroid/app/Notification;
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 250
    iget-object v6, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, p3, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 251
    iget-object v6, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 253
    .local v2, mgr:Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, p3, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 255
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_4c

    .line 256
    const-string v6, "updates"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 257
    const/4 v6, -0x1

    iput v6, v3, Landroid/app/Notification;->priority:I

    .line 261
    :cond_4c
    invoke-virtual {v2, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 262
    sget-object v6, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 263
    const-string v6, "Showing notification: [ID=%s, Title=%s, Message=%s, returnCode=%d]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p3, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v8, 0x3

    const-string v9, "error_return_code"

    const/4 v10, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_7e
    return-void

    .line 241
    .end local v2           #mgr:Landroid/app/NotificationManager;
    .end local v3           #notification:Landroid/app/Notification;
    .end local v4           #notificationCode:I
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    :cond_7f
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_c
.end method

.method public showPurchaseErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "title"
    .parameter "shortMessage"
    .parameter "message"
    .parameter "docId"
    .parameter "detailsUrl"

    .prologue
    .line 180
    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showDocNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    return-void
.end method

.method public showSingleUpdateAvailableMessage(Ljava/lang/String;)V
    .registers 11
    .parameter "appName"

    .prologue
    const/4 v8, 0x1

    .line 283
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07018f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, status:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0001

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-virtual {v0, v1, v8, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, message:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->getMyDownloadsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    .line 288
    .local v6, myDownloadsIntent:Landroid/content/Intent;
    const-string v1, "updates"

    const v5, 0x7f0200fb

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 290
    return-void
.end method

.method public showSubscriptionsWarningMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "title"
    .parameter "packageName"
    .parameter "message"

    .prologue
    .line 186
    const v5, 0x108008a

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotificationOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 189
    return-void
.end method

.method public showSuccessfulInstallMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter "title"
    .parameter "packageName"
    .parameter "continueUrl"
    .parameter "isUpdate"

    .prologue
    const/4 v5, 0x0

    .line 144
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    if-eqz p4, :cond_54

    const v0, 0x7f0700ac

    :goto_8
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, notificationStatus:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    if-eqz p4, :cond_58

    const v0, 0x7f0700ad

    :goto_1d
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, notificationMsg:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 153
    .local v6, intent:Landroid/content/Intent;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-static {p2, p3}, Lcom/google/android/finsky/utils/IntentUtils;->createContinueUrlIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 159
    :cond_3e
    if-nez v6, :cond_4a

    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v5, v5, v1}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 166
    :cond_4a
    const v5, 0x7f0200fc

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 168
    return-void

    .line 144
    .end local v2           #notificationStatus:Ljava/lang/String;
    .end local v4           #notificationMsg:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_54
    const v0, 0x7f0700a9

    goto :goto_8

    .line 147
    .restart local v2       #notificationStatus:Ljava/lang/String;
    :cond_58
    const v0, 0x7f0700aa

    goto :goto_1d
.end method

.method public showUpdatesAvailableMessage(I)V
    .registers 11
    .parameter "numberOfUpdates"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07018f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, status:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070190

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0001

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {v0, v1, p1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, message:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->getMyDownloadsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    .line 277
    .local v6, myDownloadsIntent:Landroid/content/Intent;
    const-string v1, "updates"

    const v5, 0x7f0200fb

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 279
    return-void
.end method
