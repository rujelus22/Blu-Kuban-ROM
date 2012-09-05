.class Lcom/sec/android/providers/downloads/SecDownloadNotification;
.super Ljava/lang/Object;
.source "SecDownloadNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field public mNotificationMgr:Landroid/app/NotificationManager;

.field mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mNotifications:Ljava/util/HashMap;

    .line 104
    return-void
.end method

.method private getDownloadingText(JJ)Ljava/lang/String;
    .registers 10
    .parameter "totalBytes"
    .parameter "currentBytes"

    .prologue
    .line 329
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_9

    .line 330
    const-string v3, ""

    .line 336
    :goto_8
    return-object v3

    .line 332
    :cond_9
    const-wide/16 v3, 0x64

    mul-long/2addr v3, p3

    div-long v0, v3, p1

    .line 333
    .local v0, progress:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 335
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method private updateActiveNotification()V
    .registers 16

    .prologue
    const/4 v14, -0x1

    const v13, 0x7f040004

    const/4 v12, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 116
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "title"

    aput-object v3, v2, v6

    const-string v3, "description"

    aput-object v3, v2, v12

    const/4 v3, 0x3

    const-string v4, "notificationpackage"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "notificationclass"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "current_bytes"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "total_bytes"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "status"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "_data"

    aput-object v4, v2, v3

    const-string v3, "(status >= \'100\') AND (status <= \'199\') AND (visibility IS NULL OR visibility == \'0\' OR visibility == \'1\')"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 129
    if-nez v2, :cond_4a

    .line 231
    :cond_49
    return-void

    .line 145
    :cond_4a
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 146
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_52
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_c0

    .line 147
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 148
    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 149
    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 150
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_237

    .line 152
    :cond_73
    const/16 v0, 0x8

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    if-nez v0, :cond_237

    .line 155
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 159
    :goto_89
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 160
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;

    invoke-virtual {v0, v1, v5, v4}, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->addItem(Ljava/lang/String;II)V

    .line 146
    :goto_9c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_52

    .line 162
    :cond_a0
    new-instance v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;

    invoke-direct {v0}, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;-><init>()V

    .line 163
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mId:I

    .line 164
    iput-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mPackageName:Ljava/lang/String;

    .line 165
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mDescription:Ljava/lang/String;

    .line 166
    const/4 v8, 0x4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 167
    invoke-virtual {v0, v1, v5, v4}, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->addItem(Ljava/lang/String;II)V

    .line 168
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    .line 172
    :cond_c0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 175
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_cd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;

    .line 177
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 178
    const v1, 0x1080081

    iput v1, v3, Landroid/app/Notification;->icon:I

    .line 180
    iget v1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 183
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/high16 v5, 0x7f02

    invoke-direct {v4, v1, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    iget v5, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTitleCount:I

    if-le v5, v6, :cond_1ee

    .line 188
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    const v8, 0x7f03000e

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v5, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget v5, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTitleCount:I

    iput v5, v3, Landroid/app/Notification;->number:I

    .line 191
    iget v5, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTitleCount:I

    if-le v5, v12, :cond_136

    .line 192
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    const v8, 0x7f03000f

    new-array v9, v6, [Ljava/lang/Object;

    iget v10, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTitleCount:I

    add-int/lit8 v10, v10, -0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_136
    :goto_136
    const v5, 0x7f040002

    invoke-virtual {v4, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 201
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v1

    if-eqz v1, :cond_172

    .line 202
    invoke-virtual {v4, v13, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 203
    iget v1, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalTotal:I

    if-ne v1, v14, :cond_1f8

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalCurrent:I

    int-to-long v8, v8

    invoke-static {v5, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v13, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 210
    :cond_172
    :goto_172
    const v5, 0x7f040006

    iget v8, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalTotal:I

    iget v9, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalCurrent:I

    iget v1, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalTotal:I

    if-ne v1, v14, :cond_232

    move v1, v6

    :goto_17e
    invoke-virtual {v4, v5, v8, v9, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 214
    const v1, 0x7f040001

    iget v5, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalTotal:I

    int-to-long v8, v5

    iget v5, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalCurrent:I

    int-to-long v10, v5

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/sec/android/providers/downloads/SecDownloadNotification;->getDownloadingText(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 216
    const/high16 v1, 0x7f04

    const v5, 0x1080081

    invoke-virtual {v4, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 218
    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 220
    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v5, Lcom/sec/android/providers/downloads/SecDownloadReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 224
    const-string v5, "multiple"

    iget v1, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTitleCount:I

    if-le v1, v6, :cond_235

    move v1, v6

    :goto_1da
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 228
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v0, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mId:I

    invoke-virtual {v1, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_cd

    .line 196
    :cond_1ee
    const v5, 0x7f040003

    iget-object v8, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_136

    .line 207
    :cond_1f8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalCurrent:I

    int-to-long v8, v8

    invoke-static {v5, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalTotal:I

    int-to-long v8, v8

    invoke-static {v5, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v13, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_172

    :cond_232
    move v1, v7

    .line 210
    goto/16 :goto_17e

    :cond_235
    move v1, v7

    .line 224
    goto :goto_1da

    :cond_237
    move-object v1, v0

    goto/16 :goto_89
.end method

.method private updateCompletedNotification()V
    .registers 16

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x7

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 235
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "title"

    aput-object v3, v2, v10

    const/4 v3, 0x2

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "notificationpackage"

    aput-object v4, v2, v3

    const-string v3, "notificationclass"

    aput-object v3, v2, v11

    const/4 v3, 0x5

    const-string v4, "current_bytes"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "total_bytes"

    aput-object v4, v2, v3

    const-string v3, "status"

    aput-object v3, v2, v12

    const-string v3, "_data"

    aput-object v3, v2, v13

    const/16 v3, 0x9

    const-string v4, "lastmod"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "destination"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "storagetype"

    aput-object v4, v2, v3

    const-string v3, "(status >= \'200\') AND (visibility == \'1\') AND (state ==  \'10\' OR state ==  \'9\')"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 252
    if-nez v3, :cond_58

    .line 323
    :goto_57
    return-void

    .line 270
    :cond_58
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_5b
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_17b

    .line 272
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 273
    const v0, 0x1080082

    iput v0, v4, Landroid/app/Notification;->icon:I

    .line 275
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_77

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8a

    .line 277
    :cond_77
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    if-nez v0, :cond_8a

    .line 280
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    :cond_8a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 287
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 288
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 290
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    :goto_c9
    iget-object v6, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/sec/android/providers/downloads/SecDownloadReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 308
    const-string v6, "multiple"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    iget-object v6, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, v6, v0, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_HIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/sec/android/providers/downloads/SecDownloadReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 318
    const/16 v0, 0x9

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Landroid/app/Notification;->when:J

    .line 320
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 270
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_5b

    .line 292
    :cond_122
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v1

    if-eqz v1, :cond_161

    .line 293
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030012

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    const/16 v8, 0xb

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/sec/android/providers/downloads/SecHelpers;->GetSavePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 299
    :goto_14d
    const/16 v2, 0xa

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_16f

    .line 300
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOWNLOAD_OPEN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    goto/16 :goto_c9

    .line 296
    :cond_161
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_14d

    .line 302
    :cond_16f
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    goto/16 :goto_c9

    .line 322
    :cond_17b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_57
.end method


# virtual methods
.method public updateNotification()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/sec/android/providers/downloads/SecDownloadNotification;->updateActiveNotification()V

    .line 111
    invoke-direct {p0}, Lcom/sec/android/providers/downloads/SecDownloadNotification;->updateCompletedNotification()V

    .line 112
    return-void
.end method
