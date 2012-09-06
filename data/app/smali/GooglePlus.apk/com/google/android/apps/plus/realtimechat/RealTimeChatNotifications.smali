.class public Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;
.super Ljava/lang/Object;
.source "RealTimeChatNotifications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications$MessageQuery;
    }
.end annotation


# static fields
.field private static RING_DELAY_MS:J

.field private static sLastRingTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->RING_DELAY_MS:J

    .line 32
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->sLastRingTime:J

    return-void
.end method

.method private static buildNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Uri;)Landroid/app/Notification;
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "summary"
    .parameter "title"
    .parameter "content"
    .parameter "silent"
    .parameter "sound"

    .prologue
    const/4 v6, 0x0

    .line 359
    invoke-static {p0, v6, p2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 361
    .local v1, contentIntent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020183

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, p3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 363
    .local v2, notification:Landroid/app/Notification;
    invoke-virtual {v2, p0, p4, p5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 365
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 366
    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 367
    const/high16 v3, 0x800

    invoke-static {p0, v6, p2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, p0, p4, p5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 371
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/Intents;->getClearRealTimeChatIntent(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 372
    .local v0, clearIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->newRequestCode()I

    move-result v3

    invoke-static {p0, v3, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->sLastRingTime:J

    sub-long/2addr v3, v5

    sget-wide v5, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->RING_DELAY_MS:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_5c

    .line 376
    if-nez p6, :cond_5c

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->sLastRingTime:J

    .line 378
    if-eqz p7, :cond_5d

    .line 379
    iput-object p7, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 385
    :goto_50
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->shouldVibrate(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 386
    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 391
    :cond_5c
    return-object v2

    .line 380
    :cond_5d
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->hasRingtone(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 381
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->getRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_50

    .line 383
    :cond_6a
    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    goto :goto_50
.end method

.method private static buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":chat_notifications:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized cancel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 104
    const-class v3, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;

    monitor-enter v3

    :try_start_3
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, notificationTag:Ljava/lang/String;
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 107
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 108
    monitor-exit v3

    return-void

    .line 104
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    .end local v1           #notificationTag:Ljava/lang/String;
    :catchall_15
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static createNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)Landroid/app/Notification;
    .registers 35
    .parameter "context"
    .parameter "account"
    .parameter "silent"

    .prologue
    .line 113
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->shouldNotify(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 114
    const-string v2, "RTCNotification"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 115
    const-string v2, "RTCNotification"

    const-string v4, "notifications disabled"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_16
    const/4 v2, 0x0

    .line 340
    :cond_17
    :goto_17
    return-object v2

    .line 120
    :cond_18
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    .line 122
    .local v3, uri:Landroid/net/Uri;
    const/16 v26, 0x0

    .line 124
    .local v26, cursor:Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_23
    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 127
    .local v6, whereArgs:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 130
    .local v10, summary:Ljava/lang/String;
    const/4 v14, 0x0

    .line 131
    .local v14, sound:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications$MessageQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "author_id!=? AND notification_seen!=1 AND conversation_visible=1 AND conversation_muted=0 AND conversation_pending_leave!=1 AND (status=3 OR status=4) "

    const-string v7, "conversation_id, timestamp DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 135
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_59

    .line 136
    const-string v2, "RTCNotification"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 137
    const-string v2, "RTCNotification"

    const-string v4, "no unseen notifications"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_23 .. :try_end_52} :catchall_30e

    .line 139
    :cond_52
    const/4 v2, 0x0

    .line 339
    if-eqz v26, :cond_17

    .line 340
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto :goto_17

    .line 141
    :cond_59
    const/4 v2, 0x5

    :try_start_5a
    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 142
    .local v23, conversationId:J
    :cond_60
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_184

    .line 143
    const/4 v2, 0x5

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v2, v4, v23

    if-eqz v2, :cond_60

    .line 145
    const-string v2, "RTCNotification"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 146
    const-string v2, "RTCNotification"

    const-string v4, "multiple conversations with unseen notification"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_81
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications$MessageQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "author_id!=? AND notification_seen!=1 AND conversation_visible=1 AND conversation_muted=0 AND conversation_pending_leave!=1 AND (status=3 OR status=4) "

    const-string v7, "timestamp DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 154
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_95
    .catchall {:try_start_5a .. :try_end_95} :catchall_30e

    move-result v2

    if-nez v2, :cond_a0

    .line 155
    const/4 v2, 0x0

    .line 339
    if-eqz v26, :cond_17

    .line 340
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto/16 :goto_17

    .line 157
    :cond_a0
    const/4 v2, 0x0

    :try_start_a1
    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 158
    .local v21, authorFirstName:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 159
    .local v30, messageType:I
    const/4 v2, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 160
    .local v31, text:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    .line 161
    const/4 v2, 0x4

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 162
    .local v27, imageUrl:Ljava/lang/String;
    if-nez p2, :cond_10e

    .line 163
    const/16 v2, 0x9

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_14e

    .line 164
    const/16 v2, 0xc

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 166
    .local v29, inviterFullName:Ljava/lang/String;
    const-string v2, "RTCNotification"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 167
    const-string v2, "RTCNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pending accept "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_fb
    if-eqz v29, :cond_10e

    if-nez p2, :cond_10e

    .line 170
    const v2, 0x7f080265

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v29, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 189
    .end local v29           #inviterFullName:Ljava/lang/String;
    :cond_10e
    :goto_10e
    const v2, 0x7f08023c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 190
    .local v11, title:Ljava/lang/String;
    const v2, 0x7f080262

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 193
    .local v12, content:Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/phone/Intents;->getMessengerActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v9

    .line 194
    .local v9, intent:Landroid/content/Intent;
    const-string v2, "reset_notifications"

    const/4 v4, 0x1

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    const/high16 v2, 0x3400

    invoke-virtual {v9, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v13, p2

    .line 197
    invoke-static/range {v7 .. v14}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->buildNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Uri;)Landroid/app/Notification;
    :try_end_146
    .catchall {:try_start_a1 .. :try_end_146} :catchall_30e

    move-result-object v2

    .line 339
    if-eqz v26, :cond_17

    .line 340
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto/16 :goto_17

    .line 174
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #content:Ljava/lang/String;
    :cond_14e
    const/4 v2, 0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_15f

    .line 175
    move-object/from16 v10, v31

    .line 176
    const/4 v2, 0x6

    move/from16 v0, v30

    if-ne v0, v2, :cond_10e

    .line 177
    :try_start_15a
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/hangout/HangoutNotifications;->getDingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v14

    goto :goto_10e

    .line 179
    :cond_15f
    if-nez v27, :cond_174

    .line 180
    const v2, 0x7f080263

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v4, v5

    const/4 v5, 0x1

    aput-object v31, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_10e

    .line 184
    :cond_174
    const v2, 0x7f080264

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_10e

    .line 202
    .end local v21           #authorFirstName:Ljava/lang/String;
    .end local v27           #imageUrl:Ljava/lang/String;
    .end local v30           #messageType:I
    .end local v31           #text:Ljava/lang/String;
    :cond_184
    const-string v2, "RTCNotification"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_194

    .line 203
    const-string v2, "RTCNotification"

    const-string v4, "single conversation with unseen notification"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_194
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 207
    const/16 v2, 0x9

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_260

    .line 210
    const/16 v2, 0xc

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 211
    .restart local v29       #inviterFullName:Ljava/lang/String;
    const/16 v2, 0xb

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 212
    .local v28, inviterFirstName:Ljava/lang/String;
    const-string v2, "RTCNotification"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1d4

    .line 213
    const-string v2, "RTCNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pending accept "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d4
    .catchall {:try_start_15a .. :try_end_1d4} :catchall_30e

    .line 215
    :cond_1d4
    if-eqz v29, :cond_1d8

    if-nez v28, :cond_1e0

    .line 216
    :cond_1d8
    const/4 v2, 0x0

    .line 339
    if-eqz v26, :cond_17

    .line 340
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto/16 :goto_17

    .line 218
    :cond_1e0
    if-nez p2, :cond_1f1

    .line 219
    const v2, 0x7f080265

    const/4 v4, 0x1

    :try_start_1e6
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v29, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 224
    :cond_1f1
    const v2, 0x7f080266

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 228
    .restart local v12       #content:Ljava/lang/String;
    const/16 v2, 0x8

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_253

    .line 229
    const/4 v2, 0x6

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 230
    .restart local v11       #title:Ljava/lang/String;
    if-nez v11, :cond_21a

    .line 231
    const/4 v2, 0x7

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 238
    :cond_21a
    :goto_21a
    const/4 v2, 0x5

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const/16 v2, 0xa

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v2, 0x8

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_25d

    const/16 v20, 0x1

    :goto_235
    move-object/from16 v15, p0

    move-object/from16 v16, p1

    invoke-static/range {v15 .. v20}, Lcom/google/android/apps/plus/phone/Intents;->getConversationInvititationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v9

    .line 242
    .restart local v9       #intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v9, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .end local v28           #inviterFirstName:Ljava/lang/String;
    .end local v29           #inviterFullName:Ljava/lang/String;
    :goto_242
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v13, p2

    .line 335
    invoke-static/range {v7 .. v14}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->buildNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Uri;)Landroid/app/Notification;
    :try_end_24b
    .catchall {:try_start_1e6 .. :try_end_24b} :catchall_30e

    move-result-object v2

    .line 339
    if-eqz v26, :cond_17

    .line 340
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto/16 :goto_17

    .line 234
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #title:Ljava/lang/String;
    .restart local v28       #inviterFirstName:Ljava/lang/String;
    .restart local v29       #inviterFullName:Ljava/lang/String;
    :cond_253
    const v2, 0x7f080267

    :try_start_256
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #title:Ljava/lang/String;
    goto :goto_21a

    .line 238
    :cond_25d
    const/16 v20, 0x0

    goto :goto_235

    .line 245
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #content:Ljava/lang/String;
    .end local v28           #inviterFirstName:Ljava/lang/String;
    .end local v29           #inviterFullName:Ljava/lang/String;
    :cond_260
    const-string v2, "RTCNotification"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_270

    .line 246
    const-string v2, "RTCNotification"

    const-string v4, "conversation accepted"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_270
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 249
    .local v22, authorFullName:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 250
    .restart local v21       #authorFirstName:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 251
    .restart local v30       #messageType:I
    const/4 v2, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 252
    .restart local v31       #text:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    .line 253
    const/4 v2, 0x4

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 254
    .restart local v27       #imageUrl:Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 255
    .local v25, conversationName:Ljava/lang/String;
    if-nez v25, :cond_2ab

    .line 256
    const/4 v2, 0x7

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2aa
    .catchall {:try_start_256 .. :try_end_2aa} :catchall_30e

    move-result-object v25

    .line 258
    :cond_2ab
    if-eqz v22, :cond_2b3

    if-eqz v21, :cond_2b3

    if-eqz v31, :cond_2b3

    if-nez v25, :cond_2bb

    .line 260
    :cond_2b3
    const/4 v2, 0x0

    .line 339
    if-eqz v26, :cond_17

    .line 340
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto/16 :goto_17

    .line 263
    :cond_2bb
    :try_start_2bb
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_35f

    .line 265
    const-string v2, "RTCNotification"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2d2

    .line 266
    const-string v2, "RTCNotification"

    const-string v4, "single message needs notification"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_2d2
    if-nez p2, :cond_2e4

    .line 269
    const/4 v2, 0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_315

    .line 270
    move-object/from16 v10, v31

    .line 271
    const/4 v2, 0x6

    move/from16 v0, v30

    if-ne v0, v2, :cond_2e4

    .line 272
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/hangout/HangoutNotifications;->getDingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v14

    .line 285
    :cond_2e4
    :goto_2e4
    move-object/from16 v11, v25

    .line 287
    .restart local v11       #title:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_33a

    .line 288
    move-object/from16 v12, v31

    .line 329
    .restart local v12       #content:Ljava/lang/String;
    :goto_2ed
    const/4 v2, 0x5

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v2, 0x8

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3cf

    const/4 v2, 0x1

    :goto_2ff
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4, v5, v2}, Lcom/google/android/apps/plus/phone/Intents;->getConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;

    move-result-object v9

    .line 332
    .restart local v9       #intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v9, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_30c
    .catchall {:try_start_2bb .. :try_end_30c} :catchall_30e

    goto/16 :goto_242

    .line 339
    .end local v6           #whereArgs:[Ljava/lang/String;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #summary:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #content:Ljava/lang/String;
    .end local v14           #sound:Landroid/net/Uri;
    .end local v21           #authorFirstName:Ljava/lang/String;
    .end local v22           #authorFullName:Ljava/lang/String;
    .end local v23           #conversationId:J
    .end local v25           #conversationName:Ljava/lang/String;
    .end local v27           #imageUrl:Ljava/lang/String;
    .end local v30           #messageType:I
    .end local v31           #text:Ljava/lang/String;
    :catchall_30e
    move-exception v2

    if-eqz v26, :cond_314

    .line 340
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_314
    throw v2

    .line 274
    .restart local v6       #whereArgs:[Ljava/lang/String;
    .restart local v10       #summary:Ljava/lang/String;
    .restart local v14       #sound:Landroid/net/Uri;
    .restart local v21       #authorFirstName:Ljava/lang/String;
    .restart local v22       #authorFullName:Ljava/lang/String;
    .restart local v23       #conversationId:J
    .restart local v25       #conversationName:Ljava/lang/String;
    .restart local v27       #imageUrl:Ljava/lang/String;
    .restart local v30       #messageType:I
    .restart local v31       #text:Ljava/lang/String;
    :cond_315
    if-nez v27, :cond_32a

    .line 275
    const v2, 0x7f080263

    const/4 v4, 0x2

    :try_start_31b
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v4, v5

    const/4 v5, 0x1

    aput-object v31, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2e4

    .line 279
    :cond_32a
    const v2, 0x7f080264

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2e4

    .line 289
    .restart local v11       #title:Ljava/lang/String;
    :cond_33a
    if-nez v27, :cond_34f

    .line 290
    const v2, 0x7f080263

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v4, v5

    const/4 v5, 0x1

    aput-object v31, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #content:Ljava/lang/String;
    goto :goto_2ed

    .line 294
    .end local v12           #content:Ljava/lang/String;
    :cond_34f
    const v2, 0x7f080264

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #content:Ljava/lang/String;
    goto :goto_2ed

    .line 301
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #content:Ljava/lang/String;
    :cond_35f
    const-string v2, "RTCNotification"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36f

    .line 302
    const-string v2, "RTCNotification"

    const-string v4, "multiple messages needs notification"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_36f
    if-nez p2, :cond_381

    .line 305
    const/4 v2, 0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_3aa

    .line 306
    move-object/from16 v10, v31

    .line 307
    const/4 v2, 0x6

    move/from16 v0, v30

    if-ne v0, v2, :cond_381

    .line 308
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/hangout/HangoutNotifications;->getDingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v14

    .line 321
    :cond_381
    :goto_381
    const/4 v2, 0x6

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 322
    .restart local v11       #title:Ljava/lang/String;
    if-nez v11, :cond_391

    .line 323
    const/4 v2, 0x7

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 325
    :cond_391
    const v2, 0x7f080262

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #content:Ljava/lang/String;
    goto/16 :goto_2ed

    .line 310
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #content:Ljava/lang/String;
    :cond_3aa
    if-nez v27, :cond_3bf

    .line 311
    const v2, 0x7f080263

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v4, v5

    const/4 v5, 0x1

    aput-object v31, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_381

    .line 315
    :cond_3bf
    const v2, 0x7f080264

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3cd
    .catchall {:try_start_31b .. :try_end_3cd} :catchall_30e

    move-result-object v10

    goto :goto_381

    .line 329
    .restart local v11       #title:Ljava/lang/String;
    .restart local v12       #content:Ljava/lang/String;
    :cond_3cf
    const/4 v2, 0x0

    goto/16 :goto_2ff
.end method

.method private static getRingtone(Landroid/content/Context;)Landroid/net/Uri;
    .registers 6
    .parameter "context"

    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 440
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f08000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f080010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, defValue:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 445
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method private static hasRingtone(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 458
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f08000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f080010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, defValue:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 463
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const/4 v4, 0x1

    :goto_21
    return v4

    :cond_22
    const/4 v4, 0x0

    goto :goto_21
.end method

.method private static newRequestCode()I
    .registers 2

    .prologue
    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static shouldNotify(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 404
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f08000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f0c0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 407
    .local v0, defValue:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 409
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    return v4
.end method

.method private static shouldVibrate(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 422
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f08000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f0c0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 425
    .local v0, defValue:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 427
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    return v4
.end method

.method public static declared-synchronized update(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "silent"

    .prologue
    .line 80
    const-class v4, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;

    monitor-enter v4

    :try_start_3
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 82
    .local v1, notificationManager:Landroid/app/NotificationManager;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, notificationTag:Ljava/lang/String;
    const-string v3, "RTCNotification"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 85
    const-string v3, "RTCNotification"

    const-string v5, "Update"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1f
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->createNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)Landroid/app/Notification;

    move-result-object v0

    .line 88
    .local v0, notification:Landroid/app/Notification;
    if-eqz v0, :cond_37

    .line 89
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 90
    iget v3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 91
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_3c

    .line 95
    :goto_35
    monitor-exit v4

    return-void

    .line 93
    :cond_37
    const/4 v3, 0x1

    :try_start_38
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_35

    .line 80
    .end local v0           #notification:Landroid/app/Notification;
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    .end local v2           #notificationTag:Ljava/lang/String;
    :catchall_3c
    move-exception v3

    monitor-exit v4

    throw v3
.end method
