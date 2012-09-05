.class Lcom/android/providers/downloads/DownloadNotification;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/downloads/DownloadNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemFacade:Lcom/android/providers/downloads/SystemFacade;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V
    .registers 4
    .parameter "ctx"
    .parameter "systemFacade"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    .line 101
    return-void
.end method

.method private static buildPercentageLabel(Landroid/content/Context;JJ)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "totalBytes"
    .parameter "currentBytes"

    .prologue
    .line 265
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_8

    .line 266
    const/4 v1, 0x0

    .line 269
    :goto_7
    return-object v1

    .line 268
    :cond_8
    const-wide/16 v1, 0x64

    mul-long/2addr v1, p3

    div-long/2addr v1, p1

    long-to-int v0, v1

    .line 269
    .local v0, percent:I
    const v1, 0x7f02001d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method private isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .registers 4
    .parameter "download"

    .prologue
    .line 254
    const/16 v0, 0x64

    iget v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-gt v0, v1, :cond_13

    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_13

    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .registers 5
    .parameter "download"

    .prologue
    const/4 v0, 0x1

    .line 259
    iget v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_c

    iget v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private updateActiveNotification(Ljava/util/Collection;)V
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 113
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 114
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/providers/downloads/DownloadInfo;

    .line 115
    invoke-direct {p0, v6}, Lcom/android/providers/downloads/DownloadNotification;->isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 118
    iget-object v10, v6, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    .line 119
    iget-wide v4, v6, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    .line 120
    iget-wide v2, v6, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    .line 121
    iget-wide v11, v6, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    .line 122
    iget-object v1, v6, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 123
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3d

    .line 124
    :cond_30
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_3d
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 130
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    .line 131
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->addItem(Ljava/lang/String;JJ)V

    .line 140
    :goto_50
    iget v1, v6, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v2, 0xc4

    if-ne v1, v2, :cond_b

    iget-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 142
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    goto :goto_b

    .line 133
    :cond_6a
    new-instance v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    invoke-direct {v0}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;-><init>()V

    .line 134
    long-to-int v11, v11

    iput v11, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mId:I

    .line 135
    iput-object v10, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPackageName:Ljava/lang/String;

    .line 136
    iget-object v11, v6, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    iput-object v11, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mDescription:Ljava/lang/String;

    .line 137
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->addItem(Ljava/lang/String;JJ)V

    .line 138
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 148
    :cond_81
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_170

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    .line 150
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-direct {v4, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    iget-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    if-eqz v1, :cond_138

    move v2, v8

    .line 153
    :goto_a3
    const v1, 0x1080082

    .line 154
    if-eqz v2, :cond_ab

    .line 155
    const v1, 0x108008a

    .line 157
    :cond_ab
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 158
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    iget v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    if-le v1, v8, :cond_13b

    .line 163
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f020010

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    const/4 v6, 0x2

    if-le v1, v6, :cond_171

    .line 166
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f020011

    new-array v9, v8, [Ljava/lang/Object;

    iget v10, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    add-int/lit8 v10, v10, -0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v1, v6, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v7

    .line 173
    :goto_ef
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 175
    if-eqz v2, :cond_14a

    .line 176
    iget-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 186
    :cond_f9
    :goto_f9
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    const-string v1, "com.android.providers.downloads"

    const-class v5, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget v5, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mId:I

    int-to-long v5, v5

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 191
    const-string v5, "multiple"

    iget v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    if-le v1, v8, :cond_16e

    move v1, v8

    :goto_11e
    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 195
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mId:I

    int-to-long v5, v0

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-interface {v1, v5, v6, v0}, Lcom/android/providers/downloads/SystemFacade;->postNotification(JLandroid/app/Notification;)V

    goto/16 :goto_8b

    :cond_138
    move v2, v7

    .line 152
    goto/16 :goto_a3

    .line 169
    :cond_13b
    iget-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_171

    .line 170
    iget-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move v1, v8

    .line 171
    goto :goto_ef

    .line 178
    :cond_14a
    iget-wide v5, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    long-to-int v5, v5

    iget-wide v9, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalCurrent:J

    long-to-int v6, v9

    iget-wide v9, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    const-wide/16 v11, -0x1

    cmp-long v2, v9, v11

    if-nez v2, :cond_16c

    move v2, v8

    :goto_159
    invoke-virtual {v4, v5, v6, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 180
    if-eqz v1, :cond_f9

    .line 181
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    iget-wide v5, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    iget-wide v9, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalCurrent:J

    invoke-static {v1, v5, v6, v9, v10}, Lcom/android/providers/downloads/DownloadNotification;->buildPercentageLabel(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_f9

    :cond_16c
    move v2, v7

    .line 178
    goto :goto_159

    :cond_16e
    move v1, v7

    .line 191
    goto :goto_11e

    .line 198
    :cond_170
    return-void

    :cond_171
    move v1, v7

    goto/16 :goto_ef
.end method

.method private updateCompletedNotification(Ljava/util/Collection;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, downloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/downloads/DownloadInfo;

    .line 202
    .local v8, download:Lcom/android/providers/downloads/DownloadInfo;
    invoke-direct {p0, v8}, Lcom/android/providers/downloads/DownloadNotification;->isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    iget-wide v1, v8, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    iget-object v3, v8, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    iget v4, v8, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    iget v5, v8, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-wide v6, v8, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/downloads/DownloadNotification;->notificationForCompletedDownload(JLjava/lang/String;IIJ)V

    goto :goto_4

    .line 208
    .end local v8           #download:Lcom/android/providers/downloads/DownloadInfo;
    :cond_25
    return-void
.end method


# virtual methods
.method notificationForCompletedDownload(JLjava/lang/String;IIJ)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 212
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    const v0, 0x1080082

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 214
    if-eqz p3, :cond_16

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_23

    .line 215
    :cond_16
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 218
    :cond_23
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 222
    invoke-static {p4}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 223
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    :goto_43
    const-string v4, "com.android.providers.downloads"

    const-class v5, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 239
    invoke-virtual {v2, p6, p7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 240
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 241
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 242
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_HIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    const-string v1, "com.android.providers.downloads"

    const-class v4, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 250
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/providers/downloads/SystemFacade;->postNotification(JLandroid/app/Notification;)V

    .line 251
    return-void

    .line 227
    :cond_8b
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    const/4 v0, 0x5

    if-eq p5, v0, :cond_a3

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DOWNLOAD_OPEN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_43

    .line 232
    :cond_a3
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_43
.end method

.method public updateNotification(Ljava/util/Collection;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, downloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotification;->updateActiveNotification(Ljava/util/Collection;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotification;->updateCompletedNotification(Ljava/util/Collection;)V

    .line 109
    return-void
.end method
