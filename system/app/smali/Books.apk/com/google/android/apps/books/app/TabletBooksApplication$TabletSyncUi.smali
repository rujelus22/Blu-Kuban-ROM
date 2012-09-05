.class Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;
.super Ljava/lang/Object;
.source "TabletBooksApplication.java"

# interfaces
.implements Lcom/google/android/apps/books/service/SyncService$SyncUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/TabletBooksApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabletSyncUi"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/TabletBooksApplication;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/TabletBooksApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;->this$0:Lcom/google/android/apps/books/app/TabletBooksApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/TabletBooksApplication;Lcom/google/android/apps/books/app/TabletBooksApplication$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;-><init>(Lcom/google/android/apps/books/app/TabletBooksApplication;)V

    return-void
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;->this$0:Lcom/google/android/apps/books/app/TabletBooksApplication;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/TabletBooksApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public deletedVolumes(Landroid/accounts/Account;Ljava/util/List;)V
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 140
    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 173
    :cond_a
    :goto_a
    return-void

    .line 143
    :cond_b
    iget-object v2, p0, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;->this$0:Lcom/google/android/apps/books/app/TabletBooksApplication;

    .line 144
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 146
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 149
    if-le v0, v5, :cond_71

    .line 150
    const v1, 0x7f0e0079

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    const v4, 0x7f0e007b

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_2d
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f02006d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v1, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 159
    const v1, 0x7f0e007d

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/google/android/apps/books/app/BooksDeletedActivity;

    invoke-direct {v3, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    const-string v5, "titles"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 164
    const/high16 v5, 0x4000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    invoke-static {v2, v8, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 166
    invoke-virtual {v4, v2, v0, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 167
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v4, Landroid/app/Notification;->number:I

    .line 168
    iget v0, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, v4, Landroid/app/Notification;->flags:I

    .line 171
    invoke-direct {p0}, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_a

    .line 153
    :cond_71
    const v0, 0x7f0e0078

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    const v0, 0x7f0e007a

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method

.method public finishedAllVolumeDownloads()V
    .registers 3

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 136
    return-void
.end method

.method public finishedVolumeDownload(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "account"
    .parameter "volumeId"
    .parameter "title"

    .prologue
    .line 131
    return-void
.end method

.method public shouldNotifyByDefault()Z
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public startingVolumeDownload(II)V
    .registers 18
    .parameter "volumeNumber"
    .parameter "volumeCount"

    .prologue
    .line 91
    iget-object v5, p0, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;->this$0:Lcom/google/android/apps/books/app/TabletBooksApplication;

    .line 92
    .local v5, context:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 95
    .local v8, res:Landroid/content/res/Resources;
    add-int/lit8 v7, p1, 0x1

    .line 97
    .local v7, readableVolumeNumber:I
    const v11, 0x7f0e0077

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 98
    .local v10, title:Ljava/lang/CharSequence;
    const/high16 v11, 0x7f10

    move/from16 v0, p2

    invoke-virtual {v8, v11, v0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 100
    .local v9, template:Ljava/lang/CharSequence;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "%1$d"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "%2$d"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v9, v11, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 105
    .local v4, content:Ljava/lang/CharSequence;
    new-instance v1, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, booksIntent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;->this$0:Lcom/google/android/apps/books/app/TabletBooksApplication;

    invoke-virtual {v11}, Lcom/google/android/apps/books/app/TabletBooksApplication;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const/high16 v11, 0x1000

    invoke-virtual {v1, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v5, v11, v1, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 111
    .local v3, clickIntent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    .local v2, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 113
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 114
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 115
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 117
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 118
    const v11, 0x7f02006d

    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 119
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 121
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 122
    .local v6, notif:Landroid/app/Notification;
    invoke-direct {p0}, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 124
    return-void
.end method
